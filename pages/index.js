import Welcome from '../components/Welcome'
import styles from '../styles/Home.module.css'
import Link from 'next/link'

 
export default function Home() {
  return (
  <div className={styles.contenedor}>
      <img className={styles.back_image} src = "/images/BK-ROSETAS_FDCS.png"/>
      <div className={styles.divxd}>
        <Welcome title='EMPRENDICESI'></Welcome>
        <main className={styles.main}>
          <h1 className={styles.title}>
            EMPRENDICESI
          </h1>
          <div className={styles.grid}>
            <Link href='../website/login'>
              <a className={styles.card}>
                <h2>Log in</h2>
              </a>
            </Link>
          </div>
        </main>
      </div>
    
    </div>
  )
  
}