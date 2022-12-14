import styles from '/styles/Home.module.css'
import Welcome from '/components/Welcome'
import {useRouter} from 'next/router'
import Link from 'next/link'

export default function Home() {


    const router = useRouter()
    const cc = router.query.id
    const status = (router.query.status === 'true')

    let signOut = async () => {
        const response = await fetch('http://localhost:3000/api/accounts/verifyAccount', {
            method: 'DELETE',
            body: "",
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            }
        })

        const json = await response.json();

        if (json.success == 'true') {
            window.location.href = '/'
        } else {
            alert(json.message)
        }

    }

    return (
        <div className={styles.container}>
            <img className={styles.back_image} src="/images/BK-ROSETAS_FDCS.png" />
                <button className={styles.btn_welcome} onClick={signOut}>Cerrar Sesión</button>
                <Link href={{pathname: '/website/formulario/[subject]', query: {subject: cc}}}>
                    <button className={styles.btn_inscription}>Inscribir Emprendimiento</button>
                </Link>
                <div className={styles.div_design_index}>
                    <Welcome title='EMPRENDICESI'></Welcome>
                    <main className={styles.main}>
                        <h1 className={styles.title}>
                            EMPRENDICESI
                        </h1>
                        <h1 className={styles.descrip}>
                            ¡Para todos aquellos que buscan emprender!
                        </h1>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                    </main>
                </div>
                <div className={styles.menu}>
                    {status === true &&
                        <Link href='/website/proyectos'>
                        <button className={styles.btn_welcome}>Proyectos</button>
                        </Link>
                    }

                </div>
                <div className={styles.entrepreneur_container}>
                    <div className={styles.entrepreneur_sub_container1}>
                        <div className={styles.content_welcome_image}>
                            <img className={styles.entrepreneur_image1} src="/images/cubanitos.png"/>
                        </div>
                        <div className={styles.content_welcome_title}>
                            <h1 className={styles.title_entrepreneur1}>
                                Cubanitos
                            </h1>
                        </div>
                        <div className={styles.content_welcome_description}>
                            <h1 className={styles.description_entrepreneur1}>
                                La manera más divertida y económica de comer en la U. Prueba uno de nuestros sándwich
                                ¡No
                                pararás de pedirlos!
                            </h1>
                        </div>
                        <Link href='/website/emprendimiento/0'>
                            <button className={styles.btn_entrepreneur}>Ver</button>
                        </Link>
                    </div>
                    <div className={styles.entrepreneur_sub_container2}>
                        <div className={styles.content_welcome_image}>
                            <img className={styles.entrepreneur_image2} src="/images/sweetestCrime.png"/>
                        </div>
                        <div className={styles.content_welcome_title}>
                            <h1 className={styles.title_entrepreneur1}>
                                The Sweetest Crime
                            </h1>
                        </div>
                        <div className={styles.content_welcome_description}>
                            <h1 className={styles.description_entrepreneur1}>
                                Galletas hechas en casa con mucho amor. Cómplices en tu dulce crimen. Seguro que no te
                                arrepentiras ¡Escribenos por medio de WhatsApp!
                            </h1>
                        </div>
                        <Link href='/website/emprendimiento/1'>
                            <button className={styles.btn_entrepreneur}>Ver</button>
                        </Link>
                    </div>
                    <div className={styles.entrepreneur_sub_container3}>
                        <div className={styles.content_welcome_image}>
                            <img className={styles.entrepreneur_image1} src="/images/leePops.png"/>
                        </div>
                        <div className={styles.content_welcome_title}>
                            <h1 className={styles.title_entrepreneur1}>
                                LeePops
                            </h1>
                        </div>
                        <div className={styles.content_welcome_description}>
                            <h1 className={styles.description_entrepreneur1}>
                                Sal de la rutina con LeePops. Disfruta de nuestra varidad de sabores y colores en unas
                                ricas
                                crispetas. ¡Contactanos para pedir las tuyas!
                            </h1>
                        </div>
                        <Link href='/website/emprendimiento/2'>
                            <button className={styles.btn_entrepreneur}>Ver</button>
                        </Link>
                    </div>
                    <div className={styles.entrepreneur_sub_container4}>
                        <div className={styles.content_welcome_image}>
                            <img className={styles.entrepreneur_image1} src="/images/milaBites.png"/>
                        </div>
                        <div className={styles.content_welcome_title}>
                            <h1 className={styles.title_entrepreneur1}>
                                Mila Bites
                            </h1>
                        </div>
                        <div className={styles.content_welcome_description}>
                            <h1 className={styles.description_entrepreneur1}>
                                Bites de brownie de milo ricos para toda ocasión, perfectos para cualquier antojo y la
                                mejor
                                elección para un regalo. ¡Encuentranos en el campus!
                            </h1>
                        </div>
                        <Link href='/website/emprendimiento/3'>
                            <button className={styles.btn_entrepreneur}>Ver</button>
                        </Link>
                    </div>
                    <Link href='pages/website/welcome/[id]'>
                        <button className={styles.btn_load}>CARGAR MAS</button>
                    </Link>
                </div>
        </div>
    )
}