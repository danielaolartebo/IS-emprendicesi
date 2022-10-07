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
           </main>
         </div>
         <div className={styles.menu}>
            <Link href='/website/proyectos'>
                   <button class={styles.btn_welcome}>Proyectos</button>
            </Link>
        </div>
       </div>
    )   
}