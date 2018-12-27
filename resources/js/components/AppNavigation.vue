<template>
    <div style="" id="fullnav" class="fixed-top " ref="fullnav">
        <div id="logo-div" class="d-inline-flex float-left ml-5 mt-1"><img class="d-none d-md-inline-flex " src="../images/logo.png" id="logo"></div>
        <div class="text-white  text-left" id="info" style="">
            <div class="row h-100 " style="" >
                <div id="contact" class="d-none d-md-flex align-items-center" style="" >

                    <i class="fas fa-phone ml-5" style=""></i><span id="phone">+359 898 854271</span>
                    <i class="fas fa-envelope ml-2"></i><span class="ml-1" id="email">kosaraorenda@abv.bg</span>
                </div>
                <div class="d-flex d-md-none  mt-3" @click.prevent="clicked=!clicked">
                    <img class="" src="../images/logo.png" id="logo2">
                </div>
                <div id="hamburger" class="row mr-1 d-flex d-lg-none" @click.prevent="clicked=!clicked">
                    <i class="fas fa-bars d-inline-flex p-2 pt-1 pb-1 "></i>
                </div>
                <div class="ml-auto mr-5 ">
                    <a class="btn btn-warning h-100 d-flex align-items-center" style="border-radius:0;" @click.prevent="exit" v-if="isAdmin">
                        <span style="" class="text-dark">Изход</span></a>
                </div>
            </div>

            </div>

        <nav class="navbar-expand-lg  bg-white navbar-custom" >

            <!--<a class="navbar-brand" href="#">Косара Оренде</a>-->
            <div class="d-none h-100 row d-lg-flex align-items-center " >
                <ul class="navbar-nav ml-auto mr-5">
                    <router-link v-for="(item,index) in menu" tag="li" :to="item.path" class="nav-item"
                                 active-class="active" :key="index" :id="item.id"  exact>
                        <a class="nav-link" href="#"><span>{{item.text}}</span></a>
                        <!--<ul v-if="item.id==='steps'" class="navbar-nav dropdown-ul" style="background-color: white;border:1px solid black;" >
                            <router-link :to="'/test'" tag="li" class="nav-item" id="dropdown-item-1">Daddad</router-link>
                        </ul>-->
                    </router-link>
                </ul>
            </div>
       <div class="d-block d-lg-none container text-center pl-5 " id="responsive-nav" v-if="clicked">
           <ul class="navbar-nav ml-auto mr-5 bg-white ">
               <router-link v-for="(item,index) in menu" tag="li" :to="item.path" class="nav-item"
                            active-class="active" :key="index" :id="'res-item-'+index" @click.native="clicked=false" exact>
                   <a class="nav-link" href="#"><span>{{item.text}}</span></a>

               </router-link>


           </ul>

       </div>
        </nav>
    </div>

</template>

<script>

    export default {
        name: "AppNavigation",
        data(){
            return {
                menu:[{text:'Начало',path:'/'},{text:'Екскурзии',path:'/travelbg',id:'steps'},
                    {text:'За нас',path:'/forus',id:'forus'}, {text:'Събития',path:'/events'},
                    {text:'Полезни съвети',path:'/advices'},{text:'Контакти',path:'/contacts'}],
                dropdownForUs:[{text:'',}],
                clicked:false,
            }
        },
        computed:{
            isAdmin(){
                return this.$store.getters.getIsAdmin;
            }
        },
        methods:{
            exit(){
                localStorage.removeItem('token');
                location.reload();
            }
        },
        created(){

        }
    }
</script>

<style scoped>
    @import url('https://fonts.googleapis.com/css?family=Neucha');
    @import url('https://fonts.googleapis.com/css?family=El+Messiri|Neucha');


    #fullnav{
        border-top:1px solid #826135;
        -webkit-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.85);
        -moz-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.85);
        box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.85);
    }
    nav{
       border-top: 2px solid #826135;
        font-family: 'El Messiri', sans-serif;
        background-color: white;
        height: 60px;
    }
    .navbar-nav>li{
        font-size: 20px;
    }
    .navbar-nav>li>a>span:hover{
        /*border-bottom:2px solid #dfb200;
        border-radius:7px;
        transition: opacity 1s;*/

        /*border-top-right-radius:5px;
        border-top-left-radius:5px;
        border-bottom:3px solid #E1BE60;
        border-bottom-right-radius:7px;
        border-bottom-left-radius:7px;*/
    }
    .nav-link{
        color: rgba(10,9,10,0.92);
    }
    #responsive-nav{
        margin-top:38px;
        padding-left:80px;
    }
    #responsive-nav>ul>li{
        height: 48px;
        border:1px solid grey;

    }
    #res-item-1,#res-item-3,#res-item-5{
        background-color: #E1BE60;
    }
    #logo{
        height: 100px;
        border-radius: 50%;
        border:2px solid #826135;
        -webkit-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.55);
        -moz-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.55);
        box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.55);
        filter:brightness(110%);
        transform: rotate(0deg);
        transition:transform 1s;
    }
    #logo2{
        height: 94px;
        border-radius: 50%;
        border:2px solid #826135;
        margin-top:-10px;
        margin-left:-30px;
        -webkit-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.55);
        -moz-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.55);
        box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.55);
        filter:brightness(110%);
        transform: rotate(0deg);
        transition:transform 1s;
    }
    #logo:hover{
        cursor:pointer;
        filter:brightness(115%);
     /*   transform: rotateY(180deg);
        transition:transform 1s ease-in-out;*/


    }
    #hamburger{
        position:absolute;
        cursor: pointer;
        color:white;
        right:20px;
        bottom:30px;
        font-size: 35px;
        font-family: Verdana;
        text-shadow:1px 1px 1px black;
    }
    #hamburger>i{
        background-color: #826135;
        border:3px solid white;
        border-radius:5px;

    }
    #logo-div{
        z-index: 1;

        /*-webkit-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.85);
        -moz-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.85);
        box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.85);*/
    }
    #info{
        background-color:  #E1BE60 ;
        height: 50px;
    }


    .fa-envelope{
        font-size: 15px;
    }
    #info>div>#contact>#email{
        font-size: 17px;
        text-shadow: 1px 1px #000000;
    }
    #info>div>#contact>#phone{
        font-size: 16px;
        text-shadow: 1px 1px #000000;
    }
    #info>div>#contact>i{
        text-shadow: 1px 1px black;
    }
    #steps>a{
        color:#826135;
        font-weight: bold;
    }
    #steps>a::after{
        content: '';
        position: absolute;
        width: 22px; height: 3px;
        display: block;
        margin-top: 5px;
        background: #fff;
        transition: width .2s ease;
        -webkit-transition: width .2s ease;
    }
    #dada>a>span{

    }
    .active>a>span{/*
        border-top:2px solid #dfb200;
        border-left: 2px solid #dfb200;
        border-right: 2px solid #dfb200;*/
        border-top-right-radius:5px;
        border-top-left-radius:5px;
        border-bottom:3px solid #dfb200;
        border-bottom-right-radius:7px;
        border-bottom-left-radius:7px;
    }

    #dropdown-item-1{
        border:1px solid red;
    }
    .dropdown-ul{
        margin-top:5px;
        position:absolute;
    }
    @media only screen and (max-width: 600px) {
        #info{
            height: 35px;
        }
        nav{
            height: 40px;
        }
        #logo2{
            height: 70px;
            margin-top:-13px;
        }
        #hamburger{
            font-size: 24px;
            bottom:15px;
        }

    }
</style>