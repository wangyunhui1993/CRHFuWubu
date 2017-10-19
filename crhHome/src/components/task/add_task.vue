<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml">
    <div>
        <el-col :span="24" class="breadcrumb-container">
            <div class="title">作业管理 / 添加作业计划</div>
        </el-col>

        <el-col class="well well-lg" style="background-color: white;">
            <el-form :inline="true" :model="form" class="demo-form-inline"
                     labelPosition="left"
                     label-width="90px" >

                <div class="col-sm-4">
                    <el-form-item label="作业日期：">
                        <el-date-picker
                                v-model="form.task_date"
                                type="date"
                                placeholder="请选择日期"
                                style="width: 200px">
                        </el-date-picker>
                    </el-form-item>
                    <el-form-item label="作业时间：">
                        <el-time-picker
                                v-model="form.task_time"
                                placeholder="请选择时间"
                                format="HH:mm"
                                style="width: 200px">
                        </el-time-picker>
                    </el-form-item>
                    <el-form-item label="作业班组：">
                        <el-select v-model="form.work_group_no" placeholder="选择组别"
                                   style="width: 200px">
                            <el-option v-for="item in workGroup" :label="item.work_group_name"
                                       :value="item.work_group_no"></el-option>
                        </el-select>
                    </el-form-item>
                </div>
                <div class="col-sm-4">
                    <el-form-item label="车列号：" style="margin-left: -15px;"/>
                        <el-select v-model="form.train_column"
                                   filterable
                                   placeholder="搜索车列号"
                                   style="width: 200px"
                                   @change="handleSelect">
                            <el-option
                                    v-for="item in trainColumn"
                                    :label="item.train_column"
                                    :value="item.id">
                            </el-option>
                        </el-select>
                    </el-form-item>
                    <el-form-item label="车型：">
                            <el-input style="width: 200px" :readonly="true"
                                      :value="form.train_model | filterTrainModelName"></el-input>
                    </el-form-item>
                    <el-form-item label="车列编组：">
                            <el-input :value="form.train_group | filterTrainGroup"
                                      style="width: 200px"
                                      :readonly="true"></el-input>
                    </el-form-item>
                </div>
                <div class="col-sm-4">

                    <el-form-item label="股道：">
                        <el-select v-model="form.station_track_no" placeholder="选择股道"
                                   style="width: 200px;">
                            <el-option v-for="item in stationStack" :label="item.station_track_no"
                                       :value="item.id"></el-option>
                        </el-select>
                    </el-form-item>
                    <el-form-item label="车次：">
                        <el-input v-model="form.train_number" style="width: 200px;"></el-input>
                    </el-form-item>
                </div>


                <div class="col-sm-12" style="width: 100%;">
                    <div class="col-sm-3" style="margin-left: -15px;">
                        <el-form-item label="作业内容：" />
                        <div class="panel panel-default"
                             style="margin-top: 10px; background-color: #F9FAFC; width: 200px;overflow-y:scroll; ">
                            <ul style="margin-left: 0px;padding-left: 0px; height: 300px">
                                <li v-for="(item,index) in taskContent"
                                    style="list-style-type:none; margin-left: 10px">
                                    <el-checkbox style="font-weight: normal" @change="parentCheck(item)"
                                                 v-model="checkedList[index]">{{item.task_content}}
                                    </el-checkbox>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <div class="col-sm-3">
                        <el-form-item label="已选：" />
                        <div class="panel panel-default"
                             style="margin-top: 10px; background-color: #F9FAFC; width: 200px;overflow-y:scroll; "
                             v-if="form.choosed_content.length > 0">
                            <ul style="margin-left: 0px;padding-left: 0px; height: 300px">
                                <li v-for="(item,index) in form.choosed_content"
                                    style="list-style-type:none; margin-left: 10px">
                                    <el-tag style="margin-left: 3px; font-size: 14px" type="primary">
                                        {{item.task_content}}
                                    </el-tag>
                                </li>
                            </ul>
                        </div>
                        <div v-else style="color: #FF4949">暂无作业内容~</div>

                    </div>
                    <div class="col-sm-3">
                        <el-form-item label="修程："/>
                        <el-select v-model="form.repair_id" placeholder="选择修程" style="width: 200px;"
                                   @change="onRepairChanged">
                            <el-option v-for=" item in repairInfo" :label="item.name" :value="item.id">
                            </el-option>

                        </el-select>

                    </div>
                    <div class="col-sm-3">
                        <el-form-item label="修程项目："/>
                        <div
                                class="panel panel-default"
                                style="background-color: #F9FAFC; width: 222px;overflow-y:scroll; ">
                            <ul style="margin-left: 0px;padding: 5px; height: 200px;">
                                <el-checkbox-group v-model="form.choosed_repair_category">
                                    <li v-for="(item,index) in repairCategory"
                                        style="list-style-type:none; margin-left: 10px">
                                        <el-checkbox style="font-weight: normal"
                                                     :label="item" :key="item">{{item}}
                                        </el-checkbox>
                                    </li>
                                </el-checkbox-group>

                            </ul>
                        </div>

                    </div>
                </div>
            </el-form>
            <el-alert v-if="isError" style="padding: 5px;background-color: #ff9999; width: 100%"
                      :title="errorMsg"
                      type="error"
                      :closable="false"
                      show-icon>
            </el-alert>
            <div class="col-sm-3" style="display: inline; text-align: center;margin-top: 20px;">
                <el-button style="margin-right: 10px; width: 100px;" @click="reset">重置</el-button>
                <el-button type="primary" style="width: 100px" @click="submitTask">确认</el-button>
            </div>
        </el-col>
    </div>
