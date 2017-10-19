<template>
    <div class="bg_work_layout">
        <el-button class="btn_style" type="primary" @click="toDisPlay">开始全屏显示</el-button>
    </div>
</template>
<script>
    import Vue from 'vue'
    var _this;
    export default {
        name: "preview",
        components: {},
        data () {
            _this = this;
            return {

            }
        },
        methods:{
            toDisPlay() {
                _this.$router.push({path:"/home/task_work_layout?auto=1"});
            }
        }

    }

</script>
<style lang="scss" scoped>
    .bg_work_layout {
        position: absolute;
        background-color: white;
        top: 0px;
        bottom: 0px;
        width: 100%;
        -moz-background-size: 100% 100%;
        background-size: 100% 100%;
        background-attachment: fixed;
        -webkit-font-smoothing: antialiased;
    }
    .btn_style {
        position: absolute;
        top: 45%;
        font-weight: bold;
        transform: translateY(-45%);
        left: 50%;
        transform: translateX(-50%);
        font-size: 50px;
    }
</style>