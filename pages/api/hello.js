// Next.js API route support: https://nextjs.org/docs/api-routes/introduction
import sendEmail from "../../models/mails/mailer";
export default async  function handler(req, res) {

  let emailTo = "brayanortizbastidas82@gmail.com"
  let subject = "Mensaje desde servidor fantasma"
  let content = '<h1> hello world </h1>' // ideally should be in html format
  await sendEmail(emailTo, subject,content ).catch(console.error);
  res.status(200).json({ name: 'John Doe' })
}        