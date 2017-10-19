<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml" >
  <div class="bg" >
    <nav class="navbar-inverse header" >
      <div class="container-fluid" >
        <div class="navbar-header head-height"
             style="font-size: large; font-weight: bolder;color: whitesmoke;margin-top: 18px" >
          动车服务部生产经营管理系统
        </div >
        <ul class="nav navbar-nav navbar-right head-height" style="margin-right: 5px;" >
          <li style="font-size: 14px;color: whitesmoke;margin-top: 22px;" >{{current_time}}</li >
        </ul >
        <ul class="nav navbar-nav navbar-right head-height" >
          <li style="margin-top: 5px" >
			  <a href="#" style="color: whitesmoke; font-weight: bold" >
           		<div style="font-size: 20px;color: #3c3c3c;font-weight: bold" >
					<label style="font-size: 16px;color: #f4f4f4;font-style: italic;font-weight: normal" >
					   欢迎您
					</label >  {{userinfo.name}}
					<label style="font-size: 16px;color: #f4f4f4;font-weight: normal" >[{{userinfo.department_name}}]</label >
           		</div >
			  </a >
		  </li >
        </ul >
      </div >
    </nav >
	  <div style="background-color: #324057" >
		  <ul class="nav navbar-nav" >
			  <el-menu theme="dark" :default-active="activeIndex" class="el-menu-demo" mode="horizontal"
			           @select="handleSelect" >
				  <el-menu-item index="1" style="font-size: 15px" >作业屏设置</el-menu-item >
				  <el-menu-item index="2" style="font-size: 15px" >欢迎屏设置</el-menu-item >
				  <el-submenu index="3" style="font-size: 15px" >
					  <template index="3" style="font-size: 15px" slot="title" >保洁设置</template >
					   <el-menu-item index="3-1" >保洁分配</el-menu-item >
					   <el-menu-item index="3-2" >保洁人员</el-menu-item >
					   <el-menu-item index="3-3" >保洁布局图</el-menu-item >
				  </el-submenu >
				   <el-submenu index="4" >
					   <template index="4" style="font-size: 15px" slot="title" >作业状态</template >
					   <el-menu-item index="4-1" >作业计划表</el-menu-item >
					   <el-menu-item index="4-2" >作业分布</el-menu-item >
					   <el-menu-item index="4-3" >作业立体图</el-menu-item >
				  </el-submenu >
				  <!--<el-menu-item index="5" style="font-size: 15px" >全屏预览</el-menu-item >-->

			  </el-menu >
		  </ul >
		  <div style="text-align: right; margin-right: 8px; height: 60px;" >
			  <!--<el-menu-item  @click="addWork">个人信息</el-menu-item>-->
			  <!--<button type="button" class="btn btn-link" v-on:click="onUserInfo"-->
			          <!--style="margin-bottom:8px;margin-top:13px; color: whitesmoke" >个人信息</button >-->
			  <button type="button" class="btn btn-link" v-on:click="logout"
			          style="margin-bottom:8px; margin-top:13px; color: whitesmoke; " >
				  <span class="glyphicon glyphicon-log-out" ></span > 退出
			  </button >
		  </div >
	  </div >

	<router-view ></router-view >
	<div class="modal fade" id="logOutConfirmMsg" role="dialog" >
        <div class="modal-dialog" >
            <!-- Modal content-->
            <div class="modal-content" >
                <div class="modal-header" style="text-align: left" >
                    <h3 >提示</h3 >
                </div >
                <div class="modal-body" style="font-size: 18px;font-family: FontAwesome" >
                    <!-- 加上<form>标签可以使得modal窗口在点击按钮都自动dismiss-->
                    确认要注销登录吗？
                    <button type="button" style="margin-top: 50px;font-size: 18px" class="btn btn-danger btn-block"
                            v-on:click="onConfirmLogOut" >确 定
                    </button >
                </div >
            </div >
        </div >
    </div >
  </div >
</template >

