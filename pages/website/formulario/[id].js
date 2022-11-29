import styles from '/styles/Home.module.css'
import Welcome from '/components/Welcome'
import {useRouter} from 'next/router'


export default function BusinessForm() {

    const routerU = useRouter()
    const cc = routerU.query.id

    let data = {
        name: '',
        business_name: '',
        description: '',
        cc: cc
    }

    async function handleSubmit(event) {
        event.preventDefault();

        if (data.name === '' || data.business_name === '' || data.description === '') {
            alert('Ingrese todos los campos')
        } else {
            //correo
            console.log(data)

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
                <button class={styles.btn_welcome} onClick={routerU.back}>Volver</button>

                <div className={styles.content_login}>
                    <Welcome title='Login'></Welcome>
                    <main className={styles.main}>
                        <form className='form' onSubmit={handleSubmit}>
                            <legend className={styles.title_emprendimiento}>Inscribe tu Emprendimiento</legend>
                            <div>
                                <div>
                                    <input type="nombreEmprendedor" className='form-control' id='nombreEmprendedor'
                                           onChange={handleChange} placeholder='Nombre completo'/>
                                </div>
                                <br/>
                                <div>
                                    <input type="nombreEmprendimiento" className='form-control'
                                           id='nombreEmprendimiento' onChange={handleChange}
                                           placeholder='Nombre de emprendimiento'/>
                                </div>
                                <br/>
                                <div>
                                    <input type="descripcionEmprendimiento" className='form-control'
                                           id='descripcionEmprendimiento' onChange={handleChange}
                                           placeholder='Descripción del emprendimiento'/>
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

  
