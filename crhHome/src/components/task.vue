<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml" >
  <div>
   <div class="main">
        <el-menu :default-active="$route.path" theme="dark" @select="handleSelect" >
          <template v-for="root in $router.options.routes" v-if="!root.hidden" >
            <template v-for="sub in root.children" v-if="!sub.hidden" >
              <el-menu-item v-for="item in sub.children" :index="item.path"
                            v-if="sub.path == '/home/task' && isAuthed(item.path)" >{{item.meta}}</el-menu-item >
            </template >
          </template >
        </el-menu >
    </div >

   <div  class="content-container" >
      <router-view></router-view >
   </div >
  </div >

</template >

<script >
  import Vue from 'vue'
  var _this
  export default {
	  name: "work",
	  components: {},
	  data () {
		  _this = this
		  return {}
	  },
	  methods: {
		  handleSelect(key, keyPath) {
			  _this.$router.push(key)
		  },

		  isAuthed(path) {
			  //Task
			  let auths = getAuthArray(0);
			  let found = false;
			  for (let i = 0; i < auths.length; i++) {
				  if (auths[i].indexOf(path) != -1) {
					  found = true;
					  break;
				  }
			  }
			  return found;
		  }

	  },
	  computed: {},
	  created: function () {
		  if (window.location.hash != null) {
			  let hit = false;
			  for (let i = 0; i < _this.$router.options.routes.length; i++) {
				  if (!_this.$router.options.routes[i].hidden && _this.$router.options.routes[i].children.length > 0) {
					  for (let j = 0; j < _this.$router.options.routes[i].children.length; j++) {
						  if (_this.$router.options.routes[i].children[j].path == "/home/task") {
							  for (let k = 0; k < _this.$router.options.routes[i].children[j].children.length; k++) {
								  if (window.location.hash.indexOf(_this.$router.options.routes[i].children[j].children[k].path) != -1) {
									  hit = true;
									  break;
								  }
							  }
						  }
					  }
				  }
			  }
			  if (!hit) {
				  //TODO:跳转至第一个有权限的URL

				  let firstPath = JSON.parse(getAuthArray(0))[0];
//          alert(firstPath)
				  _this.$router.push(firstPath);
			  }
		  }
	  },
	  mounted: function () {

	  },
  }

</script >
<style >

  .main {
	  background: #324057;
	  position: absolute;
	  top: 120px;
	  width: 160px;
	  bottom: 0px;
  }

  .content-container {
	  background-color: #f1f2f7;
	  border-width: 2px;
	  position: absolute;
	  right: 0px;
	  top: 120px;
	  bottom: 0px;
	  left: 160px;
	  overflow-y: scroll;
	  /*padding: 20px;*/
  }
</style >
