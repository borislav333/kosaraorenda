<template>
    <div class="col-12">
        <h2 class="m-auto text-center p-4">Отзиви от наши клиенти</h2>
        <div class="container m-0 p-0 pt-2 m-auto col-12 col-sm-10 col-md-11 col-lg-11 col-xl-9" style="" id="client-div-container">
            <div class="d-flex " :style="{transform:'translateX'+'('+position+'px'+')'}" style="" id="client-div" ref="clientdiv">

                <div v-for="(item,index) in content" class="client-div col-12  col-lg-3 col-md-4 col-sm-6 text-center">
                    <div class="client-img m-auto mb-5" :id="'client-img-'+index"></div>
                    <div class="mt-1">
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                    </div>
                    <div style="height: 10px"></div>
                    <div class="client-name-div m-auto mt-5" :id="'client-name-'+index"><span class="client-name">{{item.name}}</span></div>
                    <div class="client-comment m-auto" :id="'client-comment-'+index">
                        {{item.text}}
                    </div>
                    <div style="height: 10px"></div>
                </div>

            </div>
            <div class="text-center mt-lg-3 mt-md-3 d-flex justify-content-center p-0" style="" id="client-arrows-div">
               <div><span @click="back" class="mr-3"><i class="fas fa-angle-double-left"></i></span></div>
                <div><span @click="next" class="ml-3"><i class="fas fa-angle-right"></i></span></div>

            </div>
        </div>
    </div>




</template>

<script>
    export default {
        name: "AppLogoCarousel",
        data(){
          return{
              content:[{name:'Симона и Даниела Цаневи ',text:'Много сме доволни от Боряна. Страхотно изживяване! Благодарим ти!  /26.08.2018г./'},
                  {name:'Елена и Жана Колеви',text:'За нас беше удоволствие да пътуваме с прекрасния екип – ' +
                      'Боряна и Георги. Пътуването беше изпълнено с прекрасни емоции.\n' +
                      'Боряна, благодарим за загрижеността , всеотдайността и старанието всеки от нас  да се чувства добре. Ще се радваме' +
                      ' да пътуваме отново с вас. \ ' +
                      '/гр. Казанлък /22-24.09.2018г./'},
                  {name:'Дора и Тодор\n' +
                      '',text:'Благодарим ти, за хубавото изживяване, Боре! Лъчезарна , винаги усмихната, ' +
                      'влагаща, страст и вдъхновение! А, да не забравя – отличен диджей :D!  /Гр. Казанлък/' },
                  {name:'Иванка Джоргова ',text:'Чудесно и неповторимо прекарване!' +
                      ' Никога няма да я забравя! Направихте ме щастлива! Специални благодарности на Борянчето, защото е прекрасен човек!' +
                      '/ 06.10.18 г., Пещера Проходна и Съева дупка/, гр. Казалък'},
                  ],
              elements:0,
              position:0,
              itemsBefore:0,
          }
        },
        computed:{

        },
        methods:{
            perPage(){
                return this.containerPixels()/this.$refs.clientdiv.firstChild.clientWidth+1;
            },
            containerPixels(){
                return this.$refs.clientdiv.clientWidth;
            },
            pixel(){
                return this.$refs.clientdiv.firstChild.clientWidth;
            },
            next(){
                let slideElements=this.elements-this.perPage();
                let pixel=this.pixel();
                if(this.position>-slideElements*pixel){
                    this.position+=(-this.pixel());
                    this.itemsBefore+=1;
                }

            },
            back(){
                if(this.itemsBefore>0){
                    this.position+=this.itemsBefore*this.$refs.clientdiv.firstChild.clientWidth;
                    this.itemsBefore=0;
                }


            },

        },
        mounted(){

            let clientdiv=this.$refs.clientdiv;
            this.elements=clientdiv.children.length
            this.$store.dispatch('alert')
            //alert(clientdiv.children.length)
        },
        updated(){
        },
        created(){
        }
    }
</script>

<style scoped>
    #client-div-container{
        overflow: hidden;
        border:2px solid #E1BE60;
        border-radius:10%;
    }
    #client-div{
        transform:translateX(0);
        transition: transform 2s;
    }
   .client-img{
       height: 85px;
       width: 85px;
       border-radius: 50%;
       border:2px solid dimgrey;
       background-size: cover;
       -webkit-box-shadow: 0px 0px 7px 0px rgba(0,0,0,0.75);
       -moz-box-shadow: 0px 0px 7px 0px rgba(0,0,0,0.75);
       box-shadow: 0px 0px 7px 0px rgba(0,0,0,0.75);
   }
    #client-img-0{
        background-image: url("../images/happy/happy1.jpg");
    }
   #client-img-1{
       background-image: url("../images/happy/happy2.jpg");
   }
   #client-img-2{
       background-image: url("../images/happy/happy3.jpg");
   }
   #client-img-3{
       background-image: url("../images/happy/happy4.jpg");
   }
    #client-img-4{
        background-image: url("../images/2.jpg");
    }
    .client-comment{


        border:1px solid grey;
        border-top:none;
        border-bottom-right-radius: 5px;
        border-bottom-left-radius: 5px;
        word-break: break-word;
        background-color: #f9f8f4;
        padding:7px 6px;
        letter-spacing: 1px;
        font-style: italic;
        font-family: Arial;
        overflow-y: scroll;
        max-height: 100px;
        max-width:240px;
        /*text-shadow: 1px 0px 1px #AE8B03;*/
    }
    .client-name{
        font-weight: bold;
        font-size:19px;
        color:#DEB200;
        text-shadow:1px 1px 1px black;
        margin-top:22px;
    }
    .client-name-div{
        background-color:#96703f;
        border:1px solid grey;
        border-radius: 5px;
        min-width: 200px;
        max-width: 250px;

    }
    #client-arrows-div{
        font-size:50px;
        background-color:#E1BE61;

    }
    #client-arrows-div>div>span{
        cursor: pointer;
        border-radius: 20%;
    }

    .client-comment::-webkit-scrollbar {
        width: 10px;
    }

    .client-comment::-webkit-scrollbar-track {
        -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
    }

    .client-comment::-webkit-scrollbar-thumb {
        background-color: darkgrey;
        border-radius:15px;
    }

    .checked {
        color: orange;
    }
</style>