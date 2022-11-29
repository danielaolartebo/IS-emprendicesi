const nodemailer = require("nodemailer");


let transporter = nodemailer.createTransport({
    host: "smtp.gmail.com",
    port: 465,
    secure: true, // true for 465, false for other ports
    auth: {
      user: "emprendicesi@gmail.com", // generated ethereal user
      pass: "trigtlxwhqawmhyu", // generated ethereal password
    },
  });

  transporter.verify().then(()=>{
    console.log("Mailer is ready");
  })


  export default async function sendEmail(email,subject, html){
        await transporter.sendMail({
        from: '"Fred Foo 👻" <emprendicesi@gmail.com>', // sender address
        to: email, // list of receivers
        subject: subject, // Subject line
        //text: "Hello world?", // plain text body
        html: html, // html body
    });
  }