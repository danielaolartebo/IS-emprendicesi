import { initializeApp } from "firebase/app";
import { getStorage, ref, getDownloadURL, deleteObject, uploadBytes  } from "firebase/storage";
import {firebaseConfig} from "../firebaseConfig";

export default async function storage(req, res) {

    const {method, body} = req;

    const app = initializeApp(firebaseConfig);
    const storage = getStorage(app);

    if (method === "GET") {
        if (body.type === "profile") {
            const storageRef = ref(storage, 'profile/' + body.name + ".jpg");

            getDownloadURL(storageRef).then((url) => {
                res.send({
                    success: "true",
                    url: url
                })
            }).catch((error) => {
                res.send({
                    success: "false",
                    message: "Error: " + error
                })
            });
        }

    }else if (method === "POST") {
        if(body.type === "profile") {
            const storageRef = ref(storage, 'profile/' + body.name + ".jpg");
            const file = body.data.file;

            uploadBytes(storageRef, file).then((snapshot) => {
                res.send({
                    success: "true",
                    message: "Upload Successful"
                })
            }).catch((error) => {
                res.send({
                    success: "false",
                    message: "Error: " + error
                })
            });

        }

    }else if (method === "DELETE") {
        if (body.type === "profile") {
            const storageRef = ref(storage, 'profile/' + body.name + ".jpg");

            deleteObject(storageRef).then(() => {
                res.send({
                    success: "true",
                    message: "Delete Successful"
                })
            }).catch((error) => {
                res.send({
                    success: "false",
                    message: "Error: " + error
                })
            });
        }

    }

}