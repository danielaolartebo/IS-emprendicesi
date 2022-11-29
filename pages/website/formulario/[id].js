import styles from '/styles/Home.module.css'
import Welcome from '/components/Welcome'
import {useRouter} from 'next/router'
import Link from 'next/link'


export default function BusinessForm() {

    const router = useRouter()
    const cc = router.query.id

    let data = {
        name: '',
        business_name: '',
        description: '',
        cc: cc
    }

    async function handleSubmit(event) {
        event.preventDefault();

       let response = await fetch("http://localhost:3000/api/forms/emprendedor",{
        method : "POST",
        headers: {
            "Content-Type":"application/json"
        },
        body: JSON.stringify(data)
       })

       let res = await response.json()
       if (res.status === true){
        alert("Formulario enviado")
       }

    }

    

    let handleChange = (event) => {
        switch (event.target.id) {
            case 'nombreEmprendimiento':
                data.business_name = event.target.value;
                break;
            case 'nombreEmprendedor':
                data.name = event.target.value;
                break;
            case 'descripcionEmprendimiento':
                data.description = event.target.value;
                break;
            default:
                break;
        }
    }

    return (
        <div>
            <div className={styles.container}>
                <img className={styles.back_image} src="/images/BK-ROSETAS_FDCS.png"/>
                <Link href={{pathname: '/website/welcome/[subject]', query: {subject: cc}}}>
                    <button class={styles.btn_welcome}>Volver</button>
                </Link>
                <div className={styles.content_login}>
                    <Welcome title='Login'></Welcome>
                    <main className={styles.main}>
                        <form className='form' onSubmit={handleSubmit}>
                            <legend className={styles.title_emprendimiento}>Inscribe tu Emprendimiento</legend>
                            <div>
                                <div>
                                    <input type="nombreEmprendedor" className='form-control' id='nombreEmprendedor'
                                           onChange={handleChange} placeholder='Nombre completo' required/>
                                </div>
                                <br/>
                                <div>
                                    <input type="nombreEmprendimiento" className='form-control'
                                           id='nombreEmprendimiento' onChange={handleChange}
                                           placeholder='Nombre de emprendimiento' required />
                                </div>
                                <br/>
                                <div>
                                    <input type="descripcionEmprendimiento" className='form-control'
                                           id='descripcionEmprendimiento' onChange={handleChange}
                                           placeholder='Descripción del emprendimiento'required />
                                </div>
                                <br/>
                                <div className='container'>
                                    <div className='row'>
                                        <div className='col text-center'>
                                                <button type="submit" className={styles.btn_login}
                                                        placeholder="Iniciar Sesión">Enviar
                                                </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </main>
                </div>
            </div>
        </div>
    )


}

  
