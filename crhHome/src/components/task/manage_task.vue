<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml">
    <div>
        <el-col :span="24" class="breadcrumb-container">
            <div class="title">作业管理 / 作业计划管理</div>
        </el-col>

        <el-col class="well well-lg" style="background-color: white;">

            <el-form :inline="true" :model="form">

                <el-col :span="6">
                    <el-form-item label="车列号：">
                        <el-select v-model="form.train_column" clearable filterable placeholder="搜索车列号"
                                   style="width: 200px" @change="handleSelect">
                            <el-option
                                    v-for="item in trainColumn"
                                    :label="item.train_column"
                                    :value="item.id">
                            </el-option>
                        </el-select>
                    </el-form-item>
                    <el-form-item label="股道：">
                        <el-select v-model="form.station_track_no" clearable placeholder="选择股道"
                                   style="width: 200px;margin-left: 13px">
                            <el-option v-for="item in stationStack" :label="item.station_track_no"
                                       :value="item.id"></el-option>
                        </el-select>
                    </el-form-item>
                </el-col>
                <el-col :span="8">
                    <el-form-item label="作业日期：">
                        <el-date-picker
                                format="yyyy-MM-dd"
                                v-model="form.task_date"
                                type="daterange"
                                placeholder="选择日期范围">
                        </el-date-picker>
                        <el-button type="primary" @click="toToday">今天</el-button>
                    </el-form-item>
                    <el-form-item label="修程：">
                        <el-select v-model="form.repair_id" clearable placeholder="选择修程"
                                   style="width: 222px;margin-left: 25px">
                            <el-option v-for=" item in repairInfo" :label="item.name" :value="item.id">
                            </el-option>

                        </el-select>
                    </el-form-item>
                </el-col>
                <el-col :span="10">
                    <el-form-item label="部门：">
                        <el-select v-model="form.department_no" clearable placeholder="选择部门" style="width: 200px">
                            <el-option
                                    v-for="item in department"
                                    v-bind:value="item.department_no"
                                    v-bind:label="item.department_name">
                            </el-option>
                        </el-select>
                    </el-form-item>
                </el-col>
                <el-col :span="6">
                    <el-form-item label="状态：">
                        <el-select v-model="form.state" placeholder="选择状态" clearable style="width: 200px">
                            <el-option v-for="item in statusArr" :label="item.name" :value="item.value"></el-option>
                        </el-select>
                    </el-form-item>
                </el-col>
                <el-col :span="4">
                    <el-button type="primary" icon="search" @click="search">搜索</el-button>
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
                        <span>{{scope.$index +1}}</span>
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
                        width="70"
                        prop="train_number"
                        label="车次">
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
                                <el-tag>{{item | filterTaskContent}}</el-tag>
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
                <el-table-column label="操作" width="200">
                    <template scope="scope">
                        <el-button
                                size="small"
                                type="primary"
                                :disabled="scope.row | modifyBtnState"
                                @click="handleEdit(scope.$index, scope.row)">编辑
                        </el-button>
                        <el-button
                                size="small"
                                type="warning"
                                :disabled="scope.row | deleteBtnState"
                                @click="handleDelete(scope.$index, scope.row)">删除
                        </el-button>
                        <el-button
                                size="small"
                                type="danger"
                                :disabled="scope.row | cancelBtnState"
                                @click="handleCancel(scope.$index, scope.row)">取消
                        </el-button>
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
        <el-dialog title="编辑作业" v-model="modifyDialogVisible" size="small">
            <el-form :model="modifyForm">
                <el-row>
                    <el-col :span="12">
                        <el-form-item label="作业日期：" :label-width="formLabelWidth" style="width: 225px">
                            <el-date-picker
                                    style="width: 225px"
                                    type="date"
                                    v-model="modifyForm.task_date"
                                    placeholder="选择作业日期">
                            </el-date-picker>
                        </el-form-item>
                    </el-col>
                    <el-col :span="12">
                        <el-form-item label="作业时间：" :label-width="formLabelWidth" style="width: 225px">
                            <el-time-picker
                                    style="width: 225px"
                                    type="time"
                                    v-model="modifyForm.task_time"
                                    placeholder="选择作业时间">
                            </el-time-picker>
                        </el-form-item>
                    </el-col>
                </el-row>
                <el-row>
                    <el-col :span="12">
                        <el-form-item label="车次：" :label-width="formLabelWidth">
                            <el-input v-model="modifyForm.train_number" style="width: 225px"></el-input>
                        </el-form-item>
                    </el-col>
                    <el-col :span="12">
                        <el-form-item label="股道：" :label-width="formLabelWidth">
                            <el-select v-model="modifyForm.station_track_no" clearable placeholder="选择股道"
                                       style="width: 225px">
                                <el-option v-for="item in stationStack" :label="item.station_track_no"
                                           :value="item.id"></el-option>
                            </el-select>
                        </el-form-item>
                    </el-col>
                </el-row>
                <el-row>
                    <el-col :span="12">
                        <el-form-item label="车列号：" :label-width="formLabelWidth">
                            <el-select v-model="modifyForm.train_column" clearable placeholder="选择车列号"
                                       style="width: 225px">
                                <el-option v-for="item in trainColumn" :label="item.train_column"
                                           :value="item.id"></el-option>
                            </el-select>
                        </el-form-item>
                    </el-col>
                    <el-col :span="12">
                        <el-form-item label="车型：" :label-width="formLabelWidth">
                            <el-select v-model="modifyForm.train_model" clearable placeholder="选择修程"
                                       style="width: 225px">
                                <el-option v-for="item in trainModel" :label="item.train_model"
                                           :value="item.id"></el-option>
                            </el-select>
                        </el-form-item>
                    </el-col>
                </el-row>
                <el-row>
                    <el-col :span="12">
                        <el-form-item label="修程：" :label-width="formLabelWidth">
                            <el-select v-model="modifyForm.repair_id"
                                       @change="onRepairChanged"
                                       clearable placeholder="选择修程" style="width: 225px">
                                <el-option v-for="item in repairInfo" :label="item.name" :value="item.id"></el-option>
                            </el-select>
                        </el-form-item>
                    </el-col>

                    <el-col :span="12">
                        <el-form-item label="作业内容：" :label-width="formLabelWidth">
                            <template scope="scope">
                                <el-select
                                        style="width: 225px"
                                        v-model="modifyForm.task_content_list"
                                        multiple
                                        filterable
                                        placeholder="选择作业内容">
                                    <el-option
                                            v-for="item in taskContent"
                                            :label="item.task_content"
                                            :value="item.id">
                                        <span style="float: left">{{ item.task_content }}</span>
                                        <span style="float: right; color: #8492a6; font-size: 13px; margin-right: 30px">
                                    {{ item.department_no | filterDepartmentName}}
                                </span>
                                    </el-option>
                                </el-select>
                            </template>
                        </el-form-item>
                    </el-col>
                </el-row>

                <el-row>
                    <el-col :span="12">
                        <el-form-item label="修程项目：" :label-width="formLabelWidth">
                            <el-select v-model="choosed_repair_category"
                                       multiple
                                       placeholder="请选择">
                                <el-option
                                        v-for="item in repairCategory"
                                        :value="item"
                                        :label="item"
                                >
                                {{item}}
                                </el-option>
                            </el-select>
                        </el-form-item>
                    </el-col>
                    <el-col :span="12">
                        <el-form-item label="作业组别" :label-width="formLabelWidth">
                            <template scope="scope">
                                <el-select v-model="modifyForm.work_group_no" clearable placeholder="选择组别"
                                           style="width: 225px">
                                    <el-option v-for="item in workGroup" :label="item.work_group_name"
                                               :value="item.work_group_no"></el-option>
                                </el-select>
                            </template>
                        </el-form-item>
                    </el-col>
                    <!--<el-col :span="12" >-->
                    <!--<el-form-item label="状态" :label-width="formLabelWidth">-->
                    <!--<template scope="scope">-->
                    <!--<el-select v-model="modifyForm.state" clearable placeholder="选择状态" style="width: 225px">-->
                    <!--<el-option v-for="item in statusArr" :label="item.name" :value="item.value"></el-option>-->
                    <!--</el-select>-->
                    <!--</template>-->
                    <!--</el-form-item>-->
                    <!--</el-col>-->
                </el-row>
            </el-form>
            <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
                      :title="errorMsg"
                      type="error"
                      :closable="false"
                      show-icon>
            </el-alert>
            <div slot="footer" class="dialog-footer" style="margin-bottom: 20px; margin-right: 130px">
                <el-button @click="modifyDialogVisible = false">取 消</el-button>
                <el-button type="primary" @click="onEdit">确 定</el-button>
            </div>
        </el-dialog>
        <el-dialog title="提示" v-model="deleteConfirmVisible" size="tiny">
            <span>确认要删除序号为[ <b>{{deleteIndex+1}}</b> ]的作业任务吗？</span>
            <span slot="footer" class="dialog-footer">
	    <el-button @click="deleteConfirmVisible = false">取 消</el-button>
	    <el-button type="primary" @click="onConfirmDelete">确 定</el-button>
	  </span>
        </el-dialog>

        <el-dialog title="提示" v-model="cancelConfirmVisible" size="tiny">
            <span>确认要取消序号为[ <b>{{deleteIndex+1}}</b> ]的作业任务吗？</span>
            <span slot="footer" class="dialog-footer">
	    <el-button @click="cancelConfirmVisible = false">取 消</el-button>
	    <el-button type="primary" @click="onConfirmCancel">确 定</el-button>
	  </span>
        </el-dialog>
    </div>
