<template>

<app-create v-bind="{add,comp}"></app-create>

</template>

<script>

    import Create from '../templates/Create.vue'
    export default {
        data(){
            return {
              add:'Добави нова екскурзия - Чужбина',
                comp:'TravelOutside',
            }
        },
        methods:{

        },
        components: {
            'app-create':Create,
        },
        created(){

        }
    }
</script>

<style scoped>


</style>