<script >
  import Vue from 'vue'
  var _this
  $(function () {
	  $('#modifyPwdDialog').on('hidden.bs.modal', function () {
		  _this.onConfirmLogOut();
	  })
  });
  export default {
	  name: "home",
	  components: {},
	  data () {
		  _this = this
		  return {
//			  currentSec: 3,
//			  timerDestroyed: false,
			  fetchSubDepartmentsURL: HOME + "DepartmentInfo/fetchSubDepartments",
			  fetchCSBasicSettingURL: HOME + "CsBasicSetting/getRecord",
			  current_time: '',
			  activeIndex: "1",
			  userinfo: {}
			  ,
			  subDepartments: [],
			  dialogDetailVisible: false,
		  }
	  },
	  methods: {
		  onUserInfo()
		  {
			  _this.dialogDetailVisible = true;
		  },
		  getCurrentDate: function () {
			  var cdata = new Date();
			  this.current_time = cdata.toLocaleTimeString("yyyy-MM-dd HH:mm:ss");
		  },

		  logout: function () {
			  $("#logOutConfirmMsg").modal();

		  },
		  onConfirmLogOut: function () {
			  sessionStorage.removeItem('user');
			  sessionStorage.removeItem('departments');
			  sessionStorage.removeItem('loop_time');
			  _this.$router.push("/login");
		  },

		  handleSelect(key, keyPath) {

			  var path = "";
			  switch (key) {
				  case "1":
					  path = "/home/task_setting";
					  break;
				  case "2":
					  path = "/home/welcome_setting";
					  break;
				  case "3-1":
					  path = "/home/clear_assign";
					  break;
				  case "3-2":
					  path = "/home/clear_staff";
					  break;
				  case "3-3":
					  path = "/home/clear_map";
					  break;
				  case "4-1":
					  path = "/home/task_work_layout";
					  break;
				  case "4-2":
					  path = "/home/clean_work_layout";
					  break;
				  case "4-3":
					  path = "/home/task_solid_layout";
					  break;
			  	case "5":
					  path = "/home/task_work_layout?auto=1";
					  break;
			  }
			  _this.activeIndex = key;
			  if (path != "") {
				  if (key.indexOf('4') != -1 || key.indexOf('5') != -1 || key.indexOf('3-1') != -1) {
					  if(!isIE()) {
                          requestFullScreen();
					  }
				  }
				  _this.$router.push(path);
			  }
		  },
		  fetchCSBasicSetting() {
			  $.ajax({
				  url: _this.fetchCSBasicSettingURL,
				  type: 'POST',
				  dataType: 'json',
				  data: {"department_no": _this.currentDepartmentStr},
				  success: function (data) {
					  _this.isError = data.status == 0;
					  if (!_this.isError) {
						  sessionStorage.setItem('loop_time', JSON.stringify(data.info.loop_time));
					  } else {
						  showMessage(_this, '获取基本设置失败！', 0);
					  }
				  },
				  error: function (info) {
					  showMessage(_this, '服务器访问出错！', 0);
				  }
			  })
		  },

	  },
	  computed: {
		  currentDepartmentStr(){
			  let $res = "";

			  if(this.userinfo.department_no == "001") {
				  $res = "";//返回全部
			  } else{
				  $res = this.userinfo.department_no;
			  }
			  return $res;
		  },
	  },
	  filters: {},
	  created: function () {

		  //获取子部门信息，并存session
		  $.ajax({
			  url: _this.fetchSubDepartmentsURL,
			  type: 'GET',
			  success: function (data) {
				  _this.isError = data.status == 0;
				  if (!_this.isError) {
					  //TODO:
					  _this.subDepartments = data.info;
					  sessionStorage.setItem('departments', JSON.stringify(data.info));
				  } else {
					  showMessage(_this, '获取服务部信息失败！', 0);
				  }
			  },
			  error: function (info) {
				  showMessage(_this, '服务器访问出错！', 0);
			  }
		  })

	  },
	  mounted: function () {
		  this.userinfo = JSON.parse(sessionStorage.getItem('user'));
		  setInterval(function getDate() {
			  var date = new Date();
			  _this.current_time = date.format("yyyy-MM-dd hh:mm:ss");
		  }, 1000);//定时器

		  this.fetchCSBasicSetting();
	  },
	  destroyed: function () {

	  }
  }

</script >
<style >
	.bg {
		position: absolute;
		top: 0px;
		bottom: 0px;
		width: 100%;
		background-color: #f1f2f7;
        overflow-y: auto;
	}

	.header {

		background: #1D8CE0;
		color: #c0ccda;
	}
</style >
