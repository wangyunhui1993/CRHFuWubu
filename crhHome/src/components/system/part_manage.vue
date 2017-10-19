<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml">
    <div>
        <el-col :span="24" class="breadcrumb-container">
            <div class="title">系统管理 / 部门管理</div>
        </el-col>
        <el-col class="well well-lg" style="background-color: white;">

            <el-row>
                <el-col :span="4" style="margin-left: -20px;">
                    <div style="margin-bottom: 10px; font-size: 16px; cursor: pointer"
                         v-show="partInfo.isShow"
                         class="parentPart">{{partInfo.department_no}} {{partInfo.department_name}}
                    </div>
                    <ul v-show="partInfo.sub_parts.length > 0"
                        style="margin-left: -20px;">
                        <li v-for=" (sub, index) in partInfo.sub_parts"
                            v-show="sub.isShow"
                            v-bind:class="{subPart: activePartID == sub.department_no}"
                            style="list-style-type: none;
                             font-size: 14px; margin-top: 10px">
                            {{sub.department_no}} {{sub.department_name}}
                        </li>
                    </ul>
                </el-col>
                <el-col :span="19" >
                    <el-form :model="filters" label-position="right" label-width="60px">
                        <el-col :span="5">
                            <el-form-item label="编号:">
                                <el-input v-model.trim="filters.department_no" auto-complete="off"></el-input>
                            </el-form-item>
                        </el-col>
                        <el-col :span="5" style="margin-left: 50px">
                            <el-form-item label="部门:">
                                <el-input v-model.trim="filters.department_name" auto-complete="off"></el-input>
                            </el-form-item>
                        </el-col>
                    </el-form>
                    <el-col :span="3" style="margin-left: 25px">
                        <el-button
                                icon="search"
                                size="normal"
                                type="primary"
                                @click="search">搜索
                        </el-button>
                    </el-col>
                    <div align="right">
                        <el-button
                                icon="plus"
                                size="normal"
                                type="primary"
                                @click="handleAdd">部门
                        </el-button>
                    </div>

                    <el-table
                            :data="tableData"
                            border
                            style="width: 100%;">
                        <el-table-column
                                width="80"
                                prop="id"
                                label="序号">
                            <template scope="scope">
                                {{scope.$index+1}}
                            </template>
                        </el-table-column>
                        <el-table-column
                                prop="department_no"
                                label="部门编号">
                        </el-table-column>

                        <el-table-column
                                prop="department_name"
                                label="部门名称">
                        </el-table-column>
                        <el-table-column
                                prop="comment"
                                label="备注">
                        </el-table-column>

                        <el-table-column label="操作" width="150">
                            <template scope="scope">
                                <el-button
                                        :disabled="scope.row.department_no|isDisalbed"
                                        size="small"
                                        type="primary"
                                        @click="handleEdit(scope.$index, scope.row)">编辑
                                </el-button>
                                <el-button
                                        :disabled="scope.row.department_no==001"
                                        size="small"
                                        type="danger"
                                        @click="handleDelete(scope.$index, scope.row)">删除
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
            </el-row>
        </el-col>
        <el-dialog title="增加部门" v-model="addDialogVisible" size="tiny">
            <el-form :model="form">
                <el-form-item label="所属部门：" :label-width="formLabelWidth">
                    <el-select v-model="form.part_belong" style="width: 100%">
                        <el-option
                                v-bind:value="partInfo.department_no"
                                v-bind:label="partInfo.department_name">
                        </el-option>
                    </el-select>
                </el-form-item>
                <el-form-item label="部门编号：" :label-width="formLabelWidth">
                    <el-input v-model.trim="form.department_no" auto-complete="off" @change="onChange"></el-input>
                </el-form-item>
                <el-form-item label="部门名称：" :label-width="formLabelWidth">
                    <el-input v-model.trim="form.department_name" @change="onChange"></el-input>
                </el-form-item>
                <el-form-item label="备注：" :label-width="formLabelWidth">
                    <el-input v-model.trim="form.comment" @change="onChange"></el-input>
                </el-form-item>
            </el-form>
            <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
                      :title="errorMsg"
                      type="error"
                      :closable="false"
                      show-icon>
            </el-alert>
            <div slot="footer" class="dialog-footer">
                <el-button @click="addDialogVisible = false">取 消</el-button>
                <el-button type="primary" @click="onAdd">确 定</el-button>
            </div>
        </el-dialog>

        <el-dialog title="编辑部门" v-model="modifyDialogVisible" size="tiny">
            <el-form :model="modifyForm">
                <el-form-item label="所属部门：" :label-width="formLabelWidth">
                    <el-select v-model="modifyForm.part_belong" style="width: 100%">
                        <el-option
                                v-bind:value="partInfo.department_no"
                                v-bind:label="partInfo.department_name">
                        </el-option>
                    </el-select>
                </el-form-item>
                <el-form-item label="部门编号：" :label-width="formLabelWidth">
                    <el-input v-model.trim="modifyForm.department_no" auto-complete="off"
                              :disabled="modifyForm.department_no==001"
                              @change="onChange"></el-input>
                </el-form-item>
                <el-form-item label="部门名称：" :label-width="formLabelWidth">
                    <el-input v-model.trim="modifyForm.department_name" @change="onChange"></el-input>
                </el-form-item>
                <el-form-item label="备注：" :label-width="formLabelWidth">
                    <el-input v-model.trim="modifyForm.comment" @change="onChange"></el-input>
                </el-form-item>
            </el-form>
            <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
                      :title="errorMsg"
                      type="error"
                      :closable="false"
                      show-icon>
            </el-alert>
            <div slot="footer" class="dialog-footer">
                <el-button @click="modifyDialogVisible = false">取 消</el-button>
                <el-button type="primary" @click="onEidt">确 定</el-button>
            </div>
        </el-dialog>

        <el-dialog title="提示" v-model="deleteConfirmVisible" size="tiny">
            <span>确认要删除编号为[ <b>{{selectedItem.department_no}}</b> ]的部门吗？</span>
            <span slot="footer" class="dialog-footer">
		    <el-button @click="deleteConfirmVisible = false">取 消</el-button>
		    <el-button type="primary" @click="onConfirmDelete">确 定</el-button>
		  </span>
        </el-dialog>
    </div>
