<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml" >
  <div >
    <el-col :span="24" class="breadcrumb-container" >
      <div class="title" >基础数据 / 作业端名称</div >
    </el-col >
    <el-col class="well well-lg" style="background-color: white;" >
      <el-form :model="form">
        <el-row>
          <el-col :span="6">
            <el-form-item label="所属部门：" :label-width="formLabelWidth">
              <el-select v-model="form.department_no" style="width: 100%" clearable>
                <el-option
                        v-for="item in department"
                        :value="item.department_no"
                        :label="item.department_name">
                </el-option>
              </el-select>
            </el-form-item>
          </el-col>
        </el-row>

        <el-row>
          <el-col :span="6">
            <el-form-item label="A端（左）：" :label-width="formLabelWidth">
              <el-input v-model="form.a_left" auto-complete="off" placeholder="沪端左"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="6">
            <el-form-item label="B端（左）：" :label-width="formLabelWidth">
              <el-input v-model="form.b_left" auto-complete="off" placeholder="杭端左"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="6">
            <el-form-item label="A端（右）：" :label-width="formLabelWidth">
              <el-input v-model="form.a_right" auto-complete="off" placeholder="沪端右"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="6">
            <el-form-item label="B端（右）：" :label-width="formLabelWidth">
              <el-input v-model="form.b_right" auto-complete="off" placeholder="杭端右"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="6">
            <el-form-item label="A端（组长）：" :label-width="formLabelWidth">
              <el-input v-model="form.a_leader" auto-complete="off" placeholder="沪端"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="6">
            <el-form-item label="B端（组长）：" :label-width="formLabelWidth">
              <el-input v-model="form.b_leader" auto-complete="off" placeholder="杭端"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="6">
            <el-form-item label="A端（质检）：" :label-width="formLabelWidth">
              <el-input v-model="form.a_quality" auto-complete="off" placeholder="沪端"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="6">
            <el-form-item label="B端（质检）：" :label-width="formLabelWidth">
              <el-input v-model="form.b_quality" auto-complete="off" placeholder="杭端"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
      </el-form>
      <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
                :title="errorMsg"
                type="error"
                :closable="false"
                show-icon >
      </el-alert >
      <div class="col-sm-6" style="display: inline; text-align: center;margin-top: 20px;">
        <el-button style="margin-right: 10px; width: 100px;"  @click="reset">重置</el-button>
        <el-button type="primary"  style="width: 100px" @click="submit">确认</el-button>
      </div>
    </el-col >

  </div >
</template >

<script >
  import Vue from 'vue'
  var _this;
  export default {
	  name: "task_port",
	  components: {},
	  data () {
		  _this = this;
		  return {
            userInfo:{},
            fetchSubDepartmentsURL:HOME + "DepartmentInfo/fetchSubDepartments",
            getUrl: HOME + "TaskPort/getRecords",
            editUrl: HOME + "TaskPort/modifyData",

            department:[],
            form: {
                department_no:"",
                a_left:"",
                a_right:"",
                b_left:"",
                b_right:"",
                a_leader:"",
                b_leader:"",
                a_quality:"",
                b_quality:"",
            },
            formLabelWidth: '150px',
            modifyConfirmVisible: false,
            isError:false,
            errorMsg:""
		  }
	  },
	  methods: {

		  validateForm(formObj)
		  {
			  var iserror = false;
			  if (isStringEmpty(formObj.department_no)) {
				  iserror = true;
				  this.errorMsg = '部门不能为空！';
			  }
			  if (!iserror && isStringEmpty(formObj.a_left)) {
				  iserror = true;
				  this.errorMsg = 'A端（左）名称！';
			  }
			  if (!iserror && isStringEmpty(formObj.a_right)) {
				  iserror = true;
				  this.errorMsg = 'A端（右）名称！';
			  }
              if (!iserror && isStringEmpty(formObj.b_left)) {
                  iserror = true;
                  this.errorMsg = 'B端（左）名称！';
              }
              if (!iserror && isStringEmpty(formObj.b_right)) {
                  iserror = true;
                  this.errorMsg = 'B端（右）名称！';
              }
              if (!iserror && isStringEmpty(formObj.a_leader)) {
                iserror = true;
                this.errorMsg = 'A端（组长）名称！';
              }
              if (!iserror && isStringEmpty(formObj.b_leader)) {
                iserror = true;
                this.errorMsg = 'B端（组长）名称！';
              }
            if (!iserror && isStringEmpty(formObj.a_quality)) {
              iserror = true;
              this.errorMsg = 'A端（质检）名称！';
            }
            if (!iserror && isStringEmpty(formObj.b_quality)) {
              iserror = true;
              this.errorMsg = 'B端（质检）名称！';
            }
			  return iserror;
		  },

        submit() {
            this.isError = this.validateForm(this.form);
            if(!this.isError) {
                this.modifyConfirmVisible = true;
            }
            if (!_this.isError) {
                $.ajax({
                    url: _this.editUrl,
                    type: 'POST',
                    dataType: 'json',
                    data: _this.form,
                    success: function (data) {
                      _this.modifyConfirmVisible = false;
                      showMessage(_this, '修改成功', 1);
                    },
                    error: function (info) {
                      _this.modifyConfirmVisible = false;
                      showMessage(_this, '修改失败', 0);
                    }
                })
            }
        },
        reset() {
          this.form.department_no = "";
          this.form.a_left = "";
          this.form.a_right = "";
          this.form.b_left = "";
          this.form.b_right = "";
          this.form.a_leader = "";
          this.form.b_leader = "";
          this.form.a_quality = "";
          this.form.b_quality = "";
          this.errorMsg = "";
          this.isError = false;
        },
        getData(){
          $.ajax({
            url: _this.getUrl,
            type: 'POST',
            dataType: 'json',
            data: {"department_no": _this.currentDepartmentStr},
            success: function (data) {
              if (data.status) {
                if(data.info != null && data.info != "") {
                  _this.form = data.info;
                }
              }
            }
          })
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
        //根据用户获取部分信息
        if (this.userInfo != null && this.userInfo.department_no != "001") {
          //非公司管理员
          this.department.push({"department_no":this.userInfo.department_no, "department_name":this.userInfo.department_name})
        } else{
          this.department =JSON.parse(sessionStorage.getItem('departments'));
        }

        this.getData();
	  },
	  mounted: function () {

	  },
  }

</script >
<style >
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
</style >
