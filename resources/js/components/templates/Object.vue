<template>
    <div>
        <div  class="d-flex justify-content-between"><h4>
            <router-link class="text-dark" tag="a" :to="{path:pathObj}">{{obj.title}}</router-link></h4>
            <div v-if="isAdmin===1"><a  href="#" class="btn btn-warning mr-2" @click.prevent="edit">Редактирай</a>
                <a href="#" class="btn btn-danger" @click.prevent="deleteObj" >Изтрий</a></div></div>
        <p v-html="eventBody"></p>
        <div style="" :class="{'text-right':!manyWords,'d-flex justify-content-between':manyWords}">
            <router-link  tag="a" :to="{path:pathObj}" href="" class="btn btn-outline-dark" v-if="manyWords" @click.prevent="show">Прочети още...</router-link>
            <span class="text-secondary font-italic pl-3" style="">добавено {{obj.created_at}}</span>
        </div>
        <hr>
    </div>
</template>

<script>
    import md from 'marked';
    export default {
        props:['obj','comp','index'],
        data(){
          return {
              manyWords:false,
          }
        },
        computed:{
            eventBody(){
                let countWords=100;
                let allWords=this.obj.body.split(' ').length;
                let splitObj=this.obj.body.split(' ',countWords)

                let res=null;
                let spots=null;
                res=splitObj;
                if(allWords>countWords){
                    this.manyWords=true;
                    spots='...';
                }
                else{
                    this.manyWords=false;
                    spots='';
                }

                return md.parse(res.join(' ')+spots);
            },
            isAdmin(){
                return this.$store.getters.getIsAdmin;
            },
            pathObj(){
                if(this.comp==='Event'){
                    return '/events/post/'+this.obj.slug;
                }
                else if(this.comp==='Advice'){
                    return '/advices/post/'+this.obj.slug;
                }
                else if(this.comp==='TravelBulgaria'){
                    return '/travelbg/post/'+this.obj.slug;
                }
                else if(this.comp==='TravelOutside'){
                    return '/travelout/post/'+this.obj.slug;
                }

                /*
                else if(this.comp==='TravelBulgaria'){
                    return '/travels/post/'+this.obj.slug;
                }*/
            }

        },
        methods:{

            edit(){
                this.$store.dispatch('isEdited',true);
                //this.sendEvent();

                if(this.comp==='Event'){
                    this.$router.push({path:'/events/'+this.obj.slug});
                }
                else if(this.comp==='Advice'){
                    this.$router.push({path:'/advices/'+this.obj.slug});
                }
                else if(this.comp==='TravelBulgaria'){
                    this.$router.push({path:'/travelbg/'+this.obj.slug});
                }
                else if(this.comp==='TravelOutside'){
                    this.$router.push({path:'/travelout/'+this.obj.slug});
                }
            },
            deleteObj(){
                if(confirm('Сигурни ли сте че искате да се изтриете: '+this.obj.title+'?')){
                    if(this.comp==='Event'){
                        axios.delete('/api/events/'+this.obj.slug)
                            .then(res=>{this.$parent.deleteObject(this.index)}).catch(err=>console.log(err.response.data));
                    }
                    else if(this.comp==='Advice'){
                        axios.delete('/api/advices/'+this.obj.slug)
                            .then(res=>{this.$parent.deleteObject(this.index)}).catch(err=>console.log(err));
                    }
                    else if(this.comp==='TravelBulgaria' || this.comp==='TravelOutside'){
                        axios.delete('/api/travels/'+this.obj.slug)
                            .then(res=>{this.$parent.deleteObject(this.index)}).catch(err=>console.log(err));
                    }
                }

            },
            show(){
                this.$router.push({path:'/events/post/'+this.obj.slug,})
            }

        },
        mounted(){
            this.$store.dispatch('object',this.obj);
        },
        created(){

        }
    }
</script>

<style scoped>

</style>