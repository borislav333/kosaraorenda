<template>
    <div>

        <div class="container mt-4 col-12 col-md-11 col-lg-10 p-3" id="objects-container" style="">
            <div v-if="errors">
                <div class="alert alert-danger" role="alert" v-for="(val,index) in errors">
                    {{val}}
                </div>
            </div>

            <div class="col-11 col-lg-8 m-auto" id="objects-content" style="">
                <div style="" class="text-center bg-primary text-white"><h3 class="mt-auto">{{add}}</h3></div>

                <div class="border">
                    <form method="post" @submit.prevent="create" class="">
                        <div class="form-group text-center">
                            <label>Заглавие: </label>
                            <input type="text" name="title" class="form-control" v-model="form.title">
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
                                    v-model="form.body"></editor>
                        </div>
                        <a href="" class="btn btn-primary form-control" @click.prevent="create">Добави</a>
                    </form>

                </div>
            </div>

        </div>

    </div>
</template>

<script>
    import Editor from '@tinymce/tinymce-vue';
    export default {
        name: "CreateEvent",
        props:['add','comp'],
        data(){
            return {
                form:{
                    title:'',
                    body:'',
                    user_id:this.$store.getters.getId,
                    slug:'',
                },
                editMode:false,
                errors:null,
            }
        },
        computed:{
            isAdmin(){
                return this.$store.getters.getIsAdmin;
            },

        },
        methods:{
            checkError(val){
                this.errors=val;
                console.log(val)
            },
            createRequest(model,path=null){
                if(path===null){
                    path=model;
                }
                console.log(path);
                axios.post(`/api/${model}/create`,this.form).then(res=>{
                    this.errors=null;
                    this.$router.push(`/${path}`);
                }).catch(err=>{
                    console.log(err);
                    if(err.response.data.errors){
                        this.checkError(err.response.data.errors);
                        scroll(0,0)
                    }
                });
            },
            create(){

                if(this.isAdmin){
                    if(this.comp==='Event'){
                        this.createRequest('events');
                    }
                    else if(this.comp==='Advice'){
                        this.createRequest('advices');
                    }
                    else if(this.comp==='TravelBulgaria'){
                        this.form.country='bg';
                        this.createRequest('travels','travelbg');
                    }
                    else if(this.comp==='TravelOutside'){
                        this.form.country='out';
                        this.createRequest('travels','travelout');
                    }
                }


            },
        },
        components: {
            'editor': Editor // <- Important part
        },
        created(){

        }
    }
</script>

<style scoped>
    @import '../../../../node_modules/simplemde/dist/simplemde.min.css';
</style>