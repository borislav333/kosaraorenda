<template>
    <app-show v-bind="{comp,title,createBtn}"> </app-show>
</template>

<script>
    import Show from '../templates/Show'
    export default {
        name: "ShowEvent",
        data(){
            return {
                comp:'Event',
                title:'Събития',
                createBtn:'ДОБАВИ НОВО СЪБИТИЕ',
            }
        },
        components:{
            'app-show':Show,
        },
    }
</script>

<style scoped>

</style>