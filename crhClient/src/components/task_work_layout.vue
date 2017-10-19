<template>
    <div class="bg_work_layout" :style="{'background-color': bgColor}">
        <h3 style="text-align: center; font-weight: bold" :style="{'color': headerColor}">{{currentDisplay.displayName}}</h3>
        <ul style="list-style-type: none">
            <li v-for="items in currentDisplay.workGroups">
                <el-row>
                    <el-col :span="3">
                        <div style="float: left; font-size: 15px">当班经理：</div>
                        <div style="color: red;float: left; font-weight: bold; font-size: 15px">{{filterUser(items.manager)}}</div>
                    </el-col>
                    <el-col :span="3">
                        <div style="float: left;  font-size: 15px">值班员：</div>
                        <div style="color: red;float: left; font-weight: bold; font-size: 15px">{{filterUser(items.watcher)}}</div>
                    </el-col>
                    <el-col :span="3">
                        <div style="float: left; font-size: 15px">调度员：</div>
                        <div style="color: red;float: left; font-weight: bold; font-size: 15px">{{filterUser(items.dispatcher)}}</div>
                    </el-col>
                    <el-col :span="3">
                        <div style="float: left; font-size: 15px">岗位人员：</div>
                        <div style="color: red;float: left; font-weight: bold; font-size: 15px">{{filterUser(items.staff)}}</div>
                    </el-col>
                </el-row>
            </li>
        </ul>
        <div style="float: right; margin-top: -30px; margin-right: 80px; color: red; font-weight: bold; font-size: 16px">
            {{current_time}} | {{current_day}}
        </div>
        <div class="well" style="height: 75%">
            <el-table
                    style="height: 100%"
                    :style="{'color': tableColor}"
                    :data="currentDisplay.taskPlans"
                    border>
                <el-table-column
                        min-width="80"
                        label="车列号">
                    <template scope="scope">
                        <div>
                            {{scope.row.train_column_name}}
                        </div>
                    </template>
                </el-table-column>
                <el-table-column
                        min-width="85"
                        label="车型">
                    <template scope="scope">
                        <div>
                            {{scope.row.train_model_name}}
                        </div>
                    </template>
                </el-table-column>
                <el-table-column
                        min-width="55"
                        label="股道">
                    <template scope="scope">
                        <div>
                            {{scope.row.station_track_name}}
                        </div>
                    </template>
                </el-table-column>
                <el-table-column
                        min-width="95"
                        prop="repair_id"
                        label="修程">
                    <template scope="scope">
                        <div>
                            {{scope.row.repair_name}}
                        </div>
                    </template>
                </el-table-column>
                <el-table-column
                        min-width="110"
                        prop="task_date"
                        label="作业日期">
                    <template scope="scope">
                        <div>
                            {{scope.row.task_date}}
                        </div>
                    </template>
                </el-table-column>
                <el-table-column
                        min-width="210"
                        prop="task_content_list"
                        label="作业内容">
                    <template scope="scope">
                        <ul style="list-style: none; margin-left: -30px">
                            <li style="float: left; margin-left: 3px" v-for=" item in scope.row.task_content_list">
                                <el-tag >{{item}}</el-tag>
                            </li>
                        </ul>
                    </template>
                </el-table-column>
                <el-table-column
                        min-width="80"
                        label="作业状态">
                    <template scope="scope">
                        <div :style="{'color': scope.row.task_state == 1 ? waitingColor
                          : scope.row.task_state == 2 ? workingColor
                          : scope.row.task_state == 3 ? finishColor
                          : scope.row.task_state == 4 ? 'gray' : ''}">
                            {{scope.row.task_state | filterStatusName}}
                        </div>
                    </template>
                </el-table-column>
                <el-table-column label="作业人员">
                    <el-table-column
                            prop="a_left"
                            :label="portName.a_left"
                            min-width="65">
                        <template scope="scope">
                            <ul style="list-style: none;">
                                <li style="margin-left: -35px" v-for=" item in scope.row.a_left">
                                    <el-tag v-show="item">{{item | filterUserName}}</el-tag>
                                </li>
                            </ul>
                        </template>
                    </el-table-column>
                    <el-table-column
                            prop="a_right"
                            :label="portName.a_right"
                            min-width="65">
                        <template scope="scope">
                            <ul style="list-style: none;">
                                <li style="margin-left: -35px" v-for=" item in scope.row.a_right">
                                    <el-tag v-show="item">{{item | filterUserName}}</el-tag>
                                </li>
                            </ul>
                        </template>
                    </el-table-column>

                    <el-table-column
                            prop="b_left"
                            :label="portName.b_left"
                            min-width="65">
                        <template scope="scope">
                            <ul style="list-style: none;">
                                <li style="margin-left: -35px" v-for=" item in scope.row.b_left">
                                    <el-tag v-show="item">{{item | filterUserName}}</el-tag>
                                </li>
                            </ul>
                        </template>
                    </el-table-column>
                    <el-table-column
                            prop="b_right"
                            :label="portName.b_right"
                            min-width="65">
                        <template scope="scope">
                            <ul style="list-style: none;">
                                <li style="margin-left: -35px" v-for=" item in scope.row.b_right">
                                    <el-tag v-show="item">{{item | filterUserName}}</el-tag>
                                </li>
                            </ul>
                        </template>
                    </el-table-column>
                </el-table-column>

                <el-table-column label="作业组长">
                    <el-table-column
                            prop="a_leader"
                            :label="portName.a_leader"
                            min-width="65">
                        <template scope="scope">
                            <ul style="list-style: none;">
                                <li style="margin-left: -35px" v-for=" item in scope.row.a_leader">
                                    <el-tag v-show="item">{{item | filterUserName}}</el-tag>
                                </li>
                            </ul>
                        </template>
                    </el-table-column>
                    <el-table-column
                            prop="b_leader"
                            :label="portName.b_leader"
                            min-width="65">
                        <template scope="scope">
                            <ul style="list-style: none;">
                                <li style="margin-left: -35px" v-for=" item in scope.row.b_leader">
                                    <el-tag v-show="item">{{item | filterUserName}}</el-tag>
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
                            min-width="65">
                        <template scope="scope">
                            <ul style="list-style: none;">
                                <li style="margin-left: -35px" v-for=" item in scope.row.a_quality">
                                    <el-tag v-show="item">{{item | filterUserName}}</el-tag>
                                </li>
                            </ul>
                        </template>
                    </el-table-column>
                    <el-table-column
                            prop="b_quality"
                            :label="portName.b_quality"
                            min-width="65">
                        <template scope="scope">
                            <ul style="list-style: none;">
                                <li style="margin-left: -35px" v-for=" item in scope.row.b_quality">
                                    <el-tag v-show="item">{{item | filterUserName}}</el-tag>
                                </li>
                            </ul>
                        </template>
                    </el-table-column>
                </el-table-column>
            </el-table>
        </div>
        <el-row style="margin-left: 10px; margin-right: 10px">
            <el-col :span="8">
                <el-col :span="6" style="font-weight: bold">
                    作业注意事项
                </el-col>
                <el-col :span="18">
                    <div :style="{'color': alertColor}" style="font-weight: bold">{{basicSetting.attention_content}}</div>
                </el-col>
            </el-col>
            <el-col :span="8">
                <el-col :span="5" style="font-weight: bold">
                    <div>
                        立标塑形
                    </div>
                    <div>
                        岗位语句
                    </div>
                </el-col>
                <el-col :span="19">
                    <div :style="{'color': alertColor}" style="font-weight: bold">{{basicSetting.moulding_content}}</div>
                </el-col>
            </el-col>
            <el-col :span="8">
                <el-col :span="4" style="font-weight: bold; ">
                        安全预想
                </el-col>
                <el-col :span="20">
                    <div :style="{'color': alertColor}" style="font-weight: bold">{{basicSetting.security_content}}</div>
                </el-col>
            </el-col>
        </el-row>
        <!--<button @click="jump">JUMP</button>-->
    </div>
