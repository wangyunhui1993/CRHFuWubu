<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml">
    <div>
        <el-col :span="22" class="breadcrumb-container">
            <div class="title">基础数据 / 车列号</div>
        </el-col>
        <el-col :span="2" style="background-color: #E5E9F2;">
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
                        prop="train_column"
                        label="车列号">
                </el-table-column>
                <el-table-column

                        label="车型">
                    <template scope="scope">
                        <span>{{scope.row.train_model | filterTrainModelName}}</span>
                    </template>
                </el-table-column>
                <el-table-column
                        prop="train_group"
                        label="车列编组">
                    <template scope="scope">
                        <span>{{scope.row.train_group | filterTrainGroupName}}</span>
                    </template>
                </el-table-column>
                <el-table-column
                        prop="department_no"
                        label="部门">
                    <template scope="scope">

                        <span>{{scope.row.department_no | filterDepartmentName}}</span>
                    </template>
                </el-table-column>
                <el-table-column
                        width="120"
                        prop="font_color"
                        label="字体颜色">
                    <template scope="scope">
                        <div :style="{'background-color': scope.row.font_color, 'margin': '5px'}">
                            <span style="alignment: center">{{scope.row.font_color}}</span>
                        </div>
                    </template>
                </el-table-column>
                <el-table-column label="操作" width="150">
                    <template scope="scope">
                        <el-button
                                size="small"
                                type="primary"
                                @click="handleEdit(scope.$index, scope.row)">编辑
                        </el-button>
                        <el-button
                                size="small"
                                type="danger"
                                @click="handleDelete(scope.row)">删除
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
                        layout="total, prev, pager, next, jumper"
                        :total="totalRecords">
                </el-pagination>
            </div>
        </el-col>
        <el-dialog title="增加车列号" v-model="addDialogVisible" size="tiny">
            <el-form :model="form">
                <el-form-item label="车列号：" :label-width="formLabelWidth">
                    <el-input v-model="form.train_column" auto-complete="off"></el-input>
                </el-form-item>
                <el-form-item label="所属部门：" :label-width="formLabelWidth">
                    <el-select v-model="form.department_no" style="width: 100%">
                        <el-option
                                v-for="item in department"
                                v-bind:value="item.department_no"
                                v-bind:label="item.department_name">
                        </el-option>
                    </el-select>
                </el-form-item>
                <el-form-item label="车型：" :label-width="formLabelWidth">
                    <template scope="scope">
                        <el-select
                                style="width: 100%"
                                v-model="form.train_model"
                                filterable
                                placeholder="请选择车型">
                            <el-option
                                    v-for="item in trainModels"
                                    :label="item.train_model"
                                    :value="item.id"
                                    :disabled="item.department_no != form.department_no">
                                <span style="float: left">{{ item.train_model }}</span>
                                <span style="float: right; color: #8492a6; font-size: 13px; margin-right: 30px">
                                    {{ item.department_no | filterDepartmentName }}
                                </span>
                            </el-option>
                        </el-select>
                    </template>
                </el-form-item>
                <el-form-item label="车列编组：" :label-width="formLabelWidth">
                    <el-select v-model="form.train_group" style="width: 100%">
                        <el-option
                                v-for="item in trainGroups"
                                v-bind:value="item.id"
                                v-bind:label="item.name">
                        </el-option>
                    </el-select>
                    <!--<el-input v-model="form.train_group" auto-complete="off"></el-input>-->
                </el-form-item>
                <el-form-item label="颜色：" :label-width="formLabelWidth">
                </el-form-item>
                <div class="block" style="margin-top: -60px;margin-left:60px; ">
                    <el-color-picker v-model="form.font_color"></el-color-picker>
                </div>

            </el-form>
            <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
                      :title="errorMsg"
                      type="error"
                      :closable="false"
                      show-icon>
            </el-alert>
            <div slot="footer" class="dialog-footer">
                <el-button @click="addDialogVisible = false">取 消</el-button>
                <el-button type="primary" @click="addTrainColumn">确 定</el-button>
            </div>
        </el-dialog>

        <el-dialog title="编辑车列号" v-model="modifyDialogVisible" size="tiny">
            <el-form :model="modifyForm">
                <el-form-item label="车列号：" :label-width="formLabelWidth">
                    <el-input v-model="modifyForm.train_column" auto-complete="off"></el-input>
                </el-form-item>
                <el-form-item label="车型：" :label-width="formLabelWidth">
                    <el-select v-model="modifyForm.train_model" style="width: 100%">
                        <el-option
                                v-for="item in trainModels"
                                v-bind:value="item.id"
                                v-bind:label="item.train_model">
                        </el-option>
                    </el-select>
                </el-form-item>
                <el-form-item label="车列编组" :label-width="formLabelWidth">
                    <el-select v-model="modifyForm.train_group" style="width: 100%">
                        <el-option
                                v-for="item in trainGroups"
                                v-bind:value="item.id"
                                v-bind:label="item.name">
                        </el-option>
                    </el-select>
                </el-form-item>
                <el-form-item label="所属部门：" :label-width="formLabelWidth">
                    <el-select v-model="modifyForm.department_no" style="width: 100%">
                        <el-option
                                v-for="item in department"
                                v-bind:value="item.department_no"
                                v-bind:label="item.department_name">
                        </el-option>
                    </el-select>
                </el-form-item>
                <el-form-item label="颜色：" :label-width="formLabelWidth">
                </el-form-item>
                <div class="block" style="margin-top: -60px;margin-left:60px; ">
                    <el-color-picker v-model="modifyForm.font_color"></el-color-picker>
                </div>

            </el-form>
            <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
                      :title="errorMsg"
                      type="error"
                      :closable="false"
                      show-icon>
            </el-alert>
            <div slot="footer" class="dialog-footer">
                <el-button @click="modifyDialogVisible = false">取 消</el-button>
                <el-button type="primary" @click="modifyTrainColumn">确 定</el-button>
            </div>
        </el-dialog>
        <el-dialog title="提示" v-model="deleteConfirmVisible" size="tiny">
            <span>确认要删除编号为[ <b>{{selectedItem.train_column}}</b> ]的车列号吗？</span>
            <span slot="footer" class="dialog-footer">
		    <el-button @click="deleteConfirmVisible = false">取 消</el-button>
		    <el-button type="primary" @click="onConfirmDelete">确 定</el-button>
		  </span>
        </el-dialog>
    </div>
