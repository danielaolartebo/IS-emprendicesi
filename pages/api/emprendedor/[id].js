import json from '../../util/emprendimiento.json'

export default async function Found (req, res){

    res.json({
        name: json[req.query.id].name,
        description: json[req.query.id].description,
        image: json[req.query.id].image,
        image2: json[req.query.id].image2,
        whatsapp: json[req.query.id].whatsapp,
        instagram: json[req.query.id].instagram

    })

}