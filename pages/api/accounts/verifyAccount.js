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
                let cc = '';
                const docSnap  = await getDoc(doc(db, "users", id));

                if (docSnap.exists()) {
                    cc = docSnap.data().cc;


                } else {
                    await setDoc(doc(collection(db, "users"), id), {
                        cc: id,
                        status: false
                    })

                    cc = id

                }

                res.send({
                    success: "true",
                    user: cc,
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