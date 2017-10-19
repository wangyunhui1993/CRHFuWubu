<template>
  <div id="app">

    <router-view class="router-view"></router-view>

  </div>
</template>

<script>

  export default {
    debug:true,
    name: 'app',
    data () {
      return {

      }
    },

    methods: {
    }
  }
</script>
<style >
  body {
    /*margin: 0px;*/
    /*padding: 0px;*/
    /*background: url(assets/bg1.jpg) center !important;
    background-size: cover;*/
    /*background-image: url("./assets/img/background.jpg");*/
    /*filter:"progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale')";*/
    /*-moz-background-size:100% 100%;*/
    /*background-size:100% 100%;*/
    /*background-attachment: fixed;*/
    font-family: Helvetica Neue, Helvetica, PingFang SC, Hiragino Sans GB, Microsoft YaHei, SimSun, sans-serif;
    /*font-size: 14px;*/
    -webkit-font-smoothing: antialiased;
  }

  #app {
    position: absolute;
    top: 0px;
    bottom: 0px;
    width: 100%;
  }

  .el-submenu [class^=fa] {
    vertical-align: baseline;
    margin-right: 10px;
  }

  .el-menu-item [class^=fa] {
    vertical-align: baseline;
    margin-right: 10px;
  }
</style>
