import {initializeApp} from "firebase/app";
import {getFirestore, getDoc, setDoc, collection, doc} from "firebase/firestore";
import {firebaseConfig} from "../firebaseConfig";

export default async function getUser(req, res) {

    const {method, body} = req;

    const app = initializeApp(firebaseConfig);
    const db = getFirestore(app);

    if (method === "GET") {

        let {id} = body.data;

        let user = {
            cc: '',
            status: false
        }

        const docSnap = await getDoc(doc(db, "users", id));

        if (docSnap.exists()) {
            user.cc = docSnap.data().cc;
            user.status = docSnap.data().status;

            res.send({
                success: "true",
                user: JSON.stringify(user),
                message: "Get Successful"
            })

        } else {
            res.send({
                success: "false",
                user: JSON.stringify(user),
                message: "Get Failed"
            })

        }



    }

}

