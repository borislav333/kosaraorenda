<template>
    <div>
        <div class="container mt-4 col-12 col-md-11 col-lg-10 p-3" id="objects-container" >
            <div class="col-11 col-lg-8 m-auto pb-1" id="objects-content" >
                <div  class="text-center" id="objectHead"><h2 class="mt-auto mt-5">{{object.title}}</h2></div>
                <p v-html="object.body">

                </p>
                <div class="text-right"><span class="text-secondary font-italic" >добавено {{object.created_at}}</span></div>
            </div>

        </div>

    </div>
</template>

<script>
    export default {
        name: "ShowPost",
        props:['comp'],
        data(){
          return{
              object:'',
          }
        },
        computed:{
        },
        mounted(){

        },
        created(){
            let slug=this.$route.params.show;
            if(this.comp==='Event'){
                axios.get('/api/events/'+slug).then(res=>this.object=res.data.data).catch(err=>console.log(err));
            }
            else if(this.comp==='Advice'){
                axios.get('/api/advices/'+slug).then(res=>{this.object=res.data.data}).catch(err=>console.log(err.response.data));
            }
            else if(this.comp==='TravelBulgaria' || this.comp==='TravelOutside' ){
                axios.get('/api/travels/'+slug).then(res=>{this.object=res.data.data}).catch(err=>console.log(err));
            }
            else if(this.comp==='TravelBulgaria' || this.comp==='TravelOutside' ){
                axios.get('/api/travels/'+slug).then(res=>{this.object=res.data.data}).catch(err=>console.log(err));
            }

        }
    }
</script>

<style scoped>
    #objects-container{
        border:4px solid #E1BE60;
        border-radius: 2px;
        background-image:url("../../images/3.jpg");
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
</style>