import styles from '/styles/Home.module.css'
import Welcome from '/components/Welcome'
import Link from 'next/link'

export default function Home() {

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
        }else {
            alert(json.message)
        }

    }

    return (
        <div className={styles.container}>
            <img className={styles.back_image} src="/images/BK-ROSETAS_FDCS.png"/ >
                <button className={styles.btn_welcome} onClick={signOut}>Cerrar SesiÃ³n</button>

                <Link href='/website/formulario'>
                    <button className={styles.btn_inscription}>Inscribir Emprendimiento</button>
                </Link>
                <div className={styles.div_design_index}>
                    <Welcome title='EMPRENDICESI'></Welcome>
                    <main className={styles.main}>
                        <h1 className={styles.title}>
                            EMPRENDICESI
                        </h1>
                        <h1 className={styles.descrip}>
                            Â¡Para todos aquellos que buscan emprender!
                        </h1>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                    </main>
                </div>
                <div className={styles.menu}>
                    <Link href='/website/proyectos'>
                        <button className={styles.btn_welcome}>Proyectos</button>
                    </Link>
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
                                La manera mÃ¡s divertida y econÃ³mica de comer en la U. Prueba uno de nuestros sÃ¡ndwich Â¡No
                                pararÃ¡s de pedirlos!
                            </h1>
                        </div>
                        <Link href='/website/emprendimiento'>
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
                                Galletas hechas en casa con mucho amor. CÃ³mplices en tu dulce crimen. Seguro que no te
                                arrepentiras Â¡Escribenos por medio de WhatsApp!
                            </h1>
                        </div>
                        <Link href=''>
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
                                Sal de la rutina con LeePops. Disfruta de nuestra varidad de sabores y colores en unas ricas
                                crispetas. Â¡Contactanos para pedir las tuyas!
                            </h1>
                        </div>
                        <Link href=''>
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
                                Bites de brownie de milo ricos para toda ocasiÃ³n, perfectos para cualquier antojo y la mejor
                                elecciÃ³n para un regalo. Â¡Encuentranos en el campus!
                            </h1>
                        </div>
                        <Link href=''>
                            <button className={styles.btn_entrepreneur}>Ver</button>
                        </Link>
                    </div>
                    <Link href=''>
                        <button className={styles.btn_load}>CARGAR MAS</button>
                    </Link>
                </div>
        </div>
    )
}