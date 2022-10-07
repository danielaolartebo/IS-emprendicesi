import styles from '/styles/Home.module.css'
import Welcome from '/components/Welcome'
import Link from 'next/link'

let data = {
    nombreEmprendimiento: '',
    nombreEmprendedor: '',
    estado: '',
    fechaDeInscripcion: '',
    descripcionEmprendimiento: '',
}

let login = () =>{
  async function handleSubmit(event) {
    event.preventDefault();
    const response = await fetch('/api/accounts/verifyAccount',{
        method:'POST',
        body: JSON.stringify({data}),
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        }
    })
    const json = await response.json();
    console.log("funciona?")
    if(json.status == 'success'){
        console.log(json.data)
        
    }else{
         console.log("no funciona")
        alert(json.message)
        window.location.href = '/login'
    }
}

let handleChange = (event) => {
    console.log(event.target.name);
    switch (event.target.name) {
        case 'nombreEmprendimiento':
            data.nombreEmprendimiento = event.target.value;
            break;
        case 'nombreEmprendedor':
            data.nombreEmprendedor = event.target.value;
            break;
        case 'estado':
                data.estado = event.target.value;
                break; 
        case 'fechaDeInscripcion':
            data.fechaDeInscripcion = event.target.value;
            break;   
        case 'descripcionEmprendimiento':
                data.descripcionEmprendimiento = event.target.value;
                break;
        default:
            break;
    }
}
    return(
        <div>
            <div className={styles.container}>
                <img className={styles.back_image} src = "/images/BK-ROSETAS_FDCS.png"/>
                <Link href='/website/welcome'>
                   <button class={styles.btn_welcome}>Volver</button>
               </Link>
                <div className={styles.content_login}>
                    <Welcome title='Login'></Welcome>
                    <main className={styles.main}>
                        <form className='form' onSubmit={handleSubmit}>
                            <legend className={styles.title_emprendimiento}>Inscribe tu Emprendimiento</legend>
                            <div >
                                <div>
                                    <input type="nombreEmprendedor" className='form-control' id='nombreEmprendedor'  onChange={handleChange} placeholder='Nombre completo' />
                                </div>
                                <br/>
                                <div>
                                    <input type="nombreEmprendimiento" className='form-control' id='nombreEmprendimiento' onChange={handleChange} placeholder='Nombre de emprendimiento'/> 
                                </div>
                                <br/>
                                <div>
                                    <input type="descripcionEmprendimiento" className='form-control' id='descripcionEmprendimiento' onChange={handleChange} placeholder='Descripción del emprendimiento'/> 
                                </div>
                                <br/>
                                <div className='container'>
                                    <div className='row'>
                                        <div className='col text-center'>
                                        <Link href='/website/welcome'>
                                            <button type="submit" className={styles.btn_login} placeholder="Iniciar Sesión" >Enviar</button>
                                        </Link>
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

export default login
  
