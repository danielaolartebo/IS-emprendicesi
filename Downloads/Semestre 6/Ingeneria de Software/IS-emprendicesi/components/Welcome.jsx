import Head from 'next/head'
import {Component} from 'react'

export default class Welcome extends Component{
    render(){
        return(
            <Head>
                <title>{this.props.title}</title>
                <link 
                    href="https://bootswatch.com/5/journal/bootstrap.min.css" 
                    rel="stylesheet"
                />
                <link
                    rel="stylesheet"
                    href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
                />
                <link
                    rel="stylesheet"
                    href="https://fonts.googleapis.com/icon?family=Material+Icons"
                />
            </Head>
        )
    }
}