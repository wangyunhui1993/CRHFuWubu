<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml" >
  <div style="background-color: #324057;">
    <nav class="navbar-inverse header" >
      <div class="container-fluid" >
        <div class="navbar-header head-height" style="font-size: large; font-weight: bolder;color: whitesmoke" >
          动车服务部生产经营管理系统
        </div >
        <ul class="nav navbar-nav navbar-right head-height" style="margin-right: 5px;margin-top: 2px;" >
          <li style="font-size: 14px;color: whitesmoke" >{{current_time}}</li >
        </ul >
        <ul class="nav navbar-nav navbar-right head-height" >
          <li style="margin-top: 5px" ><a href="#"
                                          style="color: whitesmoke; font-weight: bold" >
            <div style="font-size: 20px;color: #3c3c3c;font-weight: bold" >
            <label style="font-size: 16px;color: #f4f4f4;font-style: italic;font-weight: normal" >
               欢迎您
            </label >  {{userinfo.name}}
            <label style="font-size: 16px;color: #f4f4f4;font-weight: normal" >[{{userinfo.department_name}}]</label >
            </div >

          </a ></li >
        </ul >

      </div >
      <div align="left" style="float: right;" >
        <ul class="nav navbar-nav navbar-right head-height" style="margin-right: 10px" >
          <button type="button" class="btn btn-link" v-on:click="logout" style="margin-bottom:8px;color: whitesmoke" >
            <span class="glyphicon glyphicon-log-out" ></span > 退出
          </button >
        </ul >
        <ul class="nav navbar-nav navbar-right head-height" >
            <!--<el-menu-item  @click="addWork">个人信息</el-menu-item>-->
          <button type="button" class="btn btn-link" v-on:click="onUserInfo"
                  style="margin-bottom:8px;color: whitesmoke" >个人信息</button >
        </ul >
      </div >
    </nav >

    <div class="nav navbar-default" style="background-color: #324057;height: 100%" >
      <ul class="nav navbar-nav" >
        <el-menu mode="horizontal"  :default-active="$route.path | filterParentPath" @select="handleSelect"
                 style="background-color: #324057;height: 100%" theme="dark">
			<template v-for="item in $router.options.routes" v-if="!item.hidden">
				<el-menu-item
						v-for="child in item.children"
						:index="child.path"
						v-show="!child.hidden && hasChildren(child.path) "
						style="font-size: 17px">
					{{child.meta}}
				</el-menu-item>
			</template>
        </el-menu >
      </ul >


    </div >

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
    <router-view ></router-view >
	  <el-dialog title="个人信息"
	             :modal="false"
	             v-model="dialogDetailVisible"
	  >
		  <div class="well well-lg" id="divApp" style="margin: 15px;" >
			  <div class="panel panel-primary" >
			        <div class="panel-heading" >
			            <div style="font-size: 20px;text-align: left" >
			                基本信息修改
			            </div >
			        </div >
			        <div class="table-responsive" style="text-align: center;margin:20px;" >
			            <form class="form-horizontal" role="form"
			                  style="margin-top: 30px; margin-right: 20px; font-size: 16px" >
			                <div class="form-group" style="text-align: center" >
				                <div class="col-sm-3" >
			                        <label class="control-label" >账号:</label >
				                </div >
			                    <div class="col-sm-8" >
			                        <input type="text" disabled="true" class="form-control"
			                               v-model.trim="modifyInfo.account"
			                               style="height: 36px;" />

			                    </div >
			                </div >
				            <div class="form-group" >
					             <div class="col-sm-3" >
			                        <label class="control-label" >姓名:</label >
					             </div >
			                    <div class="col-sm-8" >
			                        <input type="text" disabled="true" class="form-control"
			                               v-model.trim="modifyInfo.name"
			                               style="height: 36px;" />

			                    </div >
			                </div >
			                <div class="form-group" >
				                 <div class="col-sm-3" >
			                        <label class="control-label" >部门:</label >
				                 </div >
			                    <div class="col-sm-8" style="margin-top: 5px; float: left" >
			                        <input type="text" disabled="true" class="form-control"
			                               v-model.trim="modifyInfo.department_name"
			                               style="height: 36px;" />
			                    </div >
			                </div >
				            <div class="form-group" >
					             <div class="col-sm-3" >
			                        <label class="control-label" >职务:</label >
					             </div >
			                    <div class="col-sm-8" >
			                        <input type="text" class="form-control" disabled
			                               v-model.trim="modifyInfo.work_post"
			                               style="height: 36px;" />

			                    </div >
			                </div >
			                <div class="form-group" >
				                 <div class="col-sm-3" >
			                         <label class="control-label" >手机:</label >
				                 </div >
			                    <div class="col-sm-8" >
			                        <input type="text" class="form-control"
			                               v-model="modifyInfo.phone"
										   auto-complete="off"
			                               v-on:keyup="onInfoKeyUp"
			                               style="height: 36px;" />

			                    </div >
			                </div >
			                <div class="form-group" >
				                 <div class="col-sm-3" >
			                        <label class="control-label" >短号:</label >
				                 </div >
			                    <div class="col-sm-8" >
			                        <input type="text" class="form-control"
			                               v-model="modifyInfo.short_number"
										   auto-complete="off"
			                               v-on:keyup="onInfoKeyUp"
			                               style="height: 36px;" />

			                    </div >
			                </div >
				            <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
				                      :title="errorMsg"
				                      type="error"
				                      :closable="false"
				                      show-icon >
                            </el-alert >
			               <div slot="footer" class="dialog-footer" style="margin-bottom: 20px;margin-top: 20px" >
				                <el-button type="primary" @click="onModifyInfo" >确 定</el-button >
			               </div >
			            </form >
			        </div >

			    </div >

			  <div class="panel panel-primary" >
			        <div class="panel-heading" >
			            <div style="font-size: 20px;text-align: left" >
			                密码修改
			            </div >
			        </div >
			        <div class="table-responsive" style="text-align: center;margin:20px;" >
			              <form class="form-horizontal" role="form"
			                    style="margin-top: 30px; margin-right: 20px; font-size: 16px" >
			                <div class="form-group" >
				                 <div class="col-sm-3" >
			                        <label class="control-label" >账号:</label >
				                 </div >
			                    <div class="col-sm-8" >
			                        <input type="text" disabled="true" class="form-control"
			                               v-model.trim="submitData.account"
			                               style="height: 36px;" />

			                    </div >
			                </div >
				            <div class="form-group" >
					            <div class="col-sm-3" >
			                        <label class="control-label" >姓名:</label >
					            </div >
			                    <div class="col-sm-8" >
			                        <input type="text" disabled="true" class="form-control"
			                               v-model.trim="modifyInfo.name"
			                               style="height: 36px;" />

			                    </div >
			                </div >
			                <div class="form-group" >
				                <div class="col-sm-3" >
					                <label class="control-label" >原密码:</label >
				                </div >
			                    <div class="col-sm-8" >
			                        <input type="password" class="form-control" v-model="submitData.oldPwd"
			                               placeholder="原密码"
										   auto-complete="off"
			                               v-on:keyup="onKeyUp"
			                               style="height: 36px;float:right;" />
			                    </div >
			                </div >
			                <div class="form-group" >
				                <div class="col-sm-3" >
			                        <label class="control-label" >新密码:</label >
				                </div >
			                    <div class="col-sm-8" >
			                        <input type="password" class="form-control" v-model="submitData.newPwd"
			                               placeholder="新密码"
										   auto-complete="off"
			                               v-on:keyup="onKeyUp"
			                               style="height: 36px;float:right;" />
			                    </div >
			                </div >
			                <div class="form-group" >
				                <div class="col-sm-3" >
			                        <label class="control-label" >确认新密码:</label >
				                </div >
			                    <div class="col-sm-8" >
			                        <input type="password" class="form-control" v-model="submitData.confirmNewPwd"
			                               placeholder="确认新密码"
										   auto-complete="off"
			                               v-on:keyup="onKeyUp"
			                               style="height: 36px;float:right;" />
			                    </div >
			                </div >
				            <el-alert v-if="isErrorPwd" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
				                      :title="errorPwdMsg"
				                      type="error"
				                      :closable="false"
				                      show-icon >
                            </el-alert >
			               <div slot="footer" class="dialog-footer" style="margin-bottom: 20px;margin-top: 20px;" >
				                <el-button type="primary" @click="onModifyPwd" >确 定</el-button >
			               </div >
			            </form >
			        </div >
			    </div >
		  </div >
	  </el-dialog >
	  <div class="modal fade" id="modifyPwdDialog" role="dialog" >
				  <div class="modal-dialog" >
		            <!-- Modal content-->
					  <div class="modal-content" >
		                <div class="modal-header" style="text-align: left" >
		                    <h3 >提示</h3 >
		                </div >
		                <!--<div class="modal-body" style="font-size: 20px" >-->
		                    <!--密码修改成功，请重新登录!注销倒计时 {{currentSec}} 秒...-->
		                <!--</div >-->
						  <div class="modal-body" style="font-size: 20px" >
		                    密码修改成功，请重新登录!
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
			  currentSec: 3,
			  timerDestroyed: false,
			  fetchSubDepartmentsURL: HOME + "DepartmentInfo/fetchSubDepartments",
			  current_time: '',
			  activeIndex: "1",
			  userinfo: {}
			  ,
			  subDepartments: [],
			  isError: false,
			  errorMsg: '',
			  isErrorPwd: false,
			  errorPwdMsg: '',
			  editUrl: HOME + "User/modifyUserInfo",
			  submitData: {
				  account: '',
				  name: '',
				  oldPwd: '',
				  newPwd: "",
				  confirmNewPwd: '',
			  }
			  ,
			  modifyInfo: {
				  account: '',
				  name: '',
				  department_name: '',
				  work_post: "",
				  phone: '',
				  short_number: '',
			  }
			  ,
			  dialogDetailVisible: false,
		  }
	  },
	  methods: {
//		  reduceTime(){
//			  if (this.currentSec <= 0 && !this.timerDestroyed) {
//				  _this.onConfirmLogOut();
//				  window.clearInterval(this.reduceTime);
//				  this.timerDestroyed = true;
//			  }
//			  this.currentSec--;
//			  console.log("currentSec: " + this.currentSec)
//
//		  },
		  onUserInfo()
		  {
			  _this.dialogDetailVisible = true;
		  },

		  onModifyInfo()
		  {
			  this.verifyInfo();
			  if (!this.isError) {
				  $.ajax({
					  url: this.editUrl,
					  type: 'POST',
					  dataType: 'json',
					  data: {
						  id: _this.userinfo.id,
						  phone: _this.modifyInfo.phone,
						  short_number: _this.modifyInfo.short_number,
					  },
					  success: function (data) {
						  _this.isError = data.status == 0;
						  if (!_this.isError) {
							  _this.dialogDetailVisible = false;
							  showMessage(_this, '修改成功', 1);
						  }
						  else {
							  _this.errorMsg = '修改失败';
							  showMessage(_this, _this.errorMsg, 0);
						  }
					  },
					  error: function (info) {
						  showMessage(_this, '服务器访问出错', 0);
					  }
				  })
			  }
		  },

		  onModifyPwd()
		  {
			  this.verifyPwd();
			  if (!this.isErrorPwd) {
				  $.ajax({
					  url: this.editUrl,
					  type: 'POST',
					  dataType: 'json',
					  data: {
						  id: _this.userinfo.id,
						  password: _this.submitData.newPwd,
					  },
					  success: function (data) {
						  _this.isErrorPwd = data.status == 0;
						  if (!_this.isErrorPwd) {
							  _this.dialogDetailVisible = false;
							  //window.setInterval(_this.reduceTime, 1000)
							  $("#modifyPwdDialog").modal();
							  //showMessage(_this, '修改成功', 1);
						  }
						  else {
							  _this.errorPwdMsg = '修改失败';
							  showMessage(_this, _this.errorPwdMsg, 0);
						  }
					  },
					  error: function (info) {
						  showMessage(_this, '服务器访问出错', 0);
					  }
				  })
			  }
		  },

		  onKeyUp: function () {
			  this.verifyPwd();
		  },

		  verifyPwd: function () {
			  this.isErrorPwd = false;
			  if (isStringEmpty(this.submitData.newPwd)) {
				  this.isErrorPwd = true;
				  this.errorPwdMsg = '新密码不能为空';
			  } else if (this.submitData.newPwd != this.submitData.confirmNewPwd) {
				  this.isErrorPwd = true;
				  this.errorPwdMsg = '新密码和确认新密码不一致';
			  }

			  if (isStringEmpty(this.submitData.oldPwd)) {
				  this.isErrorPwd = true;
				  this.errorPwdMsg = '请输入正确的原密码';
			  }
		  },

		  verifyInfo: function () {
			  this.isError = false;
			  this.errorMsg = '';

			  if (this.modifyInfo.phone != '' && !regIsPhone(this.modifyInfo.phone)) {
				  this.isError = true;
				  this.errorMsg = '请输入正确的手机';
			  }
		  },

		  onInfoKeyUp: function () {
			  this.verifyInfo();
		  },

		  initUserInfoData()
		  {
			  _this.submitData.account = _this.userinfo.account;
			  _this.submitData.name = _this.userinfo.name;

			  _this.modifyInfo.account = _this.userinfo.account;
			  _this.modifyInfo.name = _this.userinfo.name;
			  _this.modifyInfo.department_name = _this.userinfo.department_name;
			  _this.modifyInfo.work_post = _this.userinfo.work_post;
			  _this.modifyInfo.phone = _this.userinfo.phone;
			  _this.modifyInfo.short_number = _this.userinfo.short_number;
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
			  _this.$router.push("/login");
		  },

		  handleSelect(key, keyPath) {
              _this.$router.push(key)
		  },
		  hasChildren(path) {
              //alert(getAuthArray())
			  let index = null;
			  if(path == "/home/task") {
                  index = 0;
			  } else if(path == "/home/statistics") {
                  index = 1;
			  } else if(path == "/home/basic_data") {
                  index = 2;
              }else if(path == "/home/system") {
                  index = 3;
              }
              return getAuthArray(index).length > 0;
		  }

	  },
	  computed: {},
	  filters: {
		  //根据子路径找到父路径
		  filterParentPath(childPath) {
			  let path = "/home";//default
			  for(let i=0; i < _this.$router.options.routes.length; i++) {
				  if(!_this.$router.options.routes[i].hidden && _this.$router.options.routes[i].children.length > 0) {
					for(let j=0; j< _this.$router.options.routes[i].children.length; j++) {
						if(childPath.indexOf(_this.$router.options.routes[i].children[j].path) != -1) {
							path = _this.$router.options.routes[i].children[j].path;
							break;
						}
					}
				  }
			  }
			  return path;
		  },
	  },
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
//                            console.log(data.info)
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

		  _this.initUserInfoData();
	  },
	  destroyed: function () {
		  window.clearInterval(this.reduceTime)
	  }
  }

</script >
<style >
  .header {
	  height: 60px;
	  line-height: 60px;
	  background: #1D8CE0;
	  color: #c0ccda;
  }
</style >