</template>

<script>
    import Vue from 'vue'
    let _this
    export default {
        name: "manage_work",
        components: {},
        data () {
            _this = this
            return {
                fetchRepairInfoURL: HOME + "RepairInfo/getRecords",
                fetchDepartRelInfoURL: HOME + "TaskPlan/fetchDepartRelInfo",
                fetchTaskURL: HOME + "TaskPlan/getRecords",
                fetchTaskCountURL: HOME + "TaskPlan/getRecordsCount",
                modifyTaskURL: HOME + "TaskPlan/modifyData",
                deleteTaskURL: HOME + "TaskPlan/deleteData",
                form: {
                    train_column: '',
                    task_date: [],
                    department_no: "",
                    station_track_no: "",
                    repair_id: "",
                    state: ""
                },
                modifyForm: {
                    task_date: "",
                    task_time: "",
                    train_number: "",
                    station_track_no: "",
                    train_column: "",
                    train_model: "",
                    repair_id: "",
                    task_content_list: [],
                    task_group_no: "",
                    state: ""
                },
                userInfo: "",
                statusArr: [],
                tableData: [],
                //分页
                totalPage: 1,
                pageSize: EveryPageNum,//每一页的num
                currentPage: 1,
                startRecord: 0,

                isError: false,
                errorMsg: '',
                selectedItem: {},
                deleteIndex: -1,
                modifyDialogVisible: false,
                formLabelWidth: '100px',
                deleteConfirmVisible: false,//删除确认
                cancelConfirmVisible: false,//取消确认

                department: [],//部门
                repairInfo: [],//修程
                stationStack: [],//股道
                taskContent: [],//作業任務
                trainColumn: [],//车列号相关
                trainModel: [],//车型
                workGroup: [],//作业班组,
                repairCategory: [],
                choosed_repair_category: [],
            }
        },
        methods: {
            validateForm(formObj)
            {
                var iserror = false;
                if (formObj.task_date == null || formObj.task_date == "") {
                    iserror = true;
                    this.errorMsg = "作业日期不能为空！"
                }
                if (formObj.task_time == null || formObj.task_time == "") {
                    iserror = true;
                    this.errorMsg = "作业时间不能为空！"
                }
                if (!iserror && isStringEmpty(formObj.station_track_no)) {
                    iserror = true;
                    this.errorMsg = "股道不能为空！"
                }
//        if (!iserror && isStringEmpty(formObj.train_number)) {
//          iserror = true;
//          showMessage(this,"车次信息不能为空！", 0);
//        }
                if (!iserror && isStringEmpty(formObj.train_column)) {
                    iserror = true;
                    this.errorMsg = "车列号不能为空！"
                }
                if (!iserror && isStringEmpty(formObj.train_model)) {
                    iserror = true;
                    this.errorMsg = "车型不能为空！"
                }
//          if (!iserror && isStringEmpty(formObj.train_group)) {
//              iserror = true;
//              this.errorMsg="车列编组不能为空！"
//          }
                if (!iserror && isStringEmpty(formObj.repair_id)) {
                    iserror = true;
                    this.errorMsg = "修程不能为空！"
                }
                if (!iserror && isStringEmpty(formObj.work_group_no)) {
                    iserror = true;
                    this.errorMsg = "班组不能为空！"
                }
                if (!iserror && formObj.task_content_list.length == 0) {
                    iserror = true;
                    this.errorMsg = "作业内容不能为空！"
                }
                return iserror;
            },

            toToday(){
                this.form.task_date = [Date.now(), Date.now()]
            },

            search() {
                this.fetchTaskCount()
            },

            handleSizeChange(val) {
//        console.log(`每页 ${val} 条`);
            },

            handleCurrentChange(val) {
                this.currentPage = val;
                this.startRecord = this.pageSize * (this.currentPage - 1)
                this.fetchTaskCount();
            },

            handleEdit(index, item) {
                this.modifyForm = copyObject(item);
                this.modifyDialogVisible = true;
                for (var i = 0; i < _this.repairInfo.length; i++) {
                    if (_this.repairInfo[i].id == _this.modifyForm.repair_id) {
                        _this.repairCategory = _this.repairInfo[i].category.split(',');
                        break;
                    }
                }
                this.choosed_repair_category = item.repair_category == null || item.repair_category == '' ? [] : item.repair_category.split(',');
                this.modifyForm.task_time = new Date("1970-1-1 " + this.modifyForm.task_time);
                this.modifyDialogVisible = false;
                this.modifyDialogVisible = true;


            },

            onEdit() {
                _this.isError = this.validateForm(this.modifyForm);
                if (!_this.isError) {
                    let postData = copyObject(this.modifyForm)
                    postData.repair_category = _this.choosed_repair_category.join(',');
                    postData.task_date = new Date(this.modifyForm.task_date).format("yyyy-MM-dd");
                    postData.task_time = new Date(this.modifyForm.task_time).format("hh:mm:ss");
//              let contentStr = "";
//              for(let i=0; i< postData.task_content_list.length; i++) {
//                  if(i != postData.task_content_list.length -1) {
//                      contentStr += postData.task_content_id[i];
//                      contentStr += ","
//                  } else {
//                      contentStr += postData.task_content_id[i];
//                  }
//              }
//              //alert(contentStr)
//              postData.task_content_id = contentStr;
//              postData.department_no = this.userInfo.department_no;
                    $.ajax({
                        url: _this.modifyTaskURL,
                        type: 'POST',
                        dataType: 'json',
                        data: postData,
                        success: function (data) {
                            _this.isError = data.status == 0;
                            if (!_this.isError) {
                                _this.modifyDialogVisible = false
                                _this.fetchTaskCount()
                                showMessage(_this, '修改作业任务成功！', 1);

                            } else {
                                _this.errorMsg = '修改作业任务失败'
                            }
                        },
                        error: function (info) {
                            showMessage(_this, '服务器访问出错！', 0);
                        }
                    })
                }
            },


            handleDelete(index, item) {
                this.deleteIndex = index;
                this.selectedItem = item;
                this.deleteConfirmVisible = true;
            },
            onConfirmDelete() {
                $.ajax({
                    url: _this.deleteTaskURL,
                    type: 'POST',
                    dataType: 'json',
                    data: {"id": this.selectedItem.id, "task_number":this.selectedItem.task_number},
                    success: function (data) {
                        _this.isError = data.status == 0;
                        if (!_this.isError) {
                            _this.deleteConfirmVisible = false;
                            showMessage(_this, '删除作业任务成功！', 1);
                            _this.fetchTask()
                        } else {
                            showMessage(_this, '删除作业任务失败！', 0);
                        }
                    },
                    error: function (info) {
                        _this.isError = true;
                        _this.errorMsg = '服务器访问出错';
                    }
                })
            },
            handleCancel(index, item) {
                this.cancelConfirmVisible = true;
                this.selectedItem = item;
            },
            onConfirmCancel() {
                $.ajax({
                    url: _this.modifyTaskURL,
                    type: 'POST',
                    dataType: 'json',
                    data: {"id": this.selectedItem.id, "state": "4"},
                    success: function (data) {
                        _this.isError = data.status == 0;
                        if (!_this.isError) {
                            _this.cancelConfirmVisible = false;
                            showMessage(_this, '取消作业任务成功！', 1);
                            _this.selectedItem.state = "4"
                        } else {
                            showMessage(_this, '取消作业任务失败！', 0);
                        }
                    },
                    error: function (info) {
                        _this.isError = true;
                        _this.errorMsg = '服务器访问出错';
                    }
                })
            },

            handleSelect(id) {

                for (let i = 0; i < this.trainColumn.length; i++) {
                    if (this.trainColumn[i].id == id) {
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

            prepareFilter(){
                let postData = copyObject(this.form)
                if (this.form.task_date.length == 2) {
                    let start = this.form.task_date[0]
                    let end = this.form.task_date[1]
                    postData.task_date[0] = new Date(start).format("yyyy-MM-dd");
                    postData.task_date[1] = new Date(end).format("yyyy-MM-dd");
                    //修复“X”除日期以后的bug,原本“X”除后时间default变为1970-01-01
                    if (postData.task_date[0] == "1970-01-01" && postData.task_date[1] == "1970-01-01") {
                        postData.task_date = null;

                    }
                }
                if (this.form.task_time != "") {
                    postData.task_time = new Date(this.form.task_time).format("hh:mm:ss");
                }
//        alert(postData.task_date)
                if (isNull(postData.department_no) || postData.department_no == "") {
                    postData.department_no = _this.currentDepartmentStr;
                }
                postData.start_record = _this.startRecord;
                postData.page_size = _this.pageSize;
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
                } else if (row.state === "4") {
                    return 'canceled-row';
                }
                return '';
            },
            onRepairChanged()
            {
                _this.choosed_repair_category = [];
                _this.repairCategory = [];
                for (var i = 0; i < _this.repairInfo.length; i++) {
                    if (_this.repairInfo[i].id == _this.modifyForm.repair_id) {
                        _this.repairCategory = _this.repairInfo[i].category.split(',');
                        break;
                    }
                }
            },


        },
        computed: {
            currentDepartmentStr(){
                let $res = "";

                if (this.userInfo.department_no == "001") {
                    $res = "";//返回全部
                } else {
                    $res = this.userInfo.department_no;
                }
                return $res;
            }
        },

        filters: {
            filterTaskContent(id){
                let result = ''
                for (let i = 0; i < _this.taskContent.length; i++) {
                    if (id == _this.taskContent[i].id) {
                        result = _this.taskContent[i].task_content;
                        break;
                    }
                }
                return result;
            },
            filterTrainColumnName(id){
                let result = ''
                for (let i = 0; i < _this.trainColumn.length; i++) {
                    if (id == _this.trainColumn[i].id) {
                        result = _this.trainColumn[i].train_column;
                        break;
                    }
                }
                return result;
            },
            filterTrainModelName(id){
                let result = ''
                for (let i = 0; i < _this.trainModel.length; i++) {
                    if (id == _this.trainModel[i].id) {
                        result = _this.trainModel[i].train_model;
                        break;
                    }
                }
                return result;
            },
            filterStationTrackName(id){
                let result = ''
                for (let i = 0; i < _this.stationStack.length; i++) {
                    if (id == _this.stationStack[i].id) {
                        result = _this.stationStack[i].station_track_no;
                        break;
                    }
                }
                return result;
            },
            filterRepairName(id){
                let result = ''
                for (let i = 0; i < _this.repairInfo.length; i++) {
                    if (id == _this.repairInfo[i].id) {
                        result = _this.repairInfo[i].name;
                        break;
                    }
                }
                return result;
            },
            filterStatusName(value){
                let result = ''
                for (let i = 0; i < getTaskStatus().length; i++) {
                    if (value == getTaskStatus()[i].value) {
                        result = getTaskStatus()[i].name;
                        break;
                    }
                }
                return result;
            },
            filterWorkGroupName(no){
                let result = ''
                for (let i = 0; i < _this.workGroup.length; i++) {
                    if (no == _this.workGroup[i].work_group_no) {
                        result = _this.workGroup[i].work_group_name;
                        break;
                    }
                }
                return result;
            },
            filterDepartmentName(id) {
                let result = ''
                for (let i = 0; i < _this.department.length; i++) {
                    if (id == _this.department[i].department_no) {
                        result = _this.department[i].department_name;
                        break;
                    }
                }
                return result;
            },
            modifyBtnState(item) {
                if (_this.userInfo.department_no == "001") {
                    return false;
                } else {
                    if (item.state == "3") {
                        return true;
                    } else {
                        return false;
                    }
                }
            },
            deleteBtnState(item) {
                if (_this.userInfo.department_no == "001") {
                    return false;
                } else {
                    if (item.state == "3") {
                        return true;
                    } else {
                        return false;
                    }
                }
            },
            cancelBtnState(item) {
                if (_this.userInfo.department_no == "001") {
                    return false;
                } else {
                    if (item.state == "3") {
                        return true;
                    } else {
                        return false;
                    }
                }
            },

        },
        created: function () {
            this.userInfo = JSON.parse(sessionStorage.getItem('user'));
            //根据用户获取部分信息
            if (this.userInfo != null && this.userInfo.department_no != "001") {
                //非公司管理员
                this.department.push({
                    "department_no": this.userInfo.department_no,
                    "department_name": this.userInfo.department_name
                })
            } else {
                this.department = JSON.parse(sessionStorage.getItem('departments'));
            }

            this.statusArr = getTaskStatus();
            //获取修程信息（与部门无关）
            this.fetchRepairInfo();
            this.fetchDepartmentRelatedInfo();
            this.fetchTaskCount()
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
