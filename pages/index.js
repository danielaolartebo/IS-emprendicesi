import styles from '/styles/Home.module.css'
import Welcome from '/components/Welcome'

let data = {
    id: '',
    password: '',
}

let type = '';

let login = () => {

    async function handleSubmit(event) {
        event.preventDefault();

        if (data.id === '' || data.password === '') {
            alert('Ingrese todos los campos')
        }else {

            const response = await fetch('api/accounts/verifyAccount', {
                method: 'POST',
                body: JSON.stringify({data}),
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                }
            })

            const json = await response.json();

            if (json.success === 'true') {
                window.location.href = '/website/welcome/' + json.user;

            } else {
                alert(json.message)

            }

        }


    }

    let handleChange = (event) => {
        switch (event.target.id) {
            case 'id':
                data.id = event.target.value;
                break;
            case 'password':
                data.password = event.target.value;
                break;
            default:
                break;
        }
    }

    return (
        <div>
            <div className={styles.container}>
                <img className={styles.back_image}  src="/images/BK-ROSETAS_FDCS.png"/>
                <div className={styles.content_login}>
                    <Welcome title='Login'></Welcome>
                    <main className={styles.main}>
                        <form className='form' onSubmit={handleSubmit}>
                            <legend className={styles.title}>EMPRENDICESI</legend>
                            <div>
                                <div>
                                    <input className='form-control' id='id' onChange={handleChange}
                                           placeholder='Numero de documento'/>
                                </div>
                                <br/>
                                <div>
                                    <input type="password" className='form-control' id='password'
                                           onChange={handleChange} placeholder='Contraseña'/>
                                </div>
                                <br/>
                                <div className='container'>
                                    <div className='row'>
                                        <div className='col text-center'>
                                            <button type="submit" className={styles.btn_login}
                                                    placeholder="Iniciar Sesión">Iniciar sesión
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

export default login
  
