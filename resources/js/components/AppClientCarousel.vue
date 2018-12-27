<template>
    <div class="col-12">
        <h2 class="m-auto text-center p-4">Отзиви от наши клиенти</h2>
        <div class="container m-0 p-0 pt-2 m-auto col-12 col-sm-10 col-md-11 col-lg-11 col-xl-9" style="" id="client-div-container">
            <div class="d-flex " :style="{transform:'translateX'+'('+position+'px'+')'}" style="" id="client-div" ref="clientdiv">

                <div v-for="(item,index) in content" class="client-div col-12  col-lg-3 col-md-4 col-sm-6 text-center">
                    <div class="client-img m-auto" :id="'client-img-'+index"></div>
                    <div class="client-name-div m-auto" :id="'client-name-'+index"><span class="client-name">{{item.name}}</span></div>
                    <div class="client-comment m-auto" :id="'client-comment-'+index">
                        {{item.text}}
                    </div>
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
              content:[{name:'Иван Иванов',text:'Текст текст текст текст текстекст текст текст текстт'},
                  {name:'Петър Петров',text:'Message текст текст текст тексттекст текст текст тексттекст '},
                  {name:'Георги Георгиев',text:'Message message,message текст текст текст тексттекст текст текст тексттекст ' },
                  {name:'Стефан Стефанов',text:'Message message,message'},
                  {name:'Иван Иванов',text:'Message message,message'},
                  {name:'Иван Иванов',text:'Message message,message'},
                  {name:'Иван Иванов',text:'Message message,message'},
                  {name:'Иван Иванов',text:'Message message,message'},],
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
       height: 80px;
       width: 80px;
       border-radius: 50%;
       border:3px solid grey;
       background-size: cover;
   }
    #client-img-0{
        background-image: url("../images/2.jpg");
    }
   #client-img-1{
       background-image: url("../images/1.jpg");
   }
   #client-img-2{
       background-image: url("../images/2.jpg");
   }
   #client-img-3{
       background-image: url("../images/1.jpg");
   }
    #client-img-4{
        background-image: url("../images/2.jpg");
    }
    .client-comment{
        width: 200px;

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
        /*text-shadow: 1px 0px 1px #AE8B03;*/
    }
    .client-name{
        font-weight: bold;
        font-size:19px;
        color:#DEB200;
        text-shadow:1px 1px 1px black;
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
</style>