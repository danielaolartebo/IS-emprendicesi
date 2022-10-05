import Head from 'next/head'
import Image from 'next/image'
import styles from '../styles/Home.module.css'
import Link from 'next/link';

export default function welcome() {
  return (
    <div>
      <h1>EMPRENDICESI</h1>
          <a href="/website/login"> Iniciar sesion</a>
    </div>
  );
}
