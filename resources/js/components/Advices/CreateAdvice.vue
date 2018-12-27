<template>

<app-create v-bind="{add,comp}"></app-create>

</template>

<script>

    import Create from '../templates/Create.vue'
    export default {
        name: "CreateEvent",
        data(){
            return {
              add:'Добави нов съвет',
                comp:'Advice',
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