</template>

<script>
    import Vue from 'vue'
    var _this;
    export default {
        name: "part_manage",
        components: {},
        data () {
            _this = this;
            return {
                addUrl: HOME + "DepartmentInfo/addData",
                editUrl: HOME + "DepartmentInfo/modifyData",
                deleteUrl: HOME + "DepartmentInfo/deleteData",
                queryCountUrl: HOME + "DepartmentInfo/getRecordsCount",
                queryDataUrl: HOME + "DepartmentInfo/getRecords",
                isError: false,
                errorMsg: '',
                totalRecords: 0,
                selectedItem: {},
                deleteConfirmVisible: false,

                tableData: [],
                //分页
                pageSize: EveryPageNum,//每一页的num
                currentPage: 1,
                startRecord: 0,

                //增加对话框
                addDialogVisible: false,
                form: {
                    part_belong: "",
                    department_no: "",
                    department_name: "",
                    comment: ""
                }
                ,
                formLabelWidth: '100px',

                //增加对话框
                modifyDialogVisible: false,
                modifyForm: {
                    id: '',
                    part_belong: "",
                    department_no: "",
                    department_name: "",
                    comment: ""
                }
                ,
                filters: {
                    department_name: "",
                    department_no: ""
                },
                partInfo: {
                    id: '',
                    department_no: '',
                    department_name: '',
                    sub_parts: [],
                    part_belong: {},
                },
            }
        },
        methods: {
            onChange: function () {
                if (_this.addDialogVisible) {
                    _this.isError = _this.validateForm(_this.form);
                }
                else {
                    _this.isError = _this.validateForm(_this.modifyForm);
                }

            },
            handleSizeChange(val) {
//        console.log(`每页 ${val} 条`);
            },
            handleCurrentChange(val) {
                this.currentPage = val;
                this.startRecord = this.pageSize * (this.currentPage - 1)
                this.onSearchDetailData();
//        console.log(`当前页: ${val}`);
            },
            search() {
                _this.onSearchRecordCounts();
            },
            onSearchDetailData()
            {
                _this.filters.start_record = _this.startRecord;
                _this.filters.page_size = _this.pageSize;
                $.ajax({
                    url: _this.queryDataUrl,
                    type: 'POST',
                    dataType: 'json',
                    data: _this.filters,
                    success: function (data) {
                        if (data.status) {
                            var dataList = data.info;
                            //list.splice(0, 1);//remove 1 element from index 0
                            _this.tableData = dataList;
                            _this.setPartInfo(dataList);
                        }
                    }
                })
            },
            setPartInfo(list) {
                _this.partInfo = copyObject(list[0]);
                _this.partInfo.isShow = _this.userinfo.department_no.length == 3;
                _this.partInfo.sub_parts = new Array();
                var subLit = list.slice(1);//remove the first item;
                for (var i in subLit) {
                    if (isNaN(parseInt(i))) {
                        continue;
                    }
                    var item = subLit[i];
                    var obj = {
                        id: item.id,
                        department_no: item.department_no,
                        department_name: item.department_name,
                        comment: item.comment,
                        sub_parts: [],
                        part_belong: {},
                        isShow: _this.partInfo.isShow ? true : _this.userinfo.department_no == item.department_no,
                    };
                    obj.part_belong = copyObject(_this.partInfo);
                    _this.partInfo.sub_parts.push(obj);
                }
            },

            onSearchRecordCounts()
            {
                $.ajax({
                    url: _this.queryCountUrl,
                    type: 'POST',
                    dataType: 'json',
                    data: _this.filters,
                    success: function (data) {
                        if (data.status) {
                            _this.totalRecords = parseInt(data.info);
                            _this.onSearchDetailData();
                        }
                    },
                })
            },
            getDepartNumber()
            {
                var numberList = new Array();
                for (var i in  _this.partInfo.sub_parts) {
                    if (isNaN(parseInt(i))) {
                        continue;
                    }
                    var item = _this.partInfo.sub_parts[i];
                    var itemNum = parseInt(item.department_no);
                    numberList.push(itemNum);
                }
                var maxNumber = numberList.getMaxValue();
                return numberFormat(maxNumber + 1, 6);
            },
            handleAdd() {
                this.form.part_belong = this.partInfo.department_no;
                //this.form.department_no = this.getDepartNumber().toString();
                this.form.department_name = '';
                this.isError = false;
                this.errorMsg = '';
                this.addDialogVisible = true;
            },

            handleEdit(index, item) {
                this.isError = false;
                this.errorMsg = '';
                this.selectedItem = item;
                this.modifyForm = copyObject(this.selectedItem);
                this.modifyForm.part_belong = this.partInfo.department_no;
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
                if (isStringEmpty(formObj.department_name)) {
                    iserror = true;
                    this.errorMsg = '部门不能为空！';
                }
                if (!iserror && isStringEmpty(formObj.department_no)) {
                    iserror = true;
                    this.errorMsg = '部门编号不能为空！';
                }
                if (!iserror && formObj.department_no != '001' &&
                        (!regIsCorrectDep(formObj.department_no)
                        || formObj.department_no.toString().endsWith('00'))) {
                    iserror = true;
                    this.errorMsg = '部门编号不正确，格式为0010xx的数字！';
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
            onEidt() {
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
                                showMessage(_this, '修改成功', 1);
                                _this.onSearchDetailData();
                                if (_this.modifyForm.department_no == _this.userinfo.department_no) {
                                    _this.userinfo.department_name = _this.modifyForm.department_name;
                                    sessionStorage.setItem('user', JSON.stringify(_this.userinfo));
                                }
                            }
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
            isDisalbed(depart)
            {
                if (_this.userinfo.department_no != "001" && depart == '001') {
                    return true;
                }
                return false;

            },
        },
        computed: {},
        created: function () {
            this.userinfo = JSON.parse(sessionStorage.getItem('user'));
            if (isNull(this.userinfo)) {
                this.$router.push({path: '/Login'});
                return;
            }
            this.modifyForm.department_name = this.form.department_name = this.userinfo.department_name;
            this.modifyForm.department_no = this.form.department_no = this.userinfo.department_no;
            if (this.userinfo.department_no != "001") {
                this.activeIndex = 0
                this.form.department_no = this.userinfo.department_no
            } else {
                this.activeIndex = -1
            }
            this.activePartID = this.userinfo.department_no;

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

    .parentPart {
        width: 200px;
        color: #475669;
        font-size: medium;
        font-weight: bold
    }

    .subPart {
        width: 200px;
        color: #475669;
        font-weight: bold
    }
</style>
