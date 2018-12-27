<template>
<div>
    <div id="demo" class="carousel slide d-block" data-ride="carousel" data-interval="10000">
        <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
        </ul>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div id="ad1" class="carousel-img"></div>
                <div class="carousel-caption h-75 m-auto">
                    <div class="container m-auto "style="" id="">
                        <h3><span>Добре дошли в сайта <b>Косара Оренда</b> !</span></h3>
                        <p id="p-slide-1" class="w-100 mt-3 d-none"><span><!--It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.
                            The point of using Lorem Ipsum is that it has a more-or-less normal distribution
                            of letters, as opposed to ...--></span></p>
                    </div>

                </div>
            </div>
            <div class="carousel-item">
                <div id="ad2" class="carousel-img"></div>
                <div class="carousel-caption ">
                    <div class="container m-auto "style="">
                        <h3 class="m-auto " id="h3-2"><span>Не пропускайте нашите <b>СЪБИТИЯ</b> !</span></h3>
                        <hr style="color: transparent;border-color: transparent">
                        <p class=" m-auto col-md-6 " ><span>В нашият раздел Събития ще бъдат качвани всички актуални събития и предложения.
                    За да разберете най-актуалната информация,следете всичко което се качва в него.</span></p>
                        <router-link tag="a" to="/events" class="btn btn-light font-weight-bold mt-3">Влез в раздела</router-link>
                    </div>
                </div>

            </div>
            <div class="carousel-item">
                <div id="ad3" class="carousel-img"></div>
                <div class="carousel-caption ">
                    <div class="container m-auto "style="">
                        <h3 class="m-auto " id="h3-3"><span>Следете нашите <b>ЕКСКУРЗИИ</b> !</span></h3>
                        <hr style="color: transparent;border-color: transparent">
                        <p class=" m-auto col-md-6 " ><span>Всички екскурзии в страната и чужбина ще бъдат качвани в нашия раздел - Екскурзии.
                        Не забравяйте да проверявате редовно в сайта ни за тях и ако имате въпроси се свържете с нас!</span></p>
                        <router-link tag="a" to="/travelbg" class="btn btn-light font-weight-bold mt-3">Влез в раздела</router-link>
                    </div>
                </div>

            </div>
        </div>
        <a class="carousel-control-prev text-white" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>

    </div>
    <div class="row p-0 m-0 w-100 mt-2" id="block" style="">
        <div class="w-50 " id="ff" style=""></div>
        <div class="w-50 " id="ff2"></div>
    </div>
</div>

</template>

<script>
    export default {
        name: "AppCarousel"
    }
</script>

<style scoped>
    #demo{
        height: 500px;
        z-index:1;
    }
    .carousel-inner{
        border-bottom: 10px solid #826135;
        -webkit-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.55);
        -moz-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.55);
        box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.55);
    }
    .carousel-img{
        height: 500px;
        background-repeat: no-repeat;
        background-size: cover;
        background-position: center;
    }
    #ad1{
        background-image:url("../images/slide-1.jpg");
        background-attachment: fixed;
    }
    #ad2{
        background-image:url("../images/slide-2.jpg");
        background-attachment: fixed;
    }
    #ad3{
        background-image:url("../images/slide-3.jpg");
        background-attachment: fixed;

    }
    h3>span{
        padding: 2px 12px;
        border-radius:4px;
        background-color: rgba(10,9,10,0.7);
        line-height: 160%;
        box-decoration-break: clone;
    }
    #h3-2{

    }
    span>b{
        color:rgba(223,178,0,1);
    }
    p{
        padding: 2px 8px;
        border-radius:4px;
        background-color: rgba(10,9,10,0.7);
    }

    #block {
        height: 60px;
        background-color: #e1be60;
        clip-path: polygon(0 0, 20% 100%, 80% 100%, 100% 0%);

    }
    @media only screen and (max-width: 600px) {
        #block{
            margin-top:20px;
        }


    }
</style>