<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml">
  <div>
    <el-col :span="24" class="breadcrumb-container">
      <div class="title">作业管理 / 一车一档查询</div>
    </el-col>

    <el-col class="well well-lg" style="background-color: white;">

      <el-form :inline="true" :model="form">

        <el-col :span="6">
          <el-form-item label="车列号：">
            <el-select v-model="form.train_column" clearable filterable placeholder="搜索车列号" style="width: 200px"  @change="handleSelect">
              <el-option
                      v-for="item in trainColumn"
                      :label="item.train_column"
                      :value="item.id">
              </el-option>
            </el-select>
          </el-form-item>
          <el-form-item  label="股道：">
            <el-select v-model="form.station_track_no" clearable placeholder="选择股道" style="width: 200px;margin-left: 13px">
              <el-option v-for="item in stationStack" :label="item.station_track_no" :value="item.id"></el-option>
            </el-select>
          </el-form-item>
        </el-col>
        <el-col  :span="8">
          <el-form-item  label="作业日期：">
            <el-date-picker
                    format="yyyy-MM-dd"
                    v-model="form.task_date"
                    type="daterange"
                    placeholder="选择日期范围">
            </el-date-picker>
            <el-button type="primary" @click="toToday" >今天</el-button>
          </el-form-item>
          <el-form-item  label="修程：">
            <el-select v-model="form.repair_id" clearable placeholder="选择修程" style="width: 222px;margin-left: 25px">
              <el-option v-for=" item in repairInfo" :label="item.name" :value="item.id">
              </el-option>

            </el-select>
          </el-form-item>
        </el-col>
        <el-col :span="10">
          <el-form-item  label="部门：">
            <el-select  v-model="form.department_no" clearable placeholder="选择部门" style="width: 200px">
              <el-option
                      v-for="item in department"
                      v-bind:value="item.department_no"
                      v-bind:label="item.department_name">
              </el-option>
            </el-select>
          </el-form-item>
        </el-col>
        <!--<el-col :span="6">-->
          <!--<el-form-item  label="状态：">-->
            <!--<el-select  v-model="form.state" placeholder="选择状态" clearable style="width: 200px">-->
              <!--<el-option v-for="item in statusArr" :label="item.name" :value="item.value"></el-option>-->
            <!--</el-select>-->
          <!--</el-form-item>-->
        <!--</el-col>-->
        <el-col :span="4">
          <el-button type="primary" icon="search" @click="search" >搜索</el-button>
        </el-col>
      </el-form>
      <el-table
              :data="tableData"
              border
              style="width: 100%">
        <el-table-column
                width="65"
                prop="id"
                label="序号">
          <template scope="scope">
            <span >{{scope.$index +1}}</span>
          </template>
        </el-table-column>
        <el-table-column
                width="110"
                prop="task_date"
                label="作业日期">
        </el-table-column>
        <el-table-column
                width="110"
                prop="task_time"
                label="作业时间">
        </el-table-column>
        <el-table-column
                width="80"
                label="车列号">
          <template scope="scope">
            <div>
              {{scope.row.train_column | filterTrainColumnName}}
            </div>
          </template>
        </el-table-column>
        <el-table-column
                width="120"
                label="车型">
          <template scope="scope">
            <div>
              {{scope.row.train_model| filterTrainModelName}}
            </div>
          </template>
        </el-table-column>
        <el-table-column
                width="70"
                label="股道">
          <template scope="scope">
            <div>
              {{scope.row.station_track_no | filterStationTrackName}}
            </div>
          </template>
        </el-table-column>
        <el-table-column
                width="100"
                prop="repair_id"
                label="修程">
          <template scope="scope">
            <div>
              {{scope.row.repair_id | filterRepairName}}
            </div>
          </template>
        </el-table-column>
        <el-table-column
                width="200"
                label="修程项目">
          <template scope="scope">
            <el-tag 
                    style="margin-left:2px;"
                    href="#" :title="tag"
                    v-for="tag in scope.row.repair_category!=null&&scope.row.repair_category!=''?scope.row.repair_category.split(','):new Array()"
                    :key="tag"
                    :closable="false"
            >
              {{tag}}
            </el-tag>
          </template>
        </el-table-column>
        <el-table-column
                min-width="300px"
                prop="task_content_list"
                label="作业内容">
          <template scope="scope">
            <ul style="list-style: none;">
              <li style="float: left; margin-left: 3px" v-for=" item in scope.row.task_content_list">
                <el-tag href="#" :title="item | filterTaskContent" >{{item | filterTaskContent}}</el-tag>
              </li>
            </ul>
          </template>
        </el-table-column>
        <el-table-column
                width="100"
                prop="work_group_no"
                label="作业组别">
          <template scope="scope">
            <div>
              {{scope.row.work_group_no | filterWorkGroupName}}
            </div>
          </template>
        </el-table-column>
        <el-table-column
                width="100"
                prop="train_group"
                label="车组类型">
          <template scope="scope">
            <div>
              {{scope.row.train_group | filterTrainGroup}}
            </div>
          </template>
        </el-table-column>
        <el-table-column
                width="100"
                label="状态">
          <template scope="scope">
            <div :style="{'color': scope.row.state == 1 ? 'red'
                          : scope.row.state == 2 ? 'blue'
                          : scope.row.state == 3 ? 'green'
                          : scope.row.state == 4 ? 'gray' : ''}">
              {{scope.row.state | filterStatusName}}
            </div>
          </template>
        </el-table-column>
        <el-table-column label="操作" width="100">
          <template scope="scope">
            <el-button
                    size="small"
                    type="primary"
                    @click="handleCheck(scope.$index, scope.row)">查看</el-button>
          </template>
        </el-table-column>
      </el-table>
      <div class="block" style="text-align: center; margin-top: 20px">
        <el-pagination
                @size-change="handleSizeChange"
                @current-change="handleCurrentChange"
                :current-page="currentPage"
                :page-size="pageSize"
                layout="prev, pager, next, jumper"
                :total="totalPage">
        </el-pagination>
      </div>
    </el-col>
    <el-dialog  v-model="checkTaskDetailVisible" size="full" >
      <h2 style="font-weight: bold;text-align: center; font-size: x-large">一车一档查询</h2>
      <el-table
              :data="selectedTaskInfo"
              border
              style="width: 100%">
        <el-table-column
                min-width="110"
                prop="task_date"
                label="作业日期">
        </el-table-column>
        <el-table-column
                min-width="110"
                prop="task_time"
                label="作业时间">
        </el-table-column>
        <el-table-column
                prop="train_column"
                min-width="110"
                label="车列号">
          <template scope="scope">
            <div>
              {{scope.row.train_column | filterTrainColumnName}}
            </div>
          </template>
        </el-table-column>
        <el-table-column
                prop="train_model"
                min-width="120"
                label="车型">
          <template scope="scope">
            <div>
              {{scope.row.train_model| filterTrainModelName}}
            </div>
          </template>
        </el-table-column>
        <el-table-column
                prop="station_track_no"
                min-width="110"
                label="股道">
          <template scope="scope">
            <div>
              {{scope.row.station_track_no | filterStationTrackName}}
            </div>
          </template>
        </el-table-column>
        <el-table-column
                min-width="110"
                prop="repair_id"
                label="修程">
          <template scope="scope">
            <div>
              {{scope.row.repair_id | filterRepairName}}
            </div>
          </template>
        </el-table-column>
        <el-table-column
                width="200"
                label="修程项目">
          <template scope="scope">
            <el-tag
                    style="margin-left:2px;" 
                    href="#" :title="tag"
                    v-for="tag in scope.row.repair_category!=null&&scope.row.repair_category!=''?scope.row.repair_category.split(','):new Array()"
                    :key="tag"
                    :closable="false"
            >
              {{tag}}
            </el-tag>
          </template>
        </el-table-column>
        <el-table-column
                min-width="110"
                prop="train_group"
                label="车组类型">
          <template scope="scope">
            <div>
              {{scope.row.train_group | filterTrainGroup}}
            </div>
          </template>
        </el-table-column>
      </el-table>
      <div class="title" style="margin-top: 50px; margin-bottom: 10px; margin-left: 5px">作业情况</div>
      <el-table
              :data="taskContentData"
              border
              style="width: 100%">
        <el-table-column
                prop="id"
                label="序号"
                min-width="50">
          <template scope="scope">
            <span >{{scope.$index +1}}</span>
          </template>
        </el-table-column>
        <el-table-column label="作业信息">
          <el-table-column
                  prop="task_content_id"
                  label="作业内容"
                  min-width="80">
            <template scope="scope">
              <div>
                {{scope.row.task_content_id | filterTaskContent}}
              </div>
            </template>
          </el-table-column>
          <el-table-column
                  prop="begin_time"
                  label="开始时间"
                  min-width="75">
          </el-table-column>
          <el-table-column
                  prop="end_time"
                  label="结束时间"
                  min-width="75">
          </el-table-column>
          <el-table-column
                  prop="trouble_maintain_id"
                  label="故障状态"
                  min-width="80">
            <template scope="scope">
              <ul style="list-style: none; margin-top: 10px">
                <li style="margin-left: -20px; margin-top: 3px" v-for=" item in scope.row.trouble_maintain_id">
                  <el-tag type="danger" href="#" :title="item | filterTroubleName" >{{item | filterTroubleName}}</el-tag>
                </li>
              </ul>
            </template>
          </el-table-column>
          <el-table-column
                  prop="situation_content_id"
                  label="情况说明"
                  min-width="80">
            <template scope="scope">
              <ul style="list-style: none;margin-top: 10px">
                <li style="margin-left: -20px; margin-top: 3px" v-for=" item in scope.row.situation_content_id">
                  <el-tag type="warning" href="#" :title="item | filterSituationName">{{item | filterSituationName}}</el-tag>
                </li>
              </ul>
            </template>
          </el-table-column>
        </el-table-column>

        <el-table-column label="作业人员">
          <el-table-column
                  prop="a_left"
                  :label="portName.a_left"
                  min-width="80">
            <template scope="scope">
              <ul style="list-style: none;">
                <li style="margin-left: -20px" v-for=" item in scope.row.a_left">
                  <el-tag >{{item | filterUserName}}</el-tag>
                </li>
              </ul>
            </template>
          </el-table-column>
          <el-table-column
                  prop="a_right"
                  :label="portName.a_right"
                  min-width="80">
            <template scope="scope">
              <ul style="list-style: none;">
                <li style="margin-left: -20px" v-for=" item in scope.row.a_right">
                  <el-tag >{{item | filterUserName}}</el-tag>
                </li>
              </ul>
            </template>
          </el-table-column>

          <el-table-column
                  prop="b_left"
                  :label="portName.b_left"
                  min-width="80">
            <template scope="scope">
              <ul style="list-style: none;">
                <li style="margin-left: -20px" v-for=" item in scope.row.b_left">
                  <el-tag>{{item | filterUserName}}</el-tag>
                </li>
              </ul>
            </template>
          </el-table-column>
          <el-table-column
                  prop="b_right"
                  :label="portName.b_right"
                  min-width="80">
            <template scope="scope">
              <ul style="list-style: none;">
                <li style="margin-left: -20px" v-for=" item in scope.row.b_right">
                  <el-tag >{{item | filterUserName}}</el-tag>
                </li>
              </ul>
            </template>
          </el-table-column>
        </el-table-column>

        <el-table-column label="作业组长">
          <el-table-column
                  prop="a_leader"
                  :label="portName.a_leader"
                  min-width="80">
            <template scope="scope">
              <ul style="list-style: none;">
                <li style="margin-left: -20px" v-for=" item in scope.row.a_leader">
                  <el-tag >{{item | filterUserName}}</el-tag>
                </li>
              </ul>
            </template>
          </el-table-column>
          <el-table-column
                  prop="b_leader"
                  :label="portName.b_leader"
                  min-width="80">
            <template scope="scope">
              <ul style="list-style: none;">
                <li style="margin-left: -20px" v-for=" item in scope.row.b_leader">
                  <el-tag >{{item | filterUserName}}</el-tag>
                </li>
              </ul>
            </template>
          </el-table-column>
        </el-table-column>
        </el-table-column>


        <el-table-column label="质检人员">
          <el-table-column
                  prop="a_quality"
                  :label="portName.a_quality"
                  min-width="80">
            <template scope="scope">
              <ul style="list-style: none;">
                <li style="margin-left: -20px" v-for=" item in scope.row.a_quality">
                  <el-tag >{{item | filterUserName}}</el-tag>
                </li>
              </ul>
            </template>
          </el-table-column>
          <el-table-column
                  prop="b_quality"
                  :label="portName.b_quality"
                  min-width="80">
            <template scope="scope">
              <ul style="list-style: none;">
                <li style="margin-left: -20px" v-for=" item in scope.row.b_quality">
                  <el-tag >{{item | filterUserName}}</el-tag>
                </li>
              </ul>
            </template>
          </el-table-column>
        </el-table-column>
      </el-table>
      <span slot="footer" class="dialog-footer" >
      <el-button @click="PrintYicheYiDang" type="primary">打印</el-button >
	    <el-button @click="checkTaskDetailVisible = false" type="primary">返回</el-button >
	  </span >
    </el-dialog >
  </div>
