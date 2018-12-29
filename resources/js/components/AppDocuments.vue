<template>
    <div class="container text-center mt-2">
        <h2 class="">Документи</h2>
        <div class="d-flex justify-content-center">
            <div class="d-inline-flex mr-3">
                <div class="position-absolute ml-auto text-center bg-dark text-white p-2 mt-5 absolute-div"
                     ref="absoluteDiv"  v-show="hover" @mouseover="hover=true" @mouseleave="hover = false">
                    <a href="../images/document.jpg" download="document.jpg" >Изтегли</a></div>
                <img src="../images/document.jpg" ref="imgDoc" height="200" width="150" @mouseover="hover=true" @mouseleave="hover = false">


            </div>

            <div class="d-inline-flex ml-3">
                <div class="position-absolute ml-auto text-center bg-dark text-white p-2 mt-5 absolute-div"
                     ref="absoluteDiv2"  v-show="hover2" @mouseover="hover2=true" @mouseleave="hover2 = false">
                    <a href="../images/document1.jpg" download="document1.jpg" >Изтегли</a></div>
                <img src="../images/document1.jpg" ref="imgDoc2" height="200" width="150" @mouseover="hover2=true" @mouseleave="hover2 = false">


            </div>
        </div>

    </div>

</template>

<script>
    export default {
        name: "AppDocuments",
        data(){
            return {
                hover:false,
                hover2:false,
            }
        },
        mounted(){
            this.$refs.absoluteDiv.style.width=this.$refs.imgDoc.clientWidth+1+'px';
            this.$refs.absoluteDiv2.style.width=this.$refs.imgDoc2.clientWidth+1+'px';

        },
        created(){

        }
    }
</script>

<style scoped>
.img-responsive{
    max-height: 800px;
}
    .absolute-div{
        opacity: 0.9;

    }
    .absolute-div>a{
        color:white;
    }
    img{
        border:1px solid grey;
        border-radius:5px;
    }
</style>