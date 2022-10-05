import {Component} from 'react'
import styles from '../styles/Home.module.css'

export default class Login extends Component {
    render(){
        return(
            <div class={styles.navbar}>
                <div>
                    <a href='/'>EMPRENDICESI</a>
                </div>
                <div class={styles.navbarbut}>
                    <button>Sign in</button>
                </div>
            </div>
        )
    }
}