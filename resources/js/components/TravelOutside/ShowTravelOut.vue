<template>
    <app-show v-bind="{comp,title,createBtn}"></app-show>
</template>

<script>
    import Show from '../templates/Show'
    export default {
        name: "ShowAdvice",
        data(){
            return {
                comp:'TravelOutside',
                title:'Екскурзии',
                createBtn:'ДОБАВИ НОВА ЕКСКУРЗИЯ-ЧУЖБИНА'
            }
        },
        components:{
            'app-show':Show,
        },
    }
</script>

<style scoped>

</style>