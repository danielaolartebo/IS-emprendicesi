
export default function handler(req,res){
    const {method, body} = req;

    console.log(body)

    res.send(true)

}