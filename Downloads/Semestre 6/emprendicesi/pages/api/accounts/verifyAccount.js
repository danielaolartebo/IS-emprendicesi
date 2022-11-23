import { initializeApp } from "firebase/app";
import { getAuth, signInWithEmailAndPassword, signOut } from "firebase/auth";
import {firebaseConfig} from "../firebaseConfig";

export default async function verifyAccount(req, res) {

    const {method, body} = req;

    const app = initializeApp(firebaseConfig);
    const auth = getAuth(app);

    if (method === "POST") {

        let {user, password} = body.data;
        user += '@u.icesi.edu.co'

        signInWithEmailAndPassword(auth, user, password)
            .then((userCredential) => {
                // Signed in
                const user = userCredential.user;

                res.send({
                    success: "true",
                    user: JSON.stringify(user),
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