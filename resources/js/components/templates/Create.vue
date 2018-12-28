<template>
    <div>
        <div class="container mt-4 col-12 col-md-11 col-lg-10 p-3" id="objects-container" style="">
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
                    user_id:6,
                    slug:'',
                },
                editMode:false,
            }
        },
        methods:{
            create(){
                if(this.comp==='Event'){
                    axios.post('/api/events/create',this.form).then(res=>this.$router.push('/events')).catch(err=>console.log(err.response.data));
                }
                else if(this.comp==='Advice'){
                    axios.post('/api/advices/create',this.form).then(res=>this.$router.push('/advices')).catch(err=>console.log(err.response.data));
                }
                else if(this.comp==='TravelBulgaria'){
                    this.form.country='bg';
                    axios.post('/api/travels/create',this.form).then(res=>this.$router.push('/travelbg')).catch(err=>console.log(err.response.data));
                }
                else if(this.comp==='TravelOutside'){
                    this.form.country='out';
                    axios.post('/api/travels/create',this.form).then(res=>this.$router.push('/travelout')).catch(err=>console.log(err.response.data));
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