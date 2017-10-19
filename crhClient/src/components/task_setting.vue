<template>
  <div>
    <div class="panel panel-primary" style="margin: 20px" >
      <div class="panel-heading" >
        <h4 class="panel-title" >颜色设置</h4 >
      </div >
      <div class="panel-body" >
        <el-form>
          <el-col :span="24">
            <el-col :span="5">
              <el-form-item label="背景颜色：" :label-width="formLabelWidth" >
              </el-form-item>
              <div class="block" style="margin-top: -60px;margin-left:60px" >
                <el-color-picker v-model="submitData.bg_color"></el-color-picker >
              </div >
            </el-col>
            <el-col :span="5">
              <el-form-item label="表头颜色：" :label-width="formLabelWidth" >
              </el-form-item>
              <div class="block" style="margin-top: -60px;margin-left:60px; " >
                <el-color-picker v-model="submitData.header_color" ></el-color-picker >
              </div >
            </el-col>
            <el-col :span="5">
              <el-form-item label="表格颜色：" :label-width="formLabelWidth" >
              </el-form-item>
              <div class="block" style="margin-top: -60px;margin-left:60px; " >
                <el-color-picker v-model="submitData.tb_color" ></el-color-picker >
              </div >
            </el-col>
          </el-col>
        </el-form>
        <el-form >
          <el-col :span="24">
            <el-col :span="5">
              <el-form-item label="等待工作：" :label-width="formLabelWidth" >
              </el-form-item>
              <div class="block" style="margin-top: -60px;margin-left:60px" >
                <el-color-picker v-model="submitData.waiting_color"></el-color-picker >
              </div >
            </el-col>
            <el-col :span="5">
              <el-form-item label="正在工作：" :label-width="formLabelWidth" >
              </el-form-item>
              <div class="block" style="margin-top: -60px;margin-left:60px; " >
                <el-color-picker v-model="submitData.working_color" ></el-color-picker >
              </div >
            </el-col>
            <el-col :span="5">
              <el-form-item label="工作结束：" :label-width="formLabelWidth" >
              </el-form-item>
              <div class="block" style="margin-top: -60px;margin-left:60px; " >
                <el-color-picker v-model="submitData.finish_color" ></el-color-picker >
              </div >
            </el-col>
          </el-col>
        </el-form>
        <el-form >
          <el-col :span="24">
            <el-col :span="5">
              <el-form-item label="提醒颜色：" :label-width="formLabelWidth" >
              </el-form-item>
              <div class="block" style="margin-top: -60px;margin-left:60px" >
                <el-color-picker v-model="submitData.alert_color"></el-color-picker >
              </div >
            </el-col>
            <el-col :span="5">
              <el-form-item label="文字背景：" :label-width="formLabelWidth" >
              </el-form-item>
              <div class="block" style="margin-top: -60px;margin-left:60px; " >
                <el-color-picker v-model="submitData.word_bg_color" ></el-color-picker >
              </div >
            </el-col>
            <el-col :span="5">
              <el-form-item label="其他标题：" :label-width="formLabelWidth" >
              </el-form-item>
              <div class="block" style="margin-top: -60px;margin-left:60px; " >
                <el-color-picker v-model="submitData.other_title_color" ></el-color-picker >
              </div >
            </el-col>
          </el-col>
        </el-form>
      </div >
    </div >
    <div class="panel panel-primary" style="margin: 20px" >
      <div class="panel-heading" >
        <h4 class="panel-title" >滚动时间（秒）</h4 >
      </div >
      <div class="panel-body" >
        <div>
          <el-input-number type="number" v-model="submitData.loop_time" :min="10" style="font-weight: bold"></el-input-number >
        </div>
      </div >
    </div>
    <div class="panel panel-primary" style="margin: 20px" >
      <div class="panel-heading" >
        <h4 class="panel-title" >提示语</h4 >
      </div >
      <div class="panel-body" >
        <el-form>
          <el-col :span="24">
            <el-form-item label="作业注意事项：" :label-width="alertFormLabelWidth" >
              <el-input
                      type="textarea"
                      :rows="2"
                      placeholder="请输入内容"
                      v-model="submitData.attention_content">
              </el-input>
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="立标塑形：" :label-width="alertFormLabelWidth" >
              <el-input
                      type="textarea"
                      :rows="2"
                      placeholder="请输入内容"
                      v-model="submitData.moulding_content">
              </el-input>
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="安全预想：" :label-width="alertFormLabelWidth" >
              <el-input
                      type="textarea"
                      :rows="2"
                      placeholder="请输入内容"
                      v-model="submitData.security_content">
              </el-input>
            </el-form-item>
          </el-col>
        </el-form>
      </div >
    </div>
    <div align="right" style="margin-bottom: 50px; margin-right: 20px">
      <el-button
              style="margin-left: 10px"
              size="normal"
              type="primary"
              :disabled="!showSaveSettingBtn"
              @click="saveSettings" >保存
      </el-button >
    </div>
    <div class="panel panel-primary" style="margin: 20px" >
      <div class="panel-heading" >
        <h4 class="panel-title" >作业计划表</h4 >
        <div align="right" style="margin-right: 20px;margin-top: -20px">
            <el-button size="normal" icon="plus" @click="addTaskPlan" ></el-button >
        </div>
      </div >
      <div class="panel-body">
        <div v-for="(item, index) in task_plan">
          <div class="panel" style="margin-left: 20px; margin-right: 20px" >
            <div class="panel-heading" >
              <h4 class="panel-title" ><strong>屏{{index + 1}}内容（{{item.displayName}}）</strong></h4 >
            </div >
            <div class="panel-body">
              <el-table
                      empty-text="班组信息为空"
                      :data="item.workGroups"
                      border
                      style="width: 100%">
                <el-table-column
                        min-width="60"
                        prop="id"
                        label="序号">
                  <template scope="scope">
                    <span >{{scope.$index +1}}</span>
                  </template>
                </el-table-column>
                <el-table-column
                        min-width="80"
                        prop="work_group_no"
                        label="班组">
                  <template scope="scope">
                    <span >{{scope.row.work_group_no | filterWorkGroupName}}</span>
                  </template>
                </el-table-column>
                <el-table-column
                        min-width="80"
                        prop="manager"
                        label="当班经理">
                  <template scope="scope">
                    <span >{{scope.row.manager | filterUserName}}</span>
                  </template>
                </el-table-column>
                <el-table-column
                        min-width="80"
                        prop="watcher"
                        label="值班员">
                  <template scope="scope">
                    <span >{{scope.row.watcher | filterUserName}}</span>
                  </template>
                </el-table-column>
                <el-table-column
                        min-width="80"
                        prop="dispatcher"
                        label="调度员">
                  <template scope="scope">
                    <span >{{scope.row.dispatcher | filterUserName}}</span>
                  </template>
                </el-table-column>
                <el-table-column
                        min-width="80"
                        prop="staff"
                        label="岗位人员">
                  <template scope="scope">
                    <span >{{scope.row.staff | filterUserName}}</span>
                  </template>
                </el-table-column>
                <el-table-column label="操作" min-width="100">
                  <template scope="scope">
                    <el-button
                            size="small"
                            type="primary"
                            @click="handleGroupEdit(scope.$index, scope.row)">编辑</el-button>
                    <el-button
                            size="small"
                            type="danger"
                            @click="handleGroupDelete(index, scope.$index, scope.row)">删除</el-button>
                  </template>
                </el-table-column>
              </el-table>
            </div>
          </div>
        </div>
      </div>
    </div >
    <div align="right" style="margin-bottom: 50px; margin-right: 20px">
      <el-button
              style="margin-left: 10px"
              size="normal"
              type="primary"
              :disabled="!showSaveBtn"
              @click="saveTask" >保存
      </el-button >
    </div>
    <el-dialog title="作业计划表设置" v-model="addTaskPlanVisible" size="full" >
      <div class="well">
        <el-form>
          <el-form-item label="显示名称：" :label-width="formLabelWidth" >
            <el-input
                    style="width: 250px"
                    placeholder="请输入名称"
                    v-model="addingTaskPlan.displayName">
            </el-input>
          </el-form-item>
        </el-form>
        <el-table
                empty-text="班组信息为空"
                :data="addingTaskPlan.workGroups"
                border
                style="width: 100%">
          <el-table-column
                  min-width="60"
                  prop="id"
                  label="序号">
            <template scope="scope">
              <span >{{scope.$index +1}}</span>
            </template>
          </el-table-column>
          <el-table-column
                  min-width="80"
                  prop="work_group_no"
                  label="班组">
            <template scope="scope">
              <span >{{scope.row.work_group_no | filterWorkGroupName}}</span>
            </template>
          </el-table-column>
          <el-table-column
                  min-width="80"
                  prop="manager"
                  label="当班经理">
            <template scope="scope">
              <span >{{scope.row.manager | filterUserName}}</span>
            </template>
          </el-table-column>
          <el-table-column
                  min-width="80"
                  prop="watcher"
                  label="值班员">
            <template scope="scope">
              <span >{{scope.row.watcher | filterUserName}}</span>
            </template>
          </el-table-column>
          <el-table-column
                  min-width="80"
                  prop="dispatcher"
                  label="调度员">
            <template scope="scope">
              <span >{{scope.row.dispatcher | filterUserName}}</span>
            </template>
          </el-table-column>
          <el-table-column
                  min-width="80"
                  prop="staff"
                  label="岗位人员">
            <template scope="scope">
              <span >{{scope.row.staff | filterUserName}}</span>
            </template>
          </el-table-column>

          <el-table-column label="操作" min-width="100">
            <template scope="scope">
              <el-button
                      size="small"
                      type="primary"
                      @click="handleEdit(scope.$index, scope.row)">编辑</el-button>
              <el-button
                      size="small"
                      type="danger"
                      @click="handleDelete(scope.$index, scope.row)">删除</el-button>
            </template>
          </el-table-column>
        </el-table>
        <el-button type="primary" style="margin-top: 20px" @click="chooseGroup" >添加班组</el-button >
      </div>
      <span slot="footer" class="dialog-footer" >
          <el-button @click="addTaskPlanVisible = false" >退 出</el-button >
          <el-button type="primary" @click="onConfirmAddTaskPlan" >保 存</el-button >
      </span >
    </el-dialog>
    <el-dialog title="选择班组" v-model="chooseGroupVisible" close-on-click-modal>
      <el-form >
        <el-col :span="24">
            <el-form-item label="班组名称：" :label-width="formLabelWidth" >
              <el-select v-model="addingWorkGroup.work_group_no"  placeholder="" clearable style="width: 300px">
                <el-option
                        v-for="item in allGroupsNotFinished"
                        v-bind:value="item.work_group_no"
                        v-bind:label="item.work_group_name">
                </el-option>
              </el-select>
            </el-form-item>
        </el-col>
        <el-col :span="24">
          <el-form-item label="当班经理：" :label-width="formLabelWidth">
            <el-select v-model="addingWorkGroup.manager" filterable clearable
                       placeholder="搜索经理"  style="width: 300px"
                       @visible-change="optionListShow"
                       :filter-method="nameAndAccountFilter">
              <el-option
                      v-for="item in allUsersOptions"
                      :label="item.name"
                      :value="item.account">
                <span style="float: left; font-weight: bold">{{ item.name }}</span>
                <span style="float: right; color: #8492a6; font-size: 13px">{{ item.department_no |  filterDepartmentName}}</span>
                <span style="float: right;">&nbsp;&nbsp;</span>
                <span style="float: right; color: #8492a6; font-size: 13px">{{ item.sex }}</span>
                <span style="float: right;">&nbsp;&nbsp;</span>
                <span style="float: right; color: #324057; font-size: 13px; font-weight: bold">{{ item.account }}</span>
              </el-option>
            </el-select>
          </el-form-item>
        </el-col>
        <el-col :span="24">
          <el-form-item label="值班员：" :label-width="formLabelWidth">
            <el-select v-model="addingWorkGroup.watcher" filterable clearable
                       placeholder="搜索值班员"  style="width: 300px"
                       @visible-change="optionListShow"
                       :filter-method="nameAndAccountFilter">
              <el-option
                      v-for="item in allUsersOptions"
                      :label="item.name"
                      :value="item.account">
                <span style="float: left; font-weight: bold">{{ item.name }}</span>
                <span style="float: right; color: #8492a6; font-size: 13px">{{ item.department_no |  filterDepartmentName}}</span>
                <span style="float: right;">&nbsp;&nbsp;</span>
                <span style="float: right; color: #8492a6; font-size: 13px">{{ item.sex }}</span>
                <span style="float: right;">&nbsp;&nbsp;</span>
                <span style="float: right; color: #324057; font-size: 13px; font-weight: bold">{{ item.account }}</span>
              </el-option>
            </el-select>
          </el-form-item>
        </el-col>
        <el-col :span="24">
          <el-form-item label="调度员：" :label-width="formLabelWidth">
            <el-select v-model="addingWorkGroup.dispatcher" filterable clearable
                       placeholder="搜索调度员" style="width: 300px"
                       @visible-change="optionListShow"
                       :filter-method="nameAndAccountFilter">
              <el-option
                      v-for="item in allUsersOptions"
                      :label="item.name"
                      :value="item.account">
                <span style="float: left; font-weight: bold">{{ item.name }}</span>
                <span style="float: right; color: #8492a6; font-size: 13px">{{ item.department_no |  filterDepartmentName}}</span>
                <span style="float: right;">&nbsp;&nbsp;</span>
                <span style="float: right; color: #8492a6; font-size: 13px">{{ item.sex }}</span>
                <span style="float: right;">&nbsp;&nbsp;</span>
                <span style="float: right; color: #324057; font-size: 13px; font-weight: bold">{{ item.account }}</span>
              </el-option>
            </el-select>
          </el-form-item>
        </el-col>
        <el-col :span="24">
          <el-form-item label="岗位人员：" :label-width="formLabelWidth">
            <el-select v-model="addingWorkGroup.staff" filterable  clearable
                       placeholder="选择岗位人员"  style="width: 300px"
                       @visible-change="workGroupOptionListShow"
                       :filter-method="workGroupNameAndAccountFilter">
              <el-option
                      v-for="item in allWorkGroupUsers"
                      :label="item.name"
                      :value="item.account">
                <span style="float: left; font-weight: bold">{{ item.name }}</span>
                <span style="float: right; color: #8492a6; font-size: 13px">{{ item.department_no |  filterDepartmentName}}</span>
                <span style="float: right;">&nbsp;&nbsp;</span>
                <span style="float: right; color: #8492a6; font-size: 13px">{{ item.sex }}</span>
                <span style="float: right;">&nbsp;&nbsp;</span>
                <span style="float: right; color: #324057; font-size: 13px; font-weight: bold">{{ item.account }}</span>
              </el-option>
            </el-select>
          </el-form-item>
        </el-col>
      </el-form>
      <span slot="footer" class="dialog-footer" >
          <el-button @click="chooseGroupVisible = false" >退 出</el-button >
          <el-button type="primary" @click="onConfirmAddGroup" >保 存</el-button >
      </span >
    </el-dialog>
    <el-dialog title="提示" v-model="deleteConfirmVisible" size="tiny" >
      <span >确认要删除序号为[ <strong>{{currentDeletingIndex +1 }}</strong> ]作业任务吗？</span >
      <span slot="footer" class="dialog-footer" >
	    <el-button @click="deleteConfirmVisible = false" >取 消</el-button >
	    <el-button type="primary" @click="onConfirmDelete" >确 定</el-button >
	  </span >
    </el-dialog >
    <el-dialog title="提示" v-model="deleteGroupConfirmVisible" size="tiny" >
      <span >确认要删除屏[ <strong>{{currentDeletingIndex +1 }} </strong>]内容中序号为[ <strong>{{currentDeletingSubIndex +1 }}</strong> ]的作业任务吗？</span >
      <span slot="footer" class="dialog-footer" >
	    <el-button @click="deleteGroupConfirmVisible = false" >取 消</el-button >
	    <el-button type="primary" @click="onConfirmGroupDelete" >确 定</el-button >
	  </span >
    </el-dialog >

  </div>
