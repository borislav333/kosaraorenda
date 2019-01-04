<template>
    <show-post :comp="comp"></show-post>
</template>

<script>
    import ShowPost from '../templates/ShowPost.vue'
    export default {
        data(){
          return{
              comp:'TravelOutside'
          }
        },
        components:{
          'show-post':ShowPost,
        },
    }
</script>

<style scoped>

</style>