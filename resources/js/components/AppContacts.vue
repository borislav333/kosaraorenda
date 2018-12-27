<template>
    <div>
        <div class="container mt-4 col-12 col-md-11 col-lg-10 p-3" id="contacts-container" style="">
            <div class="col-11 col-lg-8 m-auto" id="contacts-content" style="">
                <div style="" class="text-center">
                    <img src="../images/contactus.png" alt="" class="m-auto img-fluid" id="contactus-img">
                </div>
                <div class="text-center col-12 col-md-8 m-auto" style="">
                    <h3><b>Косара Оренда ЕООД</b></h3>
                    <div><h4 id="creator"><b>Боряна Колева</b></h4></div>
                    <div><span><b>Адрес:</b> гр. Стара Загора бул. "Цар Симеон Велики" 112,
                        <br>ТЦ "Сити",сутерен,офис 34</span></div>
                    <div><span><b>Телефони:</b> 0898854271 , 0885819182</span></div>
                    <div><span><b>Е-мейл:</b> kosaraorenda@abv.bg</span></div>
                </div>
                <div id="social-div" class="text-center mt-3">
                    <span ><i class="fab fa-facebook-square"></i></span>
                    <span class="ml-3"><i class="fab fa-twitter-square"></i></span>
                    <span class="ml-3"><i class="fab fa-google-plus-square"></i></span>
                </div>
            </div>

        </div>

    </div>
</template>

<script>
    export default {
        name: "AppContacts"
    }
</script>

<style scoped>
  #contacts-container{
      border:4px solid #E1BE60;
      border-radius: 2px;
      background-image:url("../images/forus.jpg");
      background-position: center;
      background-size: cover;
      background-repeat: no-repeat;
  }
    #contacts-content{
        font-size: 17px;
        background-color: white;
        -webkit-box-shadow: 0px 0px 8px 0px rgba(0,0,0,0.75);
        -moz-box-shadow: 0px 0px 8px 0px rgba(0,0,0,0.75);
        box-shadow: 0px 0px 8px 0px rgba(0,0,0,0.75);
    }
    #contactus-img{
        max-height: 130px;
    }
    #creator{

    }
    b{
    }
    #social-div{
        background-color: #E1BE60;
        border-top-left-radius:10px;
        border-top-right-radius:10px;
    }
    #social-div>span>i{
        font-size: 40px;
        color:#826135;
        text-shadow:1px 1px 1px black;
        cursor: pointer;
    }
  #social-div>span>i:hover{
      color:grey;
  }
</style>