</template>
<script>
    import Vue from 'vue'
    var _this;
    export default {
        name: "task_setting",
        components: {},
        data () {
            _this = this;
            return {
              fetchGroupsNotFinishedUrl: HOME + "TaskPlan/getGroupsNotFinished",
              fetchUsersUrl: HOME + "User/getRecords",
              fetchCSBasicSettingURL: HOME + "CsBasicSetting/getRecord",
              addBasicSettingURL: HOME + "CsBasicSetting/addData",
              addTaskURL: HOME + "CsTask/addData",
              fetchCSTaskURL: HOME + "CsTask/getRecords",
              userInfo: "",
              department: [],
              isError: false,
              formLabelWidth: "100px",
              alertFormLabelWidth: "120px",
              submitData:{
                "bg_color":"#FFFFFF",
                "header_color":"#000000",
                "tb_color":"#000000",
                "waiting_color":"#000000",
                "working_color":"#FF4949",
                "finish_color":"#13CE66",
                "alert_color":"#FF4949",
                "word_bg_color":"#FF4949",
                "other_title_color":"#20A0FF",
                "attention_content":"",
                "moulding_content": "",
                "security_content":"",
                "loop_time": 10
              },
              oldSubmitData:"",
              task_plan:[],
              oldTaskPlan:[],
              addTaskPlanVisible: false,
              chooseGroupVisible: false,
              deleteConfirmVisible: false,
              deleteGroupConfirmVisible: false,
              editing: false,
              addingTaskPlan: {
                displayName:"",
                workGroups:[]
              },
              addingWorkGroup: {
                  work_group_no: "",
                  manager:"",
                  watcher:"",
                  dispatcher:"",
                  staff:""
              },
              currentDeletingIndex:"",
              currentDeletingSubIndex:"",
              allGroupsNotFinished:[],
              allUsers:[],
              allUsersOptions:[],
              allWorkGroupUsers:[],
              allWorkGroupUsersOptions:[],
            }
        },
        methods: {
          addTaskPlan() {
	          this.addingWorkGroup={
		          work_group_no: "",
		          manager:"",
		          watcher:"",
		          dispatcher:"",
		          staff:""
	          };
            this.addTaskPlanVisible = true;

          },

          saveSettings() {
            this.submitData.department_no = _this.currentDepartmentStr;
            $.ajax({
              url: _this.addBasicSettingURL,
              type: 'POST',
              dataType: 'json',
              data: _this.submitData,
              success: function (data) {
                _this.isError = data.status == 0;
                if (!_this.isError) {
                  showMessage(_this, '更新作业基本设置成功！', 1);
                } else {
                  showMessage(_this, '更新作业基本设置失败！', 0);
                }
              },
              error: function (info) {
                showMessage(_this, '服务器访问出错！', 0);
              }
            })
          },
          saveTask() {
            $.ajax({
              url: _this.addTaskURL,
              type: 'POST',
              dataType: 'json',
              data: {"department_no":_this.currentDepartmentStr, "tasks":_this.task_plan},
              success: function (data) {
                _this.isError = data.status == 0;
                if (!_this.isError) {
                  showMessage(_this, '提交作业计划成功！', 1);
                  _this.oldTaskPlan = _this.task_plan.slice(0);
                } else {
                  showMessage(_this, '提交作业计划失败！', 0);
                }
              },
              error: function (info) {
                showMessage(_this, '服务器访问出错！', 0);
              }
            })
          },

          onConfirmAddTaskPlan() {
            this.task_plan.push(copyObject(this.addingTaskPlan));
            this.addTaskPlanVisible = false;
          },
          chooseGroup() {
            this.chooseGroupVisible = true;
          },
          fetchGroupsNotFinished() {
              $.ajax({
                  url: _this.fetchGroupsNotFinishedUrl,
                  type: 'POST',
                  dataType: 'json',
                  data: {"department_no": _this.currentDepartmentStr},
                  success: function (data) {
                      _this.isError = data.status == 0;
                      if (!_this.isError) {
                          _this.allGroupsNotFinished = data.info;
                      } else {
                          showMessage(_this, '获取未完成作业计划失败！', 0);
                      }
                  },
                  error: function (info) {
                      showMessage(_this, '服务器访问出错！', 0);
                  }
              })
          },
          fetchUsers() {
            $.ajax({
              url: _this.fetchUsersUrl,
              type: 'POST',
              dataType: 'json',
              data: {"department_no": _this.currentDepartmentStr},
              success: function (data) {
                _this.isError = data.status == 0;
                if (!_this.isError) {
                  _this.allUsers = data.info;
                } else {
                  showMessage(_this, '获取用户信息失败！', 0);
                }
              },
              error: function (info) {
                showMessage(_this, '服务器访问出错！', 0);
              }
            })
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
//                          alert(data.info == "");
                          _this.submitData = data.info != null && data.info != "" ? data.info : _this.submitData;
                          //保存original数据
                          _this.oldSubmitData = copyObject(_this.submitData);
                      } else {
                          showMessage(_this, '获取基本设置失败！', 0);
                      }
                  },
                  error: function (info) {
                      showMessage(_this, '服务器访问出错！', 0);
                  }
              })
          },
          fetchCSTask() {
            $.ajax({
              url: _this.fetchCSTaskURL,
              type: 'POST',
              dataType: 'json',
              data: {"department_no": _this.currentDepartmentStr},
              success: function (data) {
                _this.isError = data.status == 0;
                if (!_this.isError) {
                    _this.task_plan = data.info;
                    _this.oldTaskPlan = _this.task_plan.slice(0);
                } else {
                  showMessage(_this, '获取作业屏内容失败！', 0);
                }
              },
              error: function (info) {
                showMessage(_this, '服务器访问出错！', 0);
              }
            })
          },
          nameAndAccountFilter(queryContent) {
            if(queryContent !== "") {
              this.allUsersOptions = this.allUsers.filter(item => {
                return item.name.indexOf(queryContent) > -1 || item.account.indexOf(queryContent) > -1;
              });
            }
          },

          //岗位人员的搜索
          workGroupNameAndAccountFilter(queryContent) {
            if(queryContent !== "") {
              this.allWorkGroupUsersOptions = this.allWorkGroupUsers.filter(function (item) {
                return item.name.indexOf(queryContent) > -1 || item.account.indexOf(queryContent) > -1;
              });
            }
          },
          optionListShow(show) {
            if(show) {
              //当下拉菜单打开时，初始化option列表
                this.allUsersOptions = [];
                for(var i=0; i< this.allUsers.length; i++) {
                    this.allUsersOptions.push(this.allUsers[i]);
                }
            }
          },
          //岗位人员
          workGroupOptionListShow(show) {
            if(show) {
              //当下拉菜单打开时，初始化option列表
              this.allWorkGroupUsers = [];
              for(var i=0; i< this.allUsers.length; i++) {
                if(this.allUsers[i].work_group_no == this.addingWorkGroup.work_group_no) {
                  this.allWorkGroupUsers.push(this.allUsers[i]);
                }
              }
            }
          },

          handleDelete(index, item) {
            this.currentDeletingIndex = index;
            this.deleteConfirmVisible = true;

          },
          onConfirmDelete() {
            this.deleteConfirmVisible = false;
            this.addingTaskPlan.workGroups.splice(this.currentDeletingIndex, 1);
          },
          handleEdit(index, item) {
            this.addingWorkGroup = item;
            this.editing = true;
            this.chooseGroupVisible = true;
          },

          handleGroupDelete(index, subIndex, item) {
              this.currentDeletingIndex = index;
              this.currentDeletingSubIndex = subIndex;
              this.deleteGroupConfirmVisible = true;
          },
          onConfirmGroupDelete() {

              if(this.task_plan[this.currentDeletingIndex].workGroups.length > 1) {
                  //删除子集
                  this.task_plan[this.currentDeletingIndex].workGroups.splice(this.currentDeletingSubIndex, 1);
              } else {
                  //删除当前Group的全部
                  this.task_plan.splice(this.currentDeletingIndex, 1);
              }
              this.deleteGroupConfirmVisible = false;
          },
          handleGroupEdit(index, item) {
              this.addingWorkGroup = item;
              this.editing = true;
              this.chooseGroupVisible = true
          },
