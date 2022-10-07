import styles from '/styles/Home.module.css'
import Welcome from '/components/Welcome'
import Link from 'next/link'

let data = {
    usuario: '',
    password: '',
}

let type = '';

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
        case 'usuario':
            data.usuario = event.target.value;
            break;
        case 'password':
            data.password = event.target.value;
            break;
        default:
            break;
    }
}
    return(
        <div>
            <div className={styles.container}>
                <img className={styles.back_image} src = "/images/BK-ROSETAS_FDCS.png"/>
                <div className={styles.content_login}>
                    <Welcome title='Login'></Welcome>
                    <main className={styles.main}>
                        <form className='form' onSubmit={handleSubmit}>
                            <legend className={styles.title}>EMPRENDICESI</legend>
                            <div >
                                <div>

                                    <input type="usuario" className='form-control' id='usuario'  onChange={handleChange} placeholder='Usuario' />
                            
                                </div>
                                <br/>
                                <div>
                                    <input type="password" className='form-control' id='password' onChange={handleChange} placeholder='Contraseña'/> 
                                </div>
                                <br/>
                                <div className='container'>
                                    <div className='row'>
                                        <div className='col text-center'>
                                        <Link href='/website/welcome'>
                                            <button type="submit" className={styles.btn_login} placeholder="Iniciar Sesión" >Iniciar sesión</button>
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
  
