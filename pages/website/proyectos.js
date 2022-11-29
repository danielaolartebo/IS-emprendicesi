import styles from '/styles/Home.module.css'
import Welcome from '/components/Welcome'
import Link from 'next/link'
import {router} from "next/client";

export default function Home() {
    return (
        <div className={styles.container}>
            <img className={styles.back_image} src = "/images/BK-ROSETAS_FDCS.png" />
                <button class={styles.btn_welcome} onClick={router.back}>Volver</button>

         <div className={styles.div_design_index}>
           <Welcome title='EMPRENDICESI'></Welcome>
           <main className={styles.main}>
             <h1 className={styles.title}>
               Mis proyectos 
             </h1>
             <h1 className={styles.descrip}>
                !Actualiza, personaliza y crea nuevos proyectos!
             </h1>
             <br/>
             <br/>
             <br/>
             <br/>
           </main>
         </div>
        <div className={styles.entrepreneur_container}>
            <div className={styles.entrepreneur_sub_container1}>
                <div className={styles.entrepreneur_sub_container35}>
                    <img className={styles.entrepreneur_image1} src = "/images/cubanitos.png"/>
                </div>
                <div className={styles.entrepreneur_sub_container30}>
                    <h1 className={styles.title_entrepreneur1}>
                        Cubanitos
                    </h1>
                </div>
                <div className={styles.entrepreneur_sub_container31}>
                    <h1 className={styles.description_entrepreneur1}>
                        La manera más divertida y económica de comer en la U. Prueba uno de nuestros sándwich ¡No pararás de pedirlos!
                    </h1>
                </div>
                <Link href='/website/emprendimiento'>
                   <button class={styles.btn_entrepreneur}>Editar</button>
                </Link>
            </div>
            <div className={styles.entrepreneur_sub_container2}>
                <div className={styles.entrepreneur_create}>
                    <Link href='/website/crear_emprendimiento'>
                        <button class={styles.btn_create_entrepreneur}>Crear</button>
                    </Link>
                </div>
            </div>
            <div className={styles.entrepreneur_sub_container34}>
                <div className={styles.entrepreneur_create}>
                    <Link href='/website/crear_emprendimiento'>
                        <button class={styles.btn_create_entrepreneur}>Crear</button>
                    </Link>
                </div>
            </div>
            <div className={styles.entrepreneur_sub_container4}>
                <div className={styles.entrepreneur_create}>
                    <Link href='/website/crear_emprendimientogit '>
                        <button class={styles.btn_create_entrepreneur}>Crear</button>
                    </Link>
                </div>
            </div>
            <Link href=''>
                   <button class={styles.btn_load}>CARGAR MAS</button>
            </Link>
        </div>
       </div>
    )   
}