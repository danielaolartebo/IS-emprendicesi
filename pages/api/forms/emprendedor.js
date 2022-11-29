import sendEmail from "../../../models/mails/mailer";
export default async function handler(req, res){
    const {body, method} = req;

    console.log(body)
        if (method === "POST"){
            let email = "diazartiagacarlosarturo@gmail.com"
            let subject = "nuevo emprendimiento"
            let html = '<h1>Nuevo emprendimiento</h1>\n'
            html += '<b>Cedula: </b>'+body.cc+"<br/>"
            html += '<b>Nombre del emprendedor: </b>'+body.name+"<br/>"
            html += '<b>Nombre del emprendimiento: </b>'+body.business_name+"<br/>"
            html += '<b>Descripción del emprendimiento: </b>'+body.description+"<br/>"



            await sendEmail(email, subject, html)

            res.json({
                status: true
            })
        }
    
}