<template>
    <div>
        <div class="container mt-4 col-12 col-md-11 col-lg-10 p-3" id="objects-container" style="">
            <div class="col-11 col-lg-8 m-auto" id="objects-content" style="">
                <div style="" class="text-center" id="objectHead"></div>
                <div class="text-center">
                    <div v-if="!isEdited">
                        <h2 class="">{{object.title}}</h2>
                        <p v-html="object.body">
                        </p>
                    </div>
                    <div v-else="!isEdited">

                        <form method="post" @submit.prevent="update" class="">
                            <div class="form-group text-center">
                                <label >Заглавие: </label>
                                <input type="text" name="title" class="form-control" v-model="object.title">
                            </div>
                            <div class="form-group text-center">
                                <label >Съдържание: </label>

                                <editor api-key="xios5r7jgotv7ss0ue25qjw0cv5samj9e9cq4hjiz565qpt4"
                                        :init="{plugins: 'print preview fullpage powerpaste searchreplace autolink directionality advcode visualblocks visualchars fullscreen image link media template codesample table charmap hr pagebreak nonbreaking anchor toc insertdatetime advlist lists textcolor wordcount tinymcespellchecker a11ychecker imagetools mediaembed  linkchecker contextmenu colorpicker textpattern help',
                                    toolbar:'formatselect | bold italic strikethrough forecolor backcolor | link | alignleft aligncenter alignright alignjustify  | numlist bullist outdent indent  | removeformat',
                                    height:400,image_advtab: true,
  templates: [
    { title: 'Test template 1', content: 'Test 1' },
    { title: 'Test template 2', content: 'Test 2' }
  ],
  content_css: [
    '//fonts.googleapis.com/css?family=Lato:300,300i,400,400i',
    '//www.tinymce.com/css/codepen.min.css'
  ]}"

                                        v-model="object.body"></editor>
                            </div>
                            <div ><a href="" class="btn btn-warning form-control" @click.prevent="update">Редактирай</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>

    </div>
</template>

<script>
    import Editor from '@tinymce/tinymce-vue';
    export default {
        props:['comp'],
        data(){
            return {
                object:'',
                isEdited:this.$store.getters.getIsEdited,
                isAdmin:this.$store.getters.getIsAdmin,
            }
        },

        methods:{

            update(){
                if(this.comp==='Event'){

                    axios({
                        method:'patch',
                        url:'/api/events/'+this.object.slug,
                        data:{title:this.object.title,body:this.object.body,user_id:this.object.user_id},
                    }).then(res=>{this.$router.push('/events')}).catch(err=>console.log(err.response.data.error));
                }
                else if(this.comp==='Advice'){
                    axios({
                        method:'patch',
                        url:'/api/advices/'+this.object.slug,
                        data:{title:this.object.title,body:this.object.body,user_id:this.object.user_id},
                        headers: {'Authorization': 'Bearer ' + localStorage.getItem('token')},
                    }).then(res=>{this.$router.push('/advices')}).catch(err=>console.log(err.response.data.error));
                }
                else if(this.comp==='TravelBulgaria'){
                    axios({
                        method:'patch',
                        url:'/api/travels/'+this.object.slug,
                        data:{title:this.object.title,body:this.object.body,user_id:this.object.user_id,country:'bg'},
                        headers: {'Authorization': 'Bearer ' + localStorage.getItem('token')},
                    }).then(res=>{this.$router.push('/travelbg')}).catch(err=>console.log(err.response.data.error));
                }
                else if(this.comp==='TravelOutside'){
                    axios({
                        method:'patch',
                        url:'/api/travels/'+this.object.slug,
                        data:{title:this.object.title,body:this.object.body,user_id:this.object.user_id,country:'out'},
                        headers: {'Authorization': 'Bearer ' + localStorage.getItem('token')},
                    }).then(res=>{this.$router.push('/travelout')}).catch(err=>console.log(err.response.data.error));
                }

                /* axios.patch('/api/events/'+this.event.slug,{title:this.event.title,body:this.event.body,user_id:this.event.user_id})
                     .then(res=>{this.$router.push('/events')}).catch(err=>console.log(err.response.data.error));*/

            },

        },
        updated(){


        },
        created(){
            let slug=this.$route.params.show;
            if(this.comp==='Event'){
                axios.get('/api/events/'+slug).then(res=>this.object=res.data.data).catch(err=>console.log(err));
            }
            else if(this.comp==='Advice'){
                axios.get('/api/advices/'+slug).then(res=>{this.object=res.data.data}).catch(err=>console.log(err.response.data));
            }
            else if(this.comp==='TravelBulgaria'){
                axios.get('/api/travels/'+slug).then(res=>{this.object=res.data.data}).catch(err=>console.log(err.response.data));
            }
            else if(this.comp==='TravelOutside'){
                axios.get('/api/travels/'+slug).then(res=>{this.object=res.data.data}).catch(err=>console.log(err.response.data));
            }
        },
        components: {
            'editor': Editor // <- Important part
        },

    }
</script>

<style scoped>
    @import '../../../../node_modules/simplemde/dist/simplemde.min.css';
</style>