</template>

<script>
    import Vue from 'vue'
    let _this
    export default {
        name: "train_num",
        components: {},
        data () {
            _this = this;
            return {
                userInfo: {},
                fetchSubDepartmentsURL: HOME + "DepartmentInfo/fetchSubDepartments",
                fetchTrainModelsURL: HOME + "TrainModel/getRecords",
                fetchTrainGroupURL: HOME + "TrainGroup/getRecords",
                addUrl: HOME + "TrainColumn/addData",
                editUrl: HOME + "TrainColumn/modifyData",
                deleteUrl: HOME + "TrainColumn/deleteData",
                queryCountUrl: HOME + "TrainColumn/getRecordsCount",
                queryDataUrl: HOME + "TrainColumn/getRecords",
                tableData: [],
                trainModels: [],
                trainGroups: [],
                department: [],
                isError: false,
                errorMsg: '',
                selectedItem: {},
                //分页
                pageSize: EveryPageNum,//每一页的num
                currentPage: 1,
                startRecord: 0,
                totalRecords: 0,

                //增加对话框
                addDialogVisible: false,
                form: {
                    train_column: "",
                    train_model: "",
                    train_group: "",
                    department_no: "",
                    font_color: "#000000"
                },
                formLabelWidth: '100px',

                //增加对话框
                modifyDialogVisible: false,
                modifyForm: {
                    id: "",
                    train_column: "",
                    train_model: "",
                    train_group: "",
                    department_no: "",
                    font_color: ""
                },
                deleteConfirmVisible: false
            }
        },
        methods: {
            handleSizeChange(val) {
//        console.log(`每页 ${val} 条`);
            },
            handleCurrentChange(val) {
                this.currentPage = val;
                this.startRecord = this.pageSize * (this.currentPage - 1)
                this.onSearchDetailData();
//        console.log(`当前页: ${val}`);
            },
            handleAdd() {
                this.isError = false;
                this.errorMsg = '';
                //如果只有一个部门，在部门选择上default选择该部门
                if (this.department.length == 1) {
                    this.form.department_no = this.department[0].department_no
                }
                this.addDialogVisible = true;
            },

            validateForm(formObj)
            {
                var iserror = false;
                if (isStringEmpty(formObj.train_column)) {
                    iserror = true;
                    this.errorMsg = '车列号不能为空！';
                }
                if (!iserror && isStringEmpty(formObj.train_model)) {
                    iserror = true;
                    this.errorMsg = '车型不能为空！';
                }
                if (!iserror && isStringEmpty(formObj.train_group)) {
                    iserror = true;
                    this.errorMsg = '车列编组不能为空！';
                }
                if (!iserror && isStringEmpty(formObj.department_no)) {
                    iserror = true;
                    this.errorMsg = '部门不能为空！';
                }
                if (!iserror && isStringEmpty(formObj.font_color)) {
                    iserror = true;
                    this.errorMsg = '字体不能为空！';
                }
                return iserror;
            },
            addTrainColumn() {
                this.isError = this.validateForm(this.form);
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
                                _this.errorMsg = '添加失败';
                                if (!isUndefined(data.info.errorMsg)) {
                                    _this.errorMsg = data.info.errorMsg;
                                }
                                showMessage(_this, _this.errorMsg, 0);
                            }
                        },
                        error: function (info) {
                            _this.errorMsg = '服务器访问出错！';
                            _this.isError = true;
                        }
                    })
                }
            },

            modifyTrainColumn() {
                this.isError = this.validateForm(this.modifyForm);
                if (!_this.isError) {
                    $.ajax({
                        url: _this.editUrl,
                        type: 'POST',
                        dataType: 'json',
                        data: _this.modifyForm,
                        success: function (data) {
                            if (!isUndefined(data.info.errorMsg)) {
                                _this.errorMsg = data.info.errorMsg;
                                _this.isError = true;
                                showMessage(_this, _this.errorMsg, 0);//error
                            }
                            else {
                                _this.modifyDialogVisible = false;
                                //省略了去后台重新获取数据
                                _this.selectedItem.font_color = _this.modifyForm.font_color;
                                _this.selectedItem.train_column = _this.modifyForm.train_column;
                                _this.selectedItem.train_model = _this.modifyForm.train_model;
                                _this.selectedItem.train_group = _this.modifyForm.train_group;
                                _this.selectedItem.department_no = _this.modifyForm.department_no;
                                showMessage(_this, '修改成功', 1);
                            }
                        },
                        error: function (info) {
                            _this.errorMsg = '服务器访问出错！';
                            _this.isError = true;
                        }
                    })
                }
            },

            onSearchDetailData()
            {
                $.ajax({
                    url: _this.queryDataUrl,
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        "department_no": _this.currentDepartmentStr,
                        "start_record": _this.startRecord,
                        "page_size": _this.pageSize
                    },
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
                    url: _this.queryCountUrl,
                    type: 'POST',
                    dataType: 'json',
                    data: {"department_no": _this.currentDepartmentStr},
                    success: function (data) {
                        if (data.status) {
                            _this.totalRecords = parseInt(data.info);
                            _this.onSearchDetailData();
                        }
                    },
                })
            },

            handleEdit(index, item) {
                this.isError = false;
                this.errorMsg = '';
                this.selectedItem = item;
                this.modifyForm = copyObject(this.selectedItem);
                this.modifyDialogVisible = true;
            },

            handleDelete(item) {
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

            initTrainGroupList()
            {
                var list = JSON.parse(sessionStorage.getItem('trainGroupList'));
                if (isNull(list) || isUndefined(list)) {
                    _this.getTrainGroupData();
                } else {
                    _this.trainGroups = new Array();
                    for (var i = 0; i < list.length; i++) {
                        _this.trainGroups.push(copyObject(list[i]));
                    }
                }
            },

            getTrainGroupData()
            {
                $.ajax({
                    url: _this.fetchTrainGroupURL,
                    type: 'POST',
                    dataType: 'json',
                    data: {},
                    success: function (data) {
                        if (data.status) {
                            sessionStorage.setItem('trainGroupList', JSON.stringify(data.info));//save to session
                            _this.trainGroups = data.info;
                        }
                    },
                })
            },


        },
        filters: {
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
            filterTrainModelName(id) {
                let result = ''
                for (let i = 0; i < _this.trainModels.length; i++) {
                    if (id == _this.trainModels[i].id) {
                        result = _this.trainModels[i].train_model;
                        break;
                    }
                }
                return result;
            },
            filterTrainGroupName(id)
            {
                let result = ''
                for (let i = 0; i < _this.trainGroups.length; i++) {
                    if (id == _this.trainGroups[i].id) {
                        result = _this.trainGroups[i].name;
                        break;
                    }
                }
                return result;
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
        created: function () {
            this.userInfo = JSON.parse(sessionStorage.getItem('user'));
            if (this.userInfo != null && this.userInfo.department_no != "001") {
                //非公司管理员
                _this.department.push({
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

            $.ajax({
                url: _this.fetchTrainModelsURL,
                type: 'POST',
                dataType: 'json',
                data: {"department_no": _this.currentDepartmentStr},
                success: function (data) {
                    _this.isError = data.status == 0;
                    if (!_this.isError) {
                        //TODO:
                        _this.trainModels = data.info
//                            console.log(data.info)
                    } else {
                        showMessage(_this, '获取车型信息失败！', 0);
                    }
                },
                error: function (info) {
                    showMessage(_this, '服务器访问出错！', 0);
                }
            })
        },
        mounted: function () {
            this.onSearchRecordCounts();
            _this.initTrainGroupList();
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
