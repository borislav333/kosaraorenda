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
                    <form action="">
                    <span>Избререте месец и година: </span>
                        <form action="" method="get">
                            <select name="month" id="selector-month" >
                                <option value="1">Януари</option>
                                <option value="2">Февруари</option>
                                <option value="3">Март</option>
                                <option value="4">Април</option>
                                <option value="5">Май</option>
                                <option value="6">Юни</option>
                                <option value="7">Юли</option>
                                <option value="8">Август</option>
                                <option value="9">Септември</option>
                                <option value="10">Октомври</option>
                                <option value="11">Ноември</option>
                                <option value="12">Декември</option>


                            </select>
                            <input type="number" min="2019" value="2019" name="year" id="selector-year" style="max-height: 27px;">
                            <input type="submit" @click.prevent="onchange()" class="btn btn-dark" value="Търси" >
                        </form>


                    </form>
                </div>


                <div>
                    <app-object v-for="(obj,index) in objects.data" :key="index" v-bind="{obj,comp,index}"></app-object>
                   <div class="d-flex justify-content-center"><pagination :data="objects" @pagination-change-page="getObjects"></pagination></div>
                    <div v-if="objects.data<1">
                        Няма октрити резултати.
                    </div>
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
              objects2:{},
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
            onchange(){
               let month=document.getElementById('selector-month').value;
               let year=parseInt(document.getElementById('selector-year').value);
               console.log(year);
                this.$router.push('/travelbg/date/'+month+'/'+year);
            },
           getObjects(page=1){
               if(this.comp==='Event'){
                   axios.get(`/api/events?page=`+page)
                       .then(res=>{
                           this.objects=res.data

                       }).catch(err=>console.log(err.response.data));
               }
               else if(this.comp==='Advice'){
                   axios.get(`/api/advices?page=`+page)
                       .then(res=>{
                           this.objects=res.data
                       }).catch(err=>console.log(err.response.data));
               }
               else if(this.comp==='TravelBulgaria'){
                   axios.get(`/api/travels/?page=`+page)
                       .then(res=>{
                        console.log(res.data)
                           this.objects2=JSON.parse(JSON.stringify(res.data));
                           this.objects=res.data

                       }).catch(err=>console.log(err.response.data));
               }
               else if(this.comp==='TravelBulgariaId'){
                   let url=window.location.pathname;
                   console.log(url)
                   axios.get(`/api${url}?page=`+page)
                       .then(res=>{
                           console.log(res.data)
                           this.objects2=JSON.parse(JSON.stringify(res.data));
                           this.objects=res.data

                       }).catch(err=>console.log(err.response.data));
               }
               else if(this.comp==='TravelOutside'){
                   axios.get(`/api/travelout/?page=`+page)
                       .then(res=>{
                           this.objects=res.data

                       }).catch(err=>console.log(err.response.data));
               }

           },
            deleteObject(index){
                this.objects.data.splice(index,1);
            },
            setObjectContainerImage(file){
                document.getElementById('objects-container').style.backgroundImage = `url('../images/${file}')`;
            }
        },
        mounted(){
            if(this.comp==='Event'){
                this.setObjectContainerImage('3.jpg');
            }
            else if(this.comp==='Advice'){
                this.setObjectContainerImage('22.jpeg');

            }
            else if(this.comp==='TravelBulgaria'){
                this.setObjectContainerImage('bg2.jpg');
            }
            else if(this.comp==='TravelOutside'){
                this.setObjectContainerImage('bul.jpg');
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