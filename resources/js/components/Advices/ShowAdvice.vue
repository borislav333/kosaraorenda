<template>
    <app-show v-bind="{comp,title,createBtn}"></app-show>
</template>

<script>
    import Show from '../templates/Show'
    export default {
        name: "ShowAdvice",
        data(){
            return {
                comp:'Advice',
                title:'Полезни съвети',
                createBtn:'ДОБАВИ НОВ СЪВЕТ'
            }
        },
        components:{
            'app-show':Show,
        },
    }
</script>

<style scoped>

</style>