//          handleManagerSelect() {
//
//          },
//          handleWatcherSelect() {
//
//          },
//          handleDispatcherSelect() {
//
//          },
//          handleStaffsSelect() {
//
//          },
          onConfirmAddGroup() {
            if(!this.editing) {
              this.addingTaskPlan.workGroups.push(copyObject(this.addingWorkGroup));
            } else {
              this.addingWorkGroup = copyObject(this.addingWorkGroup);
            }
            this.editing = false;
            this.chooseGroupVisible = false;
          }

        },
        computed: {
            currentDepartmentStr(){
                let $res = "";

                if(this.userInfo.department_no == "001") {
                    $res = "";//返回全部
                } else{
                    $res = this.userInfo.department_no;
                }
                return $res;
            },
            showSaveSettingBtn: function () {
                  //对过对比old和new,检查调试信息是否改动
                  var key;
                  for (key in this.oldSubmitData) {
                      if (JSON.stringify(this.oldSubmitData[key]) != JSON.stringify(this.submitData[key])) {
                          if(JSON.stringify(this.submitData[key]) == this.oldSubmitData[key]) {
                            continue;
                          } else {
                            return true
                          }
  //                      if(Object.is(this.oldSubmitData[key],this.submitData[key] )) {
  //                        return true
  //                      } else {
  //                        return false;
  //                      }
                      }
                  }
  ////              alert("test")
            },
          showSaveBtn: function () {
            //对过对比old和new,检查调试信息是否改动
            if(this.task_plan.length != this.oldTaskPlan.length) {
                return true;
            }
            var key;
            for (key in this.oldTaskPlan) {
              if (JSON.stringify(this.oldTaskPlan[key]) != JSON.stringify(this.task_plan[key])) {
                if(JSON.stringify(this.task_plan[key]) == this.oldTaskPlan[key]) {
                  continue;
                } else {
                  return true
                }
              }
            }
          },
        },

        filters: {
          filterDepartmentName(id) {
            let result = ''
            for(let i=0; i< _this.department.length; i++) {
              if(id == _this.department[i].department_no) {
                result = _this.department[i].department_name;
                break;
              }
            }
            return result;
          },
          filterWorkGroupName(no){
            let result = ''
            for(let i=0; i< _this.allGroupsNotFinished.length; i++) {
              if(no == _this.allGroupsNotFinished[i].work_group_no) {
                result = _this.allGroupsNotFinished[i].work_group_name;
                break;
              }
            }
            return result;
          },

          filterUserName(no){
            let result = ''
            for(let i=0; i< _this.allUsers.length; i++) {
              if(no == _this.allUsers[i].account) {
                result = _this.allUsers[i].name;
                break;
              }
            }
            return result;
          },
        },

        created: function () {
            this.userInfo = JSON.parse(sessionStorage.getItem('user'));
            //根据用户获取部分信息
            if (this.userInfo != null && this.userInfo.department_no != "001") {
                //非公司管理员
                this.department.push({"department_no":this.userInfo.department_no, "department_name":this.userInfo.department_name})
            } else{
                this.department =JSON.parse(sessionStorage.getItem('departments'));
            }
            this.fetchGroupsNotFinished();
            this.fetchUsers();
            this.fetchCSBasicSetting();
            this.fetchCSTask();
        }

    }

</script>
<style lang="scss" scoped>

</style>