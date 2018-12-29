<template>
    <div>
        <div class="container text-center col-12 col-md-10 col-lg-9 mt-3" style="" id="container" ref="container">
            <h3 class="pt-2 pb-2">Нашите партньори</h3>
            <div class="m-auto d-block " style="" ref="innerContainer"
                 id="inner-Container" >
                <div class="d-inline-flex" style="" id="img-div" ref="imgdiv"
                     :style="{transform:'translateX('+pixels+'px)',width:elements*200+'px'}">
                    <a href="https://www.tez-tour.com" target="_blank"><img src="../images/partners/0.png" alt="" ref="img1"></a>
                    <a href="https://www.bohemia.bg/" target="_blank"><img src="../images/partners/1.png" alt="" ref="img2"></a>
                    <a href="https://rual-travel.com/" target="_blank"><img src="../images/partners/2.png" alt="" ref="img3"></a>
                    <a href="https://premiotravel.com/bg/" target="_blank"><img src="../images/partners/3.png" alt="" ref="img4"></a>
                    <a href="http://mondel-travel.com/" target="_blank"><img src="../images/partners/4.png" alt="" ref="img5"></a><!--
                    <a href="https://www.tez-tour.com" target="_blank"><img src="../images/partners/0.png" alt="" ref="img6"></a>
                    <a href="https://www.bohemia.bg/" target="_blank"><img src="../images/partners/1.png" alt="" ref="img7"></a>
                    <a href="https://rual-travel.com/" target="_blank"><img src="../images/partners/2.png" alt="" ref="img8"></a>
                    <a href="https://premiotravel.com/bg/" target="_blank"><img src="../images/partners/3.png" alt="" ref="img9"></a>
                    <a href="http://mondel-travel.com/" target="_blank"><img src="../images/partners/4.png" alt="" ref="img10"></a>-->


                </div>

            </div>

        </div>
    </div>

</template>

<script>
    export default {
        name: "AppLogoCarousel",
        data(){
            return {
                images:[{src:'../images/partners/0.png'},{src:'../images/partners/1.png'},{},{},{}],
                pixels:0,
                currentEl:null,
                width:0,
                finish:false,
            }
        },
        computed:{

        },
        methods:{
            elements(){
                return this.$refs.imgdiv.children.length;
            },
            perPage(){
                this.$refs.innerContainer.style.width=parseInt(this.$refs.container.clientWidth/200)*200+'px'
                return parseInt(this.$refs.container.clientWidth/200);

            },
            diff(){
                return this.elements()-this.perPage()-1;
            },
            todo(){
                let diff=this.diff();
                if(this.finish===false){
                    if(-this.pixels<=diff*200){
                        this.pixels-=200;

                    }
                    else{
                        this.finish=true;
                    }
                }
                if(this.finish===true){
                    if(this.pixels<0){
                        this.pixels+=200;

                    }
                    else{
                        this.finish=false;
                    }
                }
            },
            to(){
                this.perPage();
                let diff=this.diff();
                let a=setInterval(this.todo,4000)

                if(-this.pixels>=diff*200){
                    clearInterval(a)
                }
            },

        },
        mounted(){
            this.to();

        }
    }
</script>

<style scoped>
    #container{
        overflow: hidden;
    }
    #inner-Container{
        overflow: hidden;
    }
    #img-div{
        transform: translateX(0);
        transition: transform 2s;
        overflow: hidden;
        height: 50px;
    }
    img{
        height:50px;
        width: 200px;

    }

</style>