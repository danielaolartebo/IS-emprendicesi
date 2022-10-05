import Welcome from '../components/Welcome'
import styles from '../styles/Home.module.css'
import Link from 'next/link'


 
export default function Home() {
  return (
    <div className={styles.container}>
      <Welcome title='EMPRENDICESI'></Welcome>

      <main className={styles.main}>
        <h1 className={styles.title}>
          EMPRENDICESI
        </h1>
        <br></br>
        <br></br>
        <div className={styles.grid}>
          <Link href='../website/login'>
            <a className={styles.card}>
              <h2>Log in</h2>
            </a>
          </Link>
        </div>
      </main>
    </div>
  )
}