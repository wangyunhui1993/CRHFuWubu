<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml">
  <div>
  <el-col :span="24" class="breadcrumb-container">
     <div class="title">作业管理 / 滤芯清洗工作量统计</div>
  </el-col>
  <el-col class="well well-lg" style="background-color: white;">

  <el-col :span="24" style="vertical-align:middle;">
     <div class="title" style="max-width:100px;margin-top: 20px; margin-bottom: 20px; margin-left: 5px; margin-right: 0px">填表日期:
     </div>
    <el-date-picker type="date" placeholder="选择日期"
              format="yyyy-MM-dd"
              v-model="myDate"
              :picker-options="pickerOpt"
              max-width="200px;"
              style="margin-top: 10px; margin-bottom: 20px; margin-left: 2px"
               @change="dateChange"
      >
      </el-date-picker >
  </el-col>
  <el-table   :data="dynamicValidateForm.data"
              border
              style="width: 100%"
              max-height="350"
              >
        <el-table-column
                width = "60" 
                prop="id"
                label="序号">
        </el-table-column>
       
        <el-table-column
                width = "200" 
                prop="train_column"
                label="车列号">
            <template scope="scope">
               <!--  <el-input type="text" v-model="scope.row.train_group" auto-complete="off" placeholder="账号"></el-input > -->
                <el-select v-model="scope.row.train_column" filterable placeholder="搜索车列号"   >
                <el-option
                        v-for="item in trainColumns"
                        :label="item.train_column"
                        :value="item.id">
                </el-option>
              </el-select>
            </template>

        </el-table-column>
        
        <el-table-column
                width = "220" 
                prop="number"
                label="数量(只)"
                >
            <template scope="scope">
              <div style="margin-top:8px">
                 <el-input-number type="number" v-model="scope.row.number" :min="1" ></el-input-number >
              </div>
               
            </template>
        </el-table-column>
        <el-table-column
                prop="problem"
                label="动车所检查发现问题">
            <template scope="scope">
                <el-input type="textarea" autosize v-model="scope.row.problem" auto-complete="off" placeholder="动车所检查发现问题"></el-input >
            </template>
        </el-table-column>
        <el-table-column
                width = "100"
                label="操作">
          <template scope="scope">
            <el-button
                    size="small"
                    type="danger"
                    @click="handleDelete(scope.$index, scope.row)">删除</el-button>
          </template>
        </el-table-column>
        
      </el-table> 



      <el-col :span="24" >

         <div class="title" style="margin-top: 20px; margin-bottom: 10px; margin-left: 5px" >总数量：{{sum}}</div>
      </el-col>
      <br>
      <el-col :span="24">
          <el-button type="primary" icon="add"  @click="addStatistics" >新增条目</el-button>
          <el-button type="primary" icon="add"  @click="submit" >提交统计</el-button>

      </el-col>
   

   </el-col>
    <el-dialog  v-model="deleteVisible" >
      <h4 style="font-weight: bold; ">确认要删除序号[ {{deleteIndex+1}} ]项吗？</h4>
      <span slot="footer" class="dialog-footer" >
                <el-button @click="deleteVisible = false">返回</el-button >
                <el-button @click="confirmDelete" type="primary">确定</el-button >
            </span >
    </el-dialog >
   </div>
</template>

