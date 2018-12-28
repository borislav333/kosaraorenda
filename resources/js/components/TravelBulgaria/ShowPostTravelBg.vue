<template>
    <show-post :comp="comp"></show-post>
</template>

<script>
    import ShowPost from '../templates/ShowPost.vue'
    export default {
        name:'ShowPostTravelBg',
        data(){
          return{
              comp:'TravelBulgaria'
          }
        },
        components:{
          'show-post':ShowPost,
        },
    }
</script>

<style scoped>

</style>