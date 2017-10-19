<template>
    <div class="textStyle">
            <div>您没有权限访问，请联系管理员！ <strong style="font-size: 35px">{{backTime}}</strong> 秒</div>

    </div>
</template>
<script>
    import Vue from 'vue'
    let _this
    export default {
        name: "no_permission",
        components: {},
        data () {
            _this = this
            return {
                backTime: 1,
                timerDestroyed: false
            }
        },
        methods: {
            reduceTime(){
                if(this.backTime > 0) {
                    this.backTime--
                } else {
                    if(!this.timerDestroyed) {
                        _this.$router.go(-1)
                        window.clearInterval(this.reduceTime)
                        this.timerDestroyed = true
                    }
                }
            }
        },

        mounted: function () {
            window.setInterval(this.reduceTime, 1000)
        },

        destroyed: function () {
//            console.log("helloworld!")
            window.clearInterval(this.reduceTime)
        }

    }


</script>
<style lang="scss" scoped>
    .textStyle {
        height: 100%;
        width: 100%;
        padding-top: 50px;
        padding-left: 50px;
        background-color: #F9FAFC;
        font-size: 25px;
    }
</style>