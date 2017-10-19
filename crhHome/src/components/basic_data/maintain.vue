<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml">
  <div>
    <el-col :span="22" class="breadcrumb-container">
      <div class="title">基础数据 / 故障维护</div>
    </el-col>
    <el-col :span="2"  style="background-color: #E5E9F2;">
      <el-button
              style="margin-left: 10px;margin-top: 7px; margin-bottom: 7px"
              size="normal"
              type="primary"
              @click="handleAdd">增加
	      </el-button>
    </el-col>
    <el-col class="well well-lg" style="background-color: white;">
      <el-table
              :data="tableData"
              border
              style="width: 100%">
        <el-table-column
                width="80"
                prop="id"
                label="序号">
          <template scope="scope">
            <span >{{scope.$index +1}}</span>
          </template>
        </el-table-column>
        <el-table-column
                prop="content"
                label="故障维护">
        </el-table-column>

        <el-table-column
                prop="department_no"
                label="部门">
          <template scope="scope">
            <span >{{scope.row.department_no | filterDepartmentName}}</span>
          </template>
        </el-table-column>
        <el-table-column
                width="120"
                prop="font_color"
                label="字体颜色">
          <template scope="scope">
                        <div :style="{'background-color': scope.row.font_color, 'margin': '5px'}" >
              <span >{{scope.row.font_color}}</span>
            </div>
          </template>
        </el-table-column>

        <el-table-column
                width="120"
                prop="comment"
                label="备注">
        </el-table-column>
	
        <el-table-column label="操作" width="150">
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
      <div class="block" style="text-align: center; margin-top: 20px">
        <el-pagination
                @size-change="handleSizeChange"
                @current-change="handleCurrentChange"
                :current-page="currentPage"
                :page-size="pageSize"
                layout="total, prev, pager, next, jumper"
                :total="totalRecords">
        </el-pagination>
      </div>
    </el-col>
    <el-dialog title="增加故障维护" v-model="addDialogVisible" size="tiny">
      <el-form :model="form">
        <el-form-item label="故障维护：" :label-width="formLabelWidth">
          <el-input v-model="form.content" auto-complete="off"  @change="onChange"></el-input>
        </el-form-item>
	
        <el-form-item label="部门：" :label-width="formLabelWidth">
          <el-select v-model="form.department_no" style="width: 100%">
            <el-option
                    v-for="item in department"
                    v-bind:value="item.department_no"
                    v-bind:label="item.department_name">
            </el-option>
          </el-select>
        </el-form-item>
	
	 <el-form-item label="备注：" :label-width="formLabelWidth">
          <el-input v-model="form.comment" auto-complete="off"  @change="onChange"></el-input>
        </el-form-item>
	
        <el-form-item label="颜色：" :label-width="formLabelWidth">

        </el-form-item>
	             <div class="block" style="margin-top: -60px;margin-left:60px; " >
                   <el-color-picker v-model="form.font_color"
                                    @change="onChange" >
                   </el-color-picker >
	            </div >
      </el-form>
       <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
                 :title="errorMsg"
                 type="error"
                 :closable="false"
                 show-icon >
      </el-alert >
      <div slot="footer" class="dialog-footer">
        <el-button @click="addDialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="onAdd">确 定</el-button>
      </div>
    </el-dialog>

    <el-dialog title="编辑故障维护" v-model="modifyDialogVisible" size="tiny">
      <el-form :model="modifyForm">
        <el-form-item label="故障维护：" :label-width="formLabelWidth">
          <el-input v-model="modifyForm.content" auto-complete="off" @change="onChange"></el-input>
        </el-form-item>
	
        <el-form-item label="部门：" :label-width="formLabelWidth">
          <el-select v-model="modifyForm.department_no"  style="width: 100%">
            <el-option
                    v-for="item in department"
                    v-bind:value="item.department_no"
                    v-bind:label="item.department_name">
            </el-option>
          </el-select>
        </el-form-item>
	
	 <el-form-item label="备注：" :label-width="formLabelWidth">
          <el-input v-model="modifyForm.comment" auto-complete="off"  @change="onChange"></el-input>
        </el-form-item>
	
        <el-form-item label="颜色：" :label-width="formLabelWidth">
        </el-form-item>
	            <div class="block" style="margin-top: -60px;margin-left:60px; " >
                    <el-color-picker v-model="modifyForm.font_color"
                                     @change="onChange" ></el-color-picker >
	            </div >
      </el-form>
            <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
                      :title="errorMsg"
                      type="error"
                      :closable="false"
                      show-icon >
            </el-alert >
      <div slot="footer" class="dialog-footer">
        <el-button @click="modifyDialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="onEidt">确 定</el-button>
      </div>
    </el-dialog>
		<el-dialog title="提示" v-model="deleteConfirmVisible" size="tiny" >
		  <span >确认要删除名为<b>[ {{selectedItem.content}} ]</b>的故障维护吗？</span >
		  <span slot="footer" class="dialog-footer" >
		    <el-button @click="deleteConfirmVisible = false" >取 消</el-button >
		    <el-button type="primary" @click="onConfirmDelete" >确 定</el-button >
		  </span >
		</el-dialog >
  </div>