</template>
<script>
    import Vue from 'vue';
    var _this;
    var timerInterval;
    export default {
        name: "task_work_layout",
        components: {},
        data () {
            _this = this;
            return {
                fetchCSTaskURL: HOME + "CsTask/getRecords",
                fetchUsersUrl: HOME + "User/getRecords",
                getPersonUrl: HOME + "User/searchRecords",
                getPortsURL: HOME + "TaskPort/getRecords",
                fetchCSBasicSettingURL: HOME + "CsBasicSetting/getRecord",
                userInfo: "",
                department: [],
                allUsers:[],
                task_plan:[],//length is the same as screen number
                currentDisplay:[],
                current_time: "",
                current_day: "",
                portName:{'a_left':"一列位左","a_right":"一列位右","b_left":"二列位左","b_right":"二列位右",
                    "a_leader":"一列位",'b_leader':"二列位","a_quality":"一列位","b_quality":"二列位"},//当前选中的作业计划对应的端名称
                departmentUsers:[],//部门相关的用户
                screenIndex: 0,
                screenSizes: 1,
                basicSetting:{}
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
            bgColor() {
                if(this.basicSetting.bg_color) {
                    return this.basicSetting.bg_color
                } else {
                    return "white"
                }
            },
            headerColor() {
                if(this.basicSetting.bg_color) {
                    return this.basicSetting.header_color
                } else {
                    return "#000000"
                }
            },
            tableColor() {
                if(this.basicSetting.tb_color) {
                    return this.basicSetting.tb_color
                } else {
                    return "#000000"
                }
            },
            waitingColor() {
                if(this.basicSetting.waiting_color) {
                    return this.basicSetting.waiting_color
                } else {
                    return "#000000"
                }
            },
            workingColor() {
                if(this.basicSetting.working_color) {
                    return this.basicSetting.working_color
                } else {
                    return "red"
                }
            },
            finishColor() {
                if(this.basicSetting.finish_color) {
                    return this.basicSetting.finish_color
                } else {
                    return "green"
                }
            },
            alertColor() {
                if(this.basicSetting.alert_color) {
                    return this.basicSetting.alert_color
                } else {
                    return "green"
                }
            }
        },
        filters: {
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
            filterUserName(account) {
                let result = '';
                for(let i=0; i< _this.allUsers.length; i++) {
                    if(account == _this.allUsers[i].account) {
                        result = _this.allUsers[i].name;
                        break;
                    }
                }
                return result;
            },

        },
        methods: {
            fetchCSBasicSetting() {
                $.ajax({
                    url: _this.fetchCSBasicSettingURL,
                    type: 'POST',
                    dataType: 'json',
                    data: {"department_no": _this.currentDepartmentStr},
                    success: function (data) {
                        _this.isError = data.status == 0;
                        if (!_this.isError) {
                            _this.basicSetting = data.info;
                        } else {
                            showMessage(_this, '获取基本设置失败！', 0);
                        }
                    },
                    error: function (info) {
                        showMessage(_this, '服务器访问出错！', 0);
                    }
                })
            },
            getPorts(){
                $.ajax({
                    url: _this.getPortsURL,
                    type: 'POST',
                    dataType: 'json',
                    data: {"department_no": _this.currentDepartmentStr},
                    success: function (data) {
                        if (data.status) {
                            if(data.info != null && data.info != "") {
                                _this.portName = data.info;
                            }
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
                            _this.screenSizes = _this.task_plan.length;
                            _this.currentDisplay = _this.task_plan[0];//the first
                        } else {
                            showMessage(_this, '获取作业屏内容失败！', 0);
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
            filterUser(account) {
                for(var i=0; i< _this.allUsers.length; i++) {
                    if(_this.allUsers[i].account == account) {
                        return _this.allUsers[i].name;
                    }
                }
                return "";
            },
            getCurrentDate: function () {
               var cdata = new Date();
               this.current_time = cdata.format("yyyy年MM月dd日");
            },


//            fetchDepartmentUsers() {
//                $.ajax({
//                    url: _this.getPersonUrl,
//                    type: 'POST',
//                    dataType: 'json',
//                    data: {"department_no":_this.currentDepartmentStr},
//                    success: function (data) {
//                        _this.isError = data.status == 0;
//                        if (!_this.isError) {
//                            _this.departmentUsers = data.info
//                            //alert(JSON.stringify(_this.departmentUsers));
//                        } else {
//                            showMessage(_this, '获取部门用户失败！', 0);
//                        }
//                    },
//                    error: function (info) {
//                        showMessage(_this, '服务器访问出错！', 0);
//                    }
//                })
//            },
        },
        mounted: function () {
            var defaultTime = 20;
            if(JSON.parse(sessionStorage.getItem('loop_time'))) {
                defaultTime = JSON.parse(sessionStorage.getItem('loop_time'));
            }
//            var auto = checkAutoDisplay(location.href);
//            if( auto ) {
                timerInterval = setInterval(function switchScreen() {
                    if(_this.screenIndex == _this.screenSizes -1) {
                        //_this.$router.push({path:"/home/clean_work_layout?auto=1"});
                        _this.currentDisplay = _this.task_plan[0];
                        _this.screenIndex = 0;
                    } else {
                        _this.currentDisplay = _this.task_plan[_this.screenIndex +1];
                        _this.screenIndex = _this.screenIndex +1;
                    }
                }, defaultTime*1000);//定时器
//            }
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
            this.fetchCSTask();
            this.fetchUsers();
            this.getPorts();
            this.fetchCSBasicSetting();

            this.getCurrentDate();
            this.current_day = getCurrentDay();
        },
        destroyed: function () {
            clearInterval(timerInterval);
        }

    }

</script>
<style lang="scss" scoped>
    .bg_work_layout {
        position: absolute;
        top: 0px;
        bottom: 0px;
        width: 100%;
        -moz-background-size: 100% 100%;
        background-size: 100% 100%;
        background-attachment: fixed;
        -webkit-font-smoothing: antialiased;
    }
</style>