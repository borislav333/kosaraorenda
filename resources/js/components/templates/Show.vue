<template>
    <div>
        <div class="container mt-4 col-12 col-md-11 col-lg-10 p-3" id="objects-container" style="">
            <div class="col-12 col-lg-8 m-auto pb-1" id="objects-content" style="">
                <div style="" class="text-center" id="objectHead"><h2 class="mt-auto">{{title}}</h2></div>
                <div class=" m-auto text-center" v-if="isAdmin===1"><a class="btn btn-danger text-white" @click.prevent="create">{{createBtn}}</a></div>

                <div class="m-auto text-center" v-if="isTravel">
                    <router-link tag="a" class="btn  text-dark travelbtn "  to="/travelbg" active-class="activeBtn"><b>В БЪЛГАРИЯ</b></router-link>
                    <router-link tag="a" class="btn  text-dark travelbtn" to="/travelout" active-class="activeBtn"><b>В ЧУЖБИНА</b></router-link>
                    <br>
                    <small class="font-italic text-secondary">кликнете, за да изберете</small>
                    <h4 class="mt-2 text-left">Предложения в {{travel}}</h4>
                </div>


                <div>
                    <app-object v-for="(obj,index) in objects.data" :key="index" v-bind="{obj,comp,index}"></app-object>
                   <div class="d-flex justify-content-center"><pagination :data="objects" @pagination-change-page="getObjects" ></pagination></div>
                </div>
            </div>

        </div>

    </div>
</template>

<script>
    import Object from './Object.vue'
    export default {
        props:['comp','title','createBtn'],
        data(){
          return {
              objects:{},
              active:false,
              travel:'',
          }
        },
        computed:{
            isAdmin(){
                return this.$store.getters.getIsAdmin;
            },
            isTravel(){
                if(this.comp==='TravelBulgaria'||this.comp==='TravelOutside'){
                    if(this.comp==='TravelOutside'){
                        this.travel='чужбина';
                    }
                    else {
                        this.travel='страната';
                    }
                    return true;
                }
                return false;
            }
        },
        methods:{
            create(){
                if(this.comp==='Event'){
                    this.$router.push('/events/create');
                }
                else if(this.comp==='Advice'){
                    this.$router.push('/advices/create');
                }
                else if(this.comp==='TravelBulgaria'){
                    this.$router.push('/travelbg/create');
                }
                else if(this.comp==='TravelOutside'){
                    this.$router.push('/travelout/create');
                }

            },
           getObjects(page=1){
               if(this.comp==='Event'){
                   axios.get('/api/events?page='+page)
                       .then(res=>(this.objects=res.data))
                       .catch(err=>console.log(err.response.data));
               }
               else if(this.comp==='Advice'){
                   axios.get('/api/advices?page='+page)
                       .then(res=>(this.objects=res.data))
                       .catch(err=>console.log(err.response.data));
               }
               else if(this.comp==='TravelBulgaria'){
                   axios.get('/api/travels?page='+page)
                       .then(res=>(this.objects=res.data))
                       .catch(err=>console.log(err.response.data.error));
               }
               else if(this.comp==='TravelOutside'){
                   axios.get('/api/travelout?page='+page)
                       .then(res=>(this.objects=res.data))
                       .catch(err=>console.log(err.response.data));
               }

           },
            deleteObject(index){
                console.log(this.objects);
                console.log(index);
                this.objects.data.splice(index,1);
                console.log(this.objects);
            }
        },
        mounted(){
            if(this.comp==='Event'){
                document.getElementById('objects-container').style.backgroundImage = "url('../images/3.jpg')";
            }
            else if(this.comp==='Advice'){
                document.getElementById('objects-container').style.backgroundImage = "url('../images/22.jpeg')";
            }

        },
        created(){
            this.getObjects();

        },
        components:{
            'app-object':Object,
        }
    }
</script>

<style>
    #objects-container{
        border:4px solid #E1BE60;
        border-radius: 2px;

        background-position: center;
        background-size: cover;
        background-repeat: no-repeat;
    }
    #objects-content{
        font-size: 17px;
        background-color: white;
        -webkit-box-shadow: 0px 0px 8px 0px rgba(0,0,0,0.75);
        -moz-box-shadow: 0px 0px 8px 0px rgba(0,0,0,0.75);
        box-shadow: 0px 0px 8px 0px rgba(0,0,0,0.75);
    }
    #objectHead{
        background-color: #E1BE60;

    }
    .travelbtn{

        background-color: transparent;
        border:1px solid grey;
    }
    .travelbtn:hover{
        background-color: #ffd670;
    }
    .travelbtn:active{
        background-color: #ffd670;
    }


    .activeBtn{
        background-color: #ffd670;
        border:1px solid grey;
    }
    .activeBtn:active{
    }

</style>