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
                                <div v-if="comp===('TravelBulgaria' || 'TravelOutside' || 'TravelBulgariaId')" class="mt-1">
                                    <select name="month" id="selector-month" v-model="object.month">
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
                                    <input type="number" min="2019" value="2019" name="year" id="selector-year" style="max-height: 27px;"
                                           v-model="object.year">
                                </div>
                            </div>
                            <div class="form-group text-center">
                                <label >Съдържание: </label>

                                <editor api-key="xios5r7jgotv7ss0ue25qjw0cv5samj9e9cq4hjiz565qpt4"
                                        :init="{plugins: 'print preview fullpage searchreplace autolink directionality visualblocks visualchars fullscreen image link media template codesample table charmap hr pagebreak nonbreaking anchor toc insertdatetime advlist lists textcolor wordcount imagetools contextmenu colorpicker textpattern help',
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

            updateIt(model,path=null){
                if(path===null){
                    path=model;
                }

                axios({
                    method:'patch',
                    url:`/api/${model}/`+this.object.slug,
                    data:{title:this.object.title,body:this.object.body,user_id:this.object.user_id,month:this.object.month,year:this.object.year},
                }).then(res=>{
                    this.$router.push(`/${path}`)
                }).catch(err=>console.log(err));
            },
            update(){
                if(this.comp==='Event'){
                    this.updateIt('events');

                }
                else if(this.comp==='Advice'){
                    this.updateIt('advices');
                }
                else if(this.comp==='TravelBulgaria'){
                    this.updateIt('travels','travelbg');
                }
                else if(this.comp==='TravelBulgariaId'){
                    this.updateIt('travels','travelbg');
                }
                else if(this.comp==='TravelOutside'){
                    this.updateIt('travels','travelout');
                }


            },
            editIt(model){
                let slug=this.$route.params.show;
                axios.get(`/api/${model}/${slug}`).then(res=>{
                    this.object=res.data.data
                    console.log(res.data.data)
                }).catch(err=>console.log(err.response.data));
            },

        },


        created(){

            if(this.comp==='Event'){
               this.editIt('events');
            }
            else if(this.comp==='Advice'){
                this.editIt('advices');
            }
            else if(this.comp==='TravelBulgaria' || this.comp==='TravelOutside' || this.comp==='TravelBulgariaId'){
                this.editIt('travels');
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