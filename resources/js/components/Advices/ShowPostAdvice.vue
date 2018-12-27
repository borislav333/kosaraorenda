<template>
    <show-post :comp="comp"></show-post>
</template>

<script>
    import ShowPost from '../templates/ShowPost.vue'
    export default {
        name: "ShowPostAdvice",
        data(){
          return{
              comp:'Advice'
          }
        },
        components:{
          'show-post':ShowPost,
        },
    }
</script>

<style scoped>

</style>