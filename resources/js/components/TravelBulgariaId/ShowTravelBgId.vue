<template>
    <app-show v-bind="{comp,title,createBtn}"></app-show>
</template>

<script>
    import Show from '../templates/Show'
    export default {
        data(){
            return {
                comp:'TravelBulgariaId',
                title:'Екскурзии',
                createBtn:'ДОБАВИ НОВА ЕКСКУРЗИЯ-БЪЛГАРИЯ'
            }
        },
        components:{
            'app-show':Show,
        },
    }
</script>

<style scoped>

</style>