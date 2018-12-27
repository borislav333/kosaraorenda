<template>
    <show-post :comp="comp"></show-post>
</template>

<script>
    import ShowPost from '../templates/ShowPost.vue'
    export default {
        name: "ShowPostEvent",
        data(){
          return{
              comp:'Event'
          }
        },
        components:{
          'show-post':ShowPost,
        },
    }
</script>

<style scoped>

</style>