</template>

<script>
  import Vue from 'vue'
    var _this;

  export default {
    name:"maintain",
    components: {},
    data () {
		    _this = this;
      return {
        fetchSubDepartmentsURL:HOME + "DepartmentInfo/fetchSubDepartments",
        addUrl: HOME + "TroubleMaintain/addData",
        editUrl: HOME + "TroubleMaintain/modifyData",
        deleteUrl: HOME + "TroubleMaintain/deleteData",
        queryCountUrl: HOME + "TroubleMaintain/getRecordsCount",
        queryDataUrl: HOME + "TroubleMaintain/getRecords",
        isError: false,
        errorMsg: '',
        filters: {},
        totalRecords: 0,
        selectedItem: {},
        deleteConfirmVisible: false,

        tableData: [],
        department:[],
        userInfo:{},
        //分页
        pageSize: EveryPageNum,//每一页的num
        currentPage:1,
        startRecord: 0,

        //增加对话框
        addDialogVisible: false,
        form: {
          content: "",
          department_no: "",
          font_color:"#000000",
	  comment:""
        },
        formLabelWidth: '100px',

        //修改对话框
        modifyDialogVisible: false,
        modifyForm: {
	  id: '',
          content: "",
          department_no: "",
          font_color:"#000000",
	  comment:""
        },
      }
    },
    methods: {
		    onChange: function () {
			    this.isError = false;
			    this.errorMsg = '';
		    },
      handleSizeChange(val) {
//        console.log(`每页 ${val} 条`);
      },
      handleCurrentChange(val) {
        this.currentPage = val;
        this.startRecord = this.pageSize * (this.currentPage -1)
			    this.onSearchDetailData();
//        this.onSearchDetailData();
//        console.log(`当前页: ${val}`);
      },
		    onSearchDetailData()
		    {
			    $.ajax({
				    url: _this.queryDataUrl,
				    type: 'POST',
				    dataType: 'json',
				    data: {"department_no": _this.currentDepartmentStr,"start_record":_this.startRecord, "page_size":_this.pageSize},
				    success: function (data) {
					    if (data.status) {
						    _this.tableData = data.info;
					    }
				    }
			    })
		    },
		    onSearchRecordCounts()
		    {
			    $.ajax({
				    url: this.queryCountUrl,
				    type: 'POST',
				    dataType: 'json',
				    data: {"department_no": _this.currentDepartmentStr,"start_record":_this.startRecord, "page_size":_this.pageSize},
				    success: function (data) {
					    if (data.status) {
						    _this.totalRecords = parseInt(data.info);
						    _this.onSearchDetailData();
					    }
				    },
			    })
		    },
      handleAdd() {
			    this.isError = false;
			    this.errorMsg = '';
			    this.form.content = "";
	        	    this.form.department_no="";
		            this.form.font_color="#000000";
			    this.form.comment=""; 
                            this.addDialogVisible = true;
      },

      handleEdit(index, item) {
			    this.isError = false;
			    this.errorMsg = '';
			    this.selectedItem = item;
			    this.modifyForm = copyObject(this.selectedItem);
			    this.modifyDialogVisible = true;
      },

      handleDelete(index, item) {
			    this.selectedItem = item;
			    if (this.selectedItem) {
				    _this.deleteConfirmVisible = true;
			    }
},
      onConfirmDelete: function () {
          _this.deleteConfirmVisible = false;
          $.ajax({
              url: _this.deleteUrl,
              type: 'POST',
              dataType: 'json',
              data: _this.selectedItem,
              success: function (data) {
                  if (data.status > 0) {
                      var index = _this.tableData.indexOf(_this.selectedItem);
                      _this.tableData.splice(index, 1);
                      showMessage(_this, '删除成功', 1);
                  } else {
                      showMessage(_this, '删除失败', 0);
                  }
              },
              error: function (info) {
                  showMessage(_this, '服务器访问出错', 0);
              }
          })
      },

      validateForm(formObj)
      {
          var iserror = false;
          if (isStringEmpty(formObj.content)) {
              iserror = true;
              this.errorMsg = '内容不能为空！';
          }
          if(!iserror&&isStringEmpty(formObj.font_color))
          {
              iserror = true;
              this.errorMsg = '字体不能为空！';
          }

          if (isStringEmpty(formObj.department_no)) {
              iserror = true;
              this.errorMsg = '部门不能为空！';
          }

          return iserror;
      },
      onAdd() {
          _this.isError = this.validateForm(this.form);
          if (!_this.isError) {
              $.ajax({
                  url: _this.addUrl,
                  type: 'POST',
                  dataType: 'json',
                  data: _this.form,
                  success: function (data) {
                      _this.isError = data.status == 0;
                      if (!_this.isError) {
                          _this.addDialogVisible = false;
                          _this.onSearchRecordCounts();
                          showMessage(_this, '添加成功', 1);
                      } else {
                          showMessage(_this, '添加失败', 0);
                      }
                  },
                  error: function (info) {
                      _this.errorMsg = '服务器访问出错！';
                      _this.isError = true;
                  }
              })
          }

      },
      onEidt() {
          this.isError = this.validateForm(this.modifyForm);
          if (!_this.isError) {
              $.ajax({
                  url: _this.editUrl,
                  type: 'POST',
                  dataType: 'json',
                  data: _this.modifyForm,
                  success: function (data) {
//						    _this.isError = data.status == 0;
//						    if (!_this.isError) {
                          _this.modifyDialogVisible = false;
                          _this.selectedItem.font_color = _this.modifyForm.font_color;
                          _this.selectedItem.content = _this.modifyForm.content;
                          _this.selectedItem.department_no = _this.modifyForm.department_no;
                          _this.selectedItem.comment = _this.modifyForm.comment;
                          showMessage(_this, '修改成功', 1);
//						    } else {
//							    showMessage(_this, '修改失败', 0);
//						    }
                  },
                  error: function (info) {
                      _this.errorMsg = '服务器访问出错！';
                      _this.isError = true;
                  }
              })
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
      }
    },
    created: function () {
      this.userInfo = JSON.parse(sessionStorage.getItem('user'));
      if (this.userInfo != null && this.userInfo.department_no != "001") {
        //非公司管理员
        _this.department.push({"department_no":this.userInfo.department_no, "department_name":this.userInfo.department_name})
      } else{
        $.ajax({
          url: _this.fetchSubDepartmentsURL,
          type: 'GET',
          success: function (data) {
            _this.isError = data.status == 0;
            if (!_this.isError) {
              //TODO:
              _this.department = data.info
//                            console.log(data.info)
            } else {
              showMessage(_this, '获取服务部信息失败！', 0);
            }
          },
          error: function (info) {
            showMessage(_this, '服务器访问出错！', 0);
          }
        })
      }
    },
    mounted: function () {
		    this.onSearchRecordCounts();
    },
  }

</script>
<style>
  .breadcrumb-container {
    padding: 15px;
    background-color: #E5E9F2;
  }
  .title {
    width: 200px;
    float: left;
    color: #475669;
    font-weight: bold
  }
</style>
