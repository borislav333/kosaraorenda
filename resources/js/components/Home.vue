<template>
    <div class="h-100">

        <app-navigation></app-navigation>
        <div  id="space"></div>
        <router-view >

        </router-view>
        <app-logo-carousel></app-logo-carousel>
        <div id="footer" style="" class="mt-4">
            <div class="text-center" style=""><span >Всички авторски права са запазени КosaraОrenda.com © {{ new Date().getFullYear()}}.
                Изработен от <a href="https://yakimov.info/" target="_blank" class="text-dark">Yakimov.info</a></span></div>
        </div>
    </div>

</template>

<script>
    import AppNavigation from './AppNavigation.vue'
    import AppLogoCarousel from '../components/AppLogoCarousel.vue'
    export default {
        name: "Home",
        data(){
            return {
                nav:100,
            }
        },
        components:{
            'app-navigation':AppNavigation,
            'app-logo-carousel':AppLogoCarousel,
        },
        created(){
            this.$store.dispatch('isLogged');
        }
    }
</script>

<style>
    html{
        max-width: 100%;
    }
body{
    background-color: white;
    width: 100%;
}
#space{
    height: 100px;
}
@media only screen and (max-width: 600px) {
    #space{
        height: 60px;
    }

}
    #footer{
        border-top:3px solid #826135;
        background-color: #E1BE60;
        font-family: 'El Messiri', sans-serif;
        font-size: 16px;
    }
    .pagination > li > a,
    .pagination > li > span {
        color: grey;
    }
    .page-item.active .page-link{
        background-color: #826135;
        border-color: #826135;
    }
    .pagination > .active > a,
    .pagination > .active > a:focus,
    .pagination > .active > a:hover,
    .pagination > .active > span,
    .pagination > .active > span:focus,
    .pagination > .active > span:hover {
        background-color: #826135;
        border-color: #826135;
    }



</style>