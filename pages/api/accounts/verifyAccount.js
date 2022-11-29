import { initializeApp } from "firebase/app";
import { getAuth, signInWithEmailAndPassword, signOut } from "firebase/auth";
import { getFirestore, getDoc, setDoc, collection, doc } from "firebase/firestore";
import {firebaseConfig} from "../firebaseConfig";

export default async function verifyAccount(req, res) {

    const {method, body} = req;

    const app = initializeApp(firebaseConfig);
    const db = getFirestore(app);
    const auth = getAuth(app);

    if (method === "POST") {

        let {id, password} = body.data;

        signInWithEmailAndPassword(auth, id + '@u.icesi.edu.co', password)
            .then(async (userCredential) => {
                // Signed in
                let user = {
                    cc: '',
                    status: false
                };
                const docSnap  = await getDoc(doc(db, "users", id));

                if (docSnap.exists()) {
                    user.cc = docSnap.data().cc;
                    user.status = docSnap.data().status;

                } else {
                    await setDoc(doc(collection(db, "users"), id), {
                        cc: id,
                        status: false
                    })

                    user.cc = id

                }

                res.send({
                    success: "true",
                    user: user,
                    message: "Login Successful"
                })

            })
            .catch((error) => {
                const errorCode = error.code;
                const errorMessage = error.message;
                console.log(errorCode, errorMessage)

                res.send({
                    success: "false",
                    message: "Error: " + errorMessage
                })
            });

    }else if (method === "DELETE") {

        signOut(auth).then(() => {
            res.send({
                success: "true",
                message: "Logout Successful"
            })

        }).catch((error) => {
            res.send({
                success: "false",
                message: "Logout Failed"
            })
        });
    }
}