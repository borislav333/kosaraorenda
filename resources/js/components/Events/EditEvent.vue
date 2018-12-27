<template>
    <app-edit :comp="comp"></app-edit>
</template>

<script>
    import Edit from '../templates/Edit.vue'
    export default {
        name: "ShowEvent",
        data(){
            return {
                object:'',
                isEdited:this.$store.getters.getIsEdited,
                isAdmin:this.$store.getters.getIsAdmin,
                comp:'Event',
            }
        },
        components:{
            'app-edit':Edit,
        }

    }
</script>

<style scoped>

</style>