</template>

<script>
    import Vue from 'vue'
    let _this
    export default {
        name: "add_work",
        components: {},
        data () {
            _this = this;
            return {
                fetchSubDepartmentsURL: HOME + "DepartmentInfo/fetchSubDepartments",
                fetchRepairInfoURL: HOME + "RepairInfo/getRecords",
                fetchDepartRelInfoURL: HOME + "TaskPlan/fetchDepartRelInfo",
                addUrl: HOME + "TaskPlan/addData",
                editUrl: HOME + "TaskPlan/modifyData",
                form: {
                    task_date: Date.now(),
                    task_time: "",
                    station_track_no: "",
                    train_number: '',
                    train_column: "",
                    train_model: "",
                    train_group: "",
                    repair_id: "",
                    work_group_no: "",
                    choosed_content: [],
                    choosed_repair_category: [],
                },
                isError: false,
                errorMsg: '',
                department: [],//部门
                repairInfo: [],//修程
                stationStack: [],//股道
                workGroup: [],//作业班组
                taskContent: [],//作业内容
                trainColumn: [],//车列号相关
                trainModel: [],//车型相关
                checkedList: [],
                repairCategory: [],
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
                if (!iserror && isStringEmpty(formObj.train_group)) {
                    iserror = true;
                    this.errorMsg = "车列编组不能为空！"
                }
                if (!iserror && isStringEmpty(formObj.repair_id)) {
                    iserror = true;
                    this.errorMsg = "修程不能为空！"
                }
                if (!iserror && isStringEmpty(formObj.work_group_no)) {
                    iserror = true;
                    this.errorMsg = "作业班组不能为空！"
                }
                if (!iserror && formObj.choosed_content.length == 0) {
                    iserror = true;
                    this.errorMsg = "作业内容不能为空！"
                }
                return iserror;
            },

            reset() {
                this.form.task_date = Date.now();
                this.form.task_time = "";
                this.form.train_number = "";
                this.form.train_column = "";
                this.form.station_track_no = "";
                this.form.train_model = "";
                this.form.train_group = "";
                this.form.repair_id = "";
                this.form.work_group_no = "";
                this.form.choosed_content = [];
                this.form.choosed_repair_category = [];
                this.errorMsg = "";
                this.isError = false;

                for (let j = 0; j < this.checkedList.length; j++) {
                    this.checkedList[j] = 0
                }
            },

            submitTask() {
                _this.isError = this.validateForm(this.form);

                if (!_this.isError) {
                    let postData = copyObject(this.form)
                    postData.repair_category = postData.choosed_repair_category.join(',');
                    postData.task_date = new Date(this.form.task_date).format("yyyy-MM-dd");
                    postData.task_time = new Date(this.form.task_time).format("hh:mm:ss");
//            let contentStr = "";
//            for(let i=0; i< this.form.choosed_content.length; i++) {
//              if(i != this.form.choosed_content.length -1) {
//                contentStr += this.form.choosed_content[i].id;
//                contentStr += ","
//              } else {
//                contentStr += this.form.choosed_content[i].id;
//              }
//            }
//            //alert(contentStr)
//            postData.choosed_content = contentStr;
                    postData.department_no = this.userInfo.department_no;
                    $.ajax({
                        url: _this.addUrl,
                        type: 'POST',
                        dataType: 'json',
                        data: postData,
                        success: function (data) {
                            _this.isError = data.status == 0;
                            if (!_this.isError) {
                                showMessage(_this, '添加作业任务成功！', 1);
                                //_this.reset()
                            } else {
                                showMessage(_this, '添加作业任务失败！', 0);
                            }
                        },
                        error: function (info) {
                            showMessage(_this, '服务器访问出错！', 0);
                        }
                    })
                }
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

            //选择作业内容
            parentCheck(item) {
                var exist = false
                for (let i = 0; i < this.form.choosed_content.length; i++) {
                    if (this.form.choosed_content[i].id == item.id) {
                        this.form.choosed_content.splice(i, 1);
                        exist = true;
                        break;
                    }
                }
                if (!exist) {
                    this.form.choosed_content.push(item)
                }
            },
            onCheckCategory(item) {
                var exist = false
                for (let i = 0; i < this.form.choosed_repair_category.length; i++) {
                    if (this.form.choosed_repair_category[i] == item) {
                        this.form.choosed_repair_category.splice(i, 1);
                        exist = true;
                        break;
                    }
                }
                if (!exist) {
                    this.form.choosed_repair_category.push(item)
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
                            //TODO:
                            _this.stationStack = data.info.station_stack;
                            _this.workGroup = data.info.work_group;
                            _this.taskContent = data.info.task_content;
                            _this.trainColumn = data.info.train_column;
                            _this.trainModel = data.info.train_model;
                            for (let i = 0; i < _this.taskContent.length; i++) {
                                _this.checkedList.push(0)
                            }
                        } else {
                            showMessage(_this, '获取部门相关信息失败！', 0);
                        }
                    },
                    error: function (info) {
                        showMessage(_this, '服务器访问出错！', 0);
                    }
                })
            },
            onRepairChanged()
            {

                _this.form.choosed_repair_category = [];
                _this.repairCategory = [];
                for (var i = 0; i < _this.repairInfo.length; i++) {
                    if (_this.repairInfo[i].id == _this.form.repair_id) {
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
            filterTrainModelName(id) {
                let result = ''
                for (let i = 0; i < _this.trainModel.length; i++) {
                    if (id == _this.trainModel[i].id) {
                        result = _this.trainModel[i].train_model;
                        break;
                    }
                }
                return result;
            },
            filterTrainGroup(id) {
                if (id == 1) {
                    return 8;
                } else if (id == 2) {
                    return 16;
                }
            }
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

            //获取修程信息（与部门无关）
            this.fetchRepairInfo();
            this.fetchDepartmentRelatedInfo()
        },
        mounted: function () {
//      this.trainLineNumbers = this.loadAll();
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
        font-weight: bold;
    }
</style>
