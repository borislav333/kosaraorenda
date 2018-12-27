<template>
<div>
    <app-carousel></app-carousel>

    <app-client-carousel></app-client-carousel>
    <app-documents></app-documents>


</div>

</template>

<script>
    import AppCarousel from './AppCarousel.vue'
    import AppClientCarousel from './AppClientCarousel.vue'
    import AppDocuments from './AppDocuments.vue'

    export default {
        name: "AppHome",
        components:{
            'app-carousel':AppCarousel,
            'app-client-carousel':AppClientCarousel,
            'app-documents':AppDocuments,
        },
        created(){
            /*this.$nextTick(function() {
                window.addEventListener('resize',function () {
                    console.log('resize');
                });
            });*/
        }
    }
</script>

<style scoped>
    #carousel{
        height: 500px;
    }
</style>