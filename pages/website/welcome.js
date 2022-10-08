import styles from '/styles/Home.module.css'
import Welcome from '/components/Welcome'
import Link from 'next/link'

export default function Home() {
    return (
        <div className={styles.container}>
            <img className={styles.back_image} src = "/images/BK-ROSETAS_FDCS.png"/ >
               <Link href='/'>
                   <button class={styles.btn_welcome}>Cerrar Sesión</button>
               </Link>
                <Link href='/website/formulario'>
                   <button class={styles.btn_inscription}>Inscribir Emprendimiento</button>
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
            <Link href='/website/proyectos'>
                   <button class={styles.btn_welcome}>Proyectos</button>
            </Link>
        </div>
        <div className={styles.entrepreneur_container}>
            <div className={styles.entrepreneur_sub_container1}>
                <img className={styles.entrepreneur_image1} src = "/images/cubanitos.png"/>
                <h1 className={styles.title_entrepreneur1}>
                    Cubanitos
                </h1>
                <h1 className={styles.description_entrepreneur1}>
                    La manera más divertida y económica de comer en la U. Prueba uno de nuestros sándwich ¡No pararás de pedirlos!
                </h1>
                <Link href='/website/emprendimiento'>
                   <button class={styles.btn_entrepreneur}>Ver</button>
                </Link>
            </div>
            <div className={styles.entrepreneur_sub_container2}>
                <img className={styles.entrepreneur_image2} src = "/images/sweetestCrime.png"/>
                <h1 className={styles.title_entrepreneur2}>
                    The Sweetest Crime
                </h1>
                <h1 className={styles.description_entrepreneur2}>
                    Galletas hechas en casa con mucho amor. Cómplices en tu dulce crimen. Seguro que no te arrepentiras ¡Escribenos por medio de WhatsApp!
                </h1>
                <Link href=''>
                   <button class={styles.btn_entrepreneur}>Ver</button>
                </Link>
            </div>
            <div className={styles.entrepreneur_sub_container3}>
                <img className={styles.entrepreneur_image1} src = "/images/leePops.png"/>
                <h1 className={styles.title_entrepreneur1}>
                    LeePops
                </h1>
                <h1 className={styles.description_entrepreneur1}>
                    Sal de la rutina con LeePops. Disfruta de nuestra varidad de sabores y colores en unas ricas crispetas. ¡Contactanos para pedir las tuyas!
                </h1>
                <Link href=''>
                   <button class={styles.btn_entrepreneur}>Ver</button>
                </Link>
            </div>
            <div className={styles.entrepreneur_sub_container4}>
                <img className={styles.entrepreneur_image1} src = "/images/milaBites.png"/>
                <h1 className={styles.title_entrepreneur4}>
                    Mila Bites
                </h1>
                <h1 className={styles.description_entrepreneur4}>
                    Bites de brownie de milo ricos para toda ocasión, perfectos para cualquier antojo y la mejor elección para un regalo. ¡Encuentranos en el campus!
                </h1>
                <Link href=''>
                   <button class={styles.btn_entrepreneur}>Ver</button>
                </Link>
            </div>
            <Link href=''>
                   <button class={styles.btn_load}>CARGAR MAS</button>
            </Link>
        </div>
       </div>
    )   
}