<script>
  import Vue from 'vue'
  import { Notification } from 'element-ui'
  var _this 

  export default {

    name:"filter_element_statistics",
    components: {},
    data () {
      _this = this;
      var myDate = new Date();
      return {
        userInfo:{},
        submitUrl: HOME + "FilterElementStatistics/SubmitData",
        getAllTrainColumnUrl:HOME + "TrainColumn/getRecords",
        date:myDate.toLocaleDateString(),
        dynamicValidateForm: {
          
          data:[{
             id:'1',
             train_column: '',
             number: 0,
             problem:'',
             date:''
          }]
        },
         myDate:Date(),
        trainColumns:[],
        errorMsg:'',
        isError:false,
        deleteVisible:false,
        deleteIndex: -1,
        pickerOpt: {
				    disabledDate(time) {
					    //return time.getTime() < Date.now() - 8.64e7;
					    return time.getTime() > Date.now();
				    },
				    shortcuts: [{
					    text: '今天',
					    onClick(picker) {
						    picker.$emit('pick', new Date());
					    }
				    }, {
					    text: '昨天',
					    onClick(picker) {
						    const date = new Date();
						    date.setTime(date.getTime() - 3600 * 1000 * 24);
						    picker.$emit('pick', date);
					    }
				    }, {
					    text: '一周前',
					    onClick(picker) {
						    const date = new Date();
						    date.setTime(date.getTime() - 3600 * 1000 * 24 * 7);
						    picker.$emit('pick', date);
					    }
				    }],
			    },
      }
    },
    methods: {
      addStatistics() {
        _this.dynamicValidateForm.data.push({
          id:_this.dynamicValidateForm.data.length+1,
          train_column: '',
          number: 1,
          problem:'',
          date:''
        });
      },
      submit(){
        _this.isError = this.validateForm(this.dynamicValidateForm);
        for(var i = 0; i < _this.dynamicValidateForm.data.length ; i++)
        {
            _this.dynamicValidateForm.data[i].date = _this.myDate;

        };

        $.ajax({
            url: _this.submitUrl,
            type: 'POST',
            dataType: 'json',
            data: _this.dynamicValidateForm,
            success: function (data) {
              if (data.status) {
                Notification({
                  title: '成功',
                  message: '录入成功',
                  type: 'success'
                });
      
              }else{
                    Notification({
                    title: '失败',
                    message: '录入失败',
                    type: 'error'
                  });
              }
              _this.dynamicValidateForm.data = [{
             id:'1',
             train_column: '',
             number: 0,
             problem:'',
             date:_this.myDate,
          }];

            },
          })
      },
      getAllTrainColumn(){
        this.userInfo = JSON.parse(sessionStorage.getItem('user'));
        var data = {department_no:''};
        data.department_no = this.userInfo.department_no;
        if (data.department_no=='001') {
          data=null;
        }
        $.ajax({
            url: _this.getAllTrainColumnUrl,
            type: 'POST',
            dataType: 'json',
            data: data,
            success: function (data) {
              if (data.status) {
                  _this.trainColumns = data.info;      
              }else{
                    Notification({
                    title: '失败',
                    message: '获取车列信息失败',
                    type: 'error'
                  });
              }
            },
          })
      },

      validateForm(formObj)
      {

          var iserror = false;

          for (var i = formObj.data.length - 1; i >= 0; i--) {
            
            if (isStringEmpty(formObj.data[i].train_column)) {
              iserror = true;
              this.errorMsg = '某行车列数据为空，将不会进行记录！';
            }
            if (!iserror && parseInt(formObj.data[i].number)<0) {
              iserror = true;
              this.errorMsg = '某行数量数据为负，将不会进行记录！';
            }
          }
          if (!iserror) {
            this.errorMsg = '';
          }else{
            this.$message(this.errorMsg);
          }
          return iserror;
      },
      handleDelete(index, item) {
        this.deleteIndex = index;
        this.deleteVisible = true;
      },
      confirmDelete() {
        _this.dynamicValidateForm.data.splice(this.deleteIndex, 1);
        this.deleteVisible = false;
      },
      dateChange(val) {
          _this.myDate=val;
      },
    },
    computed: {
      sum(){

        var sum = 0;
        for (var i = _this.dynamicValidateForm.data.length - 1; i >= 0; i--) {
          sum = sum + parseInt(_this.dynamicValidateForm.data[i]["number"]) ;
        }
        return sum;
      }
    },
    created: function () {
      _this.getAllTrainColumn();
      var tempDate = new Date().format('yyyy-MM-dd');
      _this.myDate = tempDate;//.toLocaleDateString();
    },
    mounted: function () {

    },
  }

</script>
<style>

</style>
