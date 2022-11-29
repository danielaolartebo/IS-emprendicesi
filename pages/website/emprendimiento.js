import styles from '/styles/Home.module.css'
import Welcome from '/components/Welcome'
import Link from 'next/link'
import {router} from "next/client";

let data = {
    usuario: '',
    password: '',
}

let login = () =>{
  async function handleSubmit(event) {
    event.preventDefault();
    const response = await fetch('/api/accounts/verifyAccount',{
        method:'POST',
        body: JSON.stringify({data}),
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        }
    })
    const json = await response.json();
    console.log("funciona?")
    if(json.status == 'success'){
        console.log(json.data)
        
    }else{
         console.log("no funciona")
        alert(json.message)
        window.location.href = '/login'
    }
}

let handleChange = (event) => {
    console.log(event.target.name);
    switch (event.target.name) {
        case 'usuario':
            data.usuario = event.target.value;
            break;
        case 'password':
            data.password = event.target.value;
            break;
        default:
            break;
    }
    $(document).ready(function(){
        // Check Radio-box
        $(".rating input:radio").attr("checked", false);
    
        $('.rating input').click(function () {
            $(".rating span").removeClass('checked');
            $(this).parent().addClass('checked');
        });
    
        $('input:radio').change(
          function(){
            var userRating = this.value;
            alert(userRating);
        }); 
    });
}
    return(
        <div>
            <div className={styles.container}>
                <img className={styles.back_image} src = "/images/BK-ROSETAS_FDCS.png"/>

                <button class={styles.btn_welcome} onClick={router.back}>Volver</button>

                <div className={styles.content_login_emprendedor}>
                    <Welcome title='Login'></Welcome>
                    <main className={styles.main}>
                        <form className='form' onSubmit={handleSubmit}>
                            <legend className={styles.title_emprendimiento1}>Cubanitos</legend>
                            <img className={styles.logo_emprendimiento} src = "/images/cubanitos.png"/>
                            <div >
                                <h1 className={styles.description_emprendimeinto1}>
                                    La manera más divertida y económica de comer en la U. Prueba uno de nuestros sándwich ¡No pararás de pedirlos!
                                </h1>
                                     <div className={styles.content_sub_emprendedor}>
                                        <div className={styles.content_sub_sub}>
                                            <h1 className={styles.descrip_horario}>
                                                Horarios
                                            </h1>
                                            <div className={styles.regularFont_horarios}>
                                            <br/> <br/><br/>
                                                Nuestros distribuidores están en la U de lunes a viernes en horarios de mañana y tarde
                                            </div>  
                                        </div>
                                        <div className={styles.content_sub_sub2}>
                                            <h1 className={styles.descrip_productos}>
                                                Redes Sociales
                                            </h1> 
                                            <div className={styles.regularFont_productos}>
                                            <br/> <br/><br/>
                                                <Link href=''>
                                                    <button class={styles.btn_instagram}>Ir</button>
                                                </Link>
                                            </div> 
                                        </div>
                                        <div className={styles.content_sub_sub3}>
                                            <h1 className={styles.descrip_contacto}>
                                                Contacto
                                            </h1> 
                                            <Link href=''>
                                                <button class={styles.btn_whatsapp}>WhatsApp</button>
                                            </Link>
                                        </div>
                                        <div className={styles.content_sub_sub4}>
                                            <h1 className={styles.descrip_calificacion}>
                                                Calificación
                                            </h1> 
                                            <div className={styles.stars_container}>
                                                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
                                                        <div class="rating">
                                                            <span>  <input type="radio" name="rating" id="str5" value="5"/><label for="str5"></label></span>
                                                            <span>  <input type="radio" name="rating" id="str4" value="4"/><label for="str4"></label></span>
                                                            <span>  <input type="radio" name="rating" id="str3" value="3"/><label for="str3"></label></span>
                                                            <span>  <input type="radio" name="rating" id="str2" value="2"/><label for="str2"></label></span>
                                                            <span>  <input type="radio" name="rating" id="str1" value="1"/><label for="str1"></label></span>
                                                        </div>
                                            </div>
                                        </div>
                                        <div className={styles.content_image}>
                                            <img className={styles.foto_emprendimiento} src = "/images/cubanitos_2.png"/>
                                        </div>
                                        <div className={styles.content_options}>
                                            <Link href='/website/foro'>
                                                <button class={styles.btn_forum}>Calificar</button>
                                            </Link>
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
  