</template>

<script>
  import Vue from 'vue';
  import {Loading} from 'element-ui';

  let _this
  export default {
    name:"train_data",
    components: {},
    data () {
      _this = this
      return {
        fetchRepairInfoURL:HOME + "RepairInfo/getRecords",
        fetchDepartRelInfoURL:HOME + "TaskPlan/fetchDepartRelInfo",
        fetchTaskURL:HOME + "TaskPlan/getRecords",
        fetchTaskCountURL:HOME + "TaskPlan/getRecordsCount",
        getTroubleUrl: HOME + "TroubleMaintain/getRecords",
        getSituationUrl: HOME + "SituationContent/getRecords",
        fetchTaskContentDetailURL: HOME + "TaskPlanDetail/getRecords",
        fetchPortNameURL:HOME + "TaskPlanDetail/getPortName",
        getPersonUrl: HOME + "User/searchRecords",
        printYicheYiDangURL:HOME + "TaskPlan/exportYiCheYiDang",
        form: {
          train_column: '',
          task_date: [],
          department_no: "",
          station_track_no: "",
          repair_id: "",
          state:""
        },
        userInfo:"",
        statusArr:[],
        tableData: [],
        //分页
        totalPage: 1,
        pageSize: EveryPageNum,//每一页的num
        currentPage:1,
        startRecord: 0,
        isError: false,
        errorMsg: '',
        selectedTaskInfo:[],
        taskYiCheYiDangForPrint:[],
        taskContentData:[],//当前选中的作业计划对应的作业内容
        taskYiCheYiDangContentForPrint:[],//
        portName:{'a_left':"","a_right":"","b_left":"","b_right":"",
          "a_leader":"",'b_leader':"","a_quality":"","b_quality":""},//当前选中的作业计划对应的端名称

        formLabelWidth: '100px',
        checkTaskDetailVisible:false,//查看

        department:[],//部门
        repairInfo:[],//修程
        stationStack:[],//股道
        taskContent:[],//作業任務
        trainColumn:[],//车列号相关
        trainModel:[],//车型
        workGroup:[],//作业班组
        situationList:[],
        troubleList:[],
        departmentUsers:[]
      }
    },
    methods: {

      toToday(){
        this.form.task_date = [Date.now(),Date.now()]
      },

      search() {
        this.fetchTaskCount()
      },

      handleSizeChange(val) {
//        console.log(`每页 ${val} 条`);
      },

      handleCurrentChange(val) {
        this.currentPage = val;
        this.startRecord = this.pageSize * (this.currentPage -1)
        this.fetchTaskCount();
      },
      PrintYicheYiDang()
      {
        var loadService = Loading.service(
				{
//						    lock: true,
						    text: '正在打印中，请稍后...',
				});

          this.taskYiCheYiDangForPrint=[];// =  this.selectedTaskInfo.copyObject();
          for(let i=0; i<this.selectedTaskInfo.length; i++){
            var obj = new Object();
            obj.task_date = this.selectedTaskInfo[i].task_date;
            //this.$options.filters.capitalize(this.word);
            obj.train_columnName = this.$options.filters.filterTrainColumnName(this.selectedTaskInfo[i].train_column);
            obj.train_modelName = this.$options.filters.filterTrainModelName(this.selectedTaskInfo[i].train_model);
            obj.station_TrackName = this.$options.filters.filterStationTrackName(this.selectedTaskInfo[i].station_track_no);
            obj.RepairName = this.$options.filters.filterRepairName(this.selectedTaskInfo[i].repair_id);
            obj.RepairItems = this.selectedTaskInfo[i].repair_category;//修程项目
            obj.train_groupName = this.$options.filters.filterTrainGroup(this.selectedTaskInfo[i].train_group);
            obj.task_number = this.selectedTaskInfo[i].task_number;
            obj.task_time   = this.selectedTaskInfo[i].task_time;
            this.taskYiCheYiDangForPrint.push(obj);
          }
          //构造作业信息
          //
          $.ajax({
            url: _this.printYicheYiDangURL,
            type: 'POST',
            dataType: 'json',
            data: {"taskYiCheYiDangForPrint": JSON.stringify(this.taskYiCheYiDangForPrint)},
            success: function (data) {
              loadService.close();

              _this.isError = data.status == 0;
              if (!_this.isError) {

                if (data.info.state > 0) {
                  var res = downloadFile(document, HOST_URL + data.info.result);
                }
                showMessage(_this, '打印成功', 1);
              } else {
                showMessage(_this, '打印失败', 0);
              }
            },
            error: function (info) {
              loadService.close();

              showMessage(_this, '服务器访问出错！', 0);
            }
          })
      },

      handleCheck(index, row) {
        this.checkTaskDetailVisible = true;
        this.selectedTaskInfo = [];
        this.selectedTaskInfo.push(row);

//        this.getTroubleList();
//        this.getSituationList();
        //if( _this.taskContentData.length == 0) {
          $.ajax({
            url: _this.fetchTaskContentDetailURL,
            type: 'POST',
            dataType: 'json',
            data: {"task_number": row.task_number},
            success: function (data) {
              _this.isError = data.status == 0;
              if (!_this.isError) {
                _this.taskContentData = data.info;
              } else {
                showMessage(_this, '获取作业内容失败！', 0);
              }
            },
            error: function (info) {
              showMessage(_this, '服务器访问出错！', 0);
            }
          })
          $.ajax({
            url: _this.fetchPortNameURL,
            type: 'POST',
            dataType: 'json',
            data: {"task_number": row.task_number},
            success: function (data) {
              _this.isError = data.status == 0;
              if (!_this.isError) {
                _this.portName = data.info;
              } else {
                showMessage(_this, '获取作业段名称失败！', 0);
              }
            },
            error: function (info) {
              showMessage(_this, '服务器访问出错！', 0);
            }
          })
        //}
      },

      handleSelect(id) {
        for(let i=0; i<this.trainColumn.length; i++){
          if(this.trainColumn[i].id == id) {
            this.form.train_model = this.trainColumn[i].train_model;
            this.form.train_group = this.trainColumn[i].train_group;
            break;
          }
        }
      },

      fetchRepairInfo() {
        $.ajax({
          url: _this.fetchRepairInfoURL,
          type: 'GET',
          success: function (data) {
            _this.isError = data.status == 0;
            if (!_this.isError) {
              //TODO:
              _this.repairInfo = data.info
            } else {
              showMessage(_this, '获取修程信息失败！', 0);
            }
          },
          error: function (info) {
            showMessage(_this, '服务器访问出错！', 0);
          }
        })
      },

      fetchDepartmentRelatedInfo() {
        $.ajax({
          url: _this.fetchDepartRelInfoURL,
          type: 'POST',
          dataType: 'json',
          data: {"department_no": _this.currentDepartmentStr},
          success: function (data) {
            _this.isError = data.status == 0;
            if (!_this.isError) {
              _this.stationStack = data.info.station_stack;
              _this.trainColumn = data.info.train_column;
              _this.trainModel = data.info.train_model;
              _this.taskContent = data.info.task_content;
              _this.workGroup = data.info.work_group;
            } else {
              showMessage(_this, '获取部门相关信息失败！', 0);
            }
          },
          error: function (info) {
            showMessage(_this, '服务器访问出错！', 0);
          }
        })
      },
      fetchTaskCount(){
        //alert(this.currentDepartment)
        $.ajax({
          url: _this.fetchTaskCountURL,
          type: 'POST',
          dataType: 'json',
          data: _this.prepareFilter(),
          success: function (data) {
            _this.isError = data.status == 0;
            if (!_this.isError) {
              //TODO:
              let total = parseInt(data.info)
              _this.totalPage = parseInt(data.info)
              _this.fetchTask()
            } else {
              _this.isError = true;
              _this.errorMsg = '获取小组信息失败！'
            }
          },
          error: function (info) {
            _this.isError = true;
            _this.errorMsg = '服务器访问出错';
          }
        })
      },
      getTroubleList(){
        $.ajax({
          url: _this.getTroubleUrl,
          type: 'POST',
          dataType: 'json',
          data: {"department_no": _this.currentDepartmentStr},
          success: function (data) {
            if (data.status) {
              _this.troubleList = data.info;
            }
          }
        })
      },
      getSituationList() {
        $.ajax({
          url: _this.getSituationUrl,
          type: 'POST',
          dataType: 'json',
          data: {"department_no": _this.currentDepartmentStr},
          success: function (data) {
            if (data.status) {
              _this.situationList = data.info;
            }
          }
        })
      },
      fetchDepartmentUsers() {
        $.ajax({
          url: _this.getPersonUrl,
          type: 'POST',
          dataType: 'json',
          data: {"department_no":_this.currentDepartmentStr},
          success: function (data) {
            _this.isError = data.status == 0;
            if (!_this.isError) {
              _this.departmentUsers = data.info
              //alert(JSON.stringify(_this.departmentUsers));
            } else {
              showMessage(_this, '获取部门用户失败！', 0);
            }
          },
          error: function (info) {
            showMessage(_this, '服务器访问出错！', 0);
          }
        })
      },

      prepareFilter(){
        let postData = copyObject(this.form)
        if(this.form.task_date.length == 2) {
          let start = this.form.task_date[0]
          let end  = this.form.task_date[1]
          postData.task_date[0] = new Date(start).format("yyyy-MM-dd");
          postData.task_date[1] = new Date(end).format("yyyy-MM-dd");
          //修复“X”除日期以后的bug,原本“X”除后时间default变为1970-01-01
          if(postData.task_date[0] == "1970-01-01" && postData.task_date[1] == "1970-01-01" ) {
            postData.task_date = null;
          }
        }
        if(this.form.task_time != "") {
          postData.task_time = new Date(this.form.task_time).format("hh:mm:ss");
        }
//        alert(postData.task_date)
        if(isNull(postData.department_no) || postData.department_no == "") {
          postData.department_no = _this.currentDepartmentStr;
        }
        postData.start_record = _this.startRecord;
        postData.page_size = _this.pageSize;

        //default state is finished
        postData.state = "3";

        return postData;
      },

      fetchTask() {

        $.ajax({
          url: _this.fetchTaskURL,
          type: 'POST',
          dataType: 'json',
          data: this.prepareFilter(),
          success: function (data) {
            _this.isError = data.status == 0;
            if (!_this.isError) {
              _this.tableData = data.info
              //showMessage(_this, '获取作业任务成功！', 1);
            } else {
              showMessage(_this, '获取作业任务失败！', 0);
            }
          },
          error: function (info) {
            showMessage(_this, '服务器访问出错！', 0);
          }
        })
      },
      tableRowClass(row, index) {

        //getTaskStatus()
        if (row.state === "1") {
          return 'not-start-row';
        } else if (row.state === "2") {
          return 'working-row';
        } else if (row.state === "3") {
          return 'finished-row';
        }else if (row.state === "4") {
          return 'canceled-row';
        }
        return '';
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
      }
    },

    filters: {
      filterTaskContent(id){
        let result = ''
        for(let i=0; i< _this.taskContent.length; i++) {
          if(id == _this.taskContent[i].id) {
            result = _this.taskContent[i].task_content;
            break;
          }
        }
        return result;
      },
      filterTrainColumnName(id){
        let result = ''
        for(let i=0; i< _this.trainColumn.length; i++) {
          if(id == _this.trainColumn[i].id) {
            result = _this.trainColumn[i].train_column;
            break;
          }
        }
        return result;
      },
      filterTrainModelName(id){
        let result = ''
        for(let i=0; i< _this.trainModel.length; i++) {
          if(id == _this.trainModel[i].id) {
            result = _this.trainModel[i].train_model;
            break;
          }
        }
        return result;
      },
      filterStationTrackName(id){
        let result = ''
        for(let i=0; i< _this.stationStack.length; i++) {
          if(id == _this.stationStack[i].id) {
            result = _this.stationStack[i].station_track_no;
            break;
          }
        }
        return result;
      },
      filterRepairName(id){
        let result = ''
        for(let i=0; i< _this.repairInfo.length; i++) {
          if(id == _this.repairInfo[i].id) {
            result = _this.repairInfo[i].name;
            break;
          }
        }
        return result;
      },
      filterStatusName(value){
        let result = ''
        for(let i=0; i< getTaskStatus().length; i++) {
          if(value == getTaskStatus()[i].value) {
            result = getTaskStatus()[i].name;
            break;
          }
        }
        return result;
      },
      filterWorkGroupName(no){
        let result = ''
        for(let i=0; i< _this.workGroup.length; i++) {
          if(no == _this.workGroup[i].work_group_no) {
            result = _this.workGroup[i].work_group_name;
            break;
          }
        }
        return result;
      },
      filterTrainGroup(id) {
        if(id == 1) {
          return 8;
        } else if( id == 2){
          return 16;
        }
      },
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
      filterUserName(account) {
        let result = '';
        for(let i=0; i< _this.departmentUsers.length; i++) {
          if(account == _this.departmentUsers[i].account) {
            result = _this.departmentUsers[i].name;
            break;
          }
        }
        return result;
      },
      filterTaskContentStatusName(value){
        let result = '';
        for(let i=0; i< getTaskContentStatus().length; i++) {
          if(value == getTaskContentStatus()[i].value) {
            result = getTaskContentStatus()[i].name;
            break;
          }
        }
        return result;
      },
      filterSituationName(id) {
        let result = '';
        for(let i=0; i< _this.situationList.length; i++) {
          if(id == _this.situationList[i].id) {
            result = _this.situationList[i].situation_content;
            break;
          }
        }
        return result;
      },
      filterTroubleName(id) {
        let result = '';
        for(let i=0; i< _this.troubleList.length; i++) {
          if(id == _this.troubleList[i].id) {
            result = _this.troubleList[i].content;
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

      this.statusArr = getTaskStatus();
      //获取修程信息（与部门无关）
      this.fetchRepairInfo();
      this.fetchDepartmentRelatedInfo();
      this.fetchTaskCount();
      this.fetchDepartmentUsers();

      this.getTroubleList();
      this.getSituationList();
    },
    mounted: function () {

    },
  }

</script>
<style>
  .el-table .not-start-row {
    background: #ff9999;
  }
  .el-table .working-row {
    background: lightblue;
  }
  .el-table .canceled-row {
    background: #99A9BF;
  }
  .el-table .finished-row {
    background: lightgreen;
  }
</style>
