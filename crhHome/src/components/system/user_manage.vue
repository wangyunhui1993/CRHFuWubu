<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml">
    <div>
        <el-col :span="24" class="breadcrumb-container">
            <div class="title">系统管理 / 用户管理</div>
        </el-col>
        <el-col class="well well-lg" style="background-color: white;">

            <el-row>
                <el-col :span="4" style="margin-left: -20px;" v-loading="loadingUI">
                    <div style="margin-bottom: 10px; font-size: 16px; cursor: pointer"
                         v-bind:class="{parentPart: activeIndex == -1}"
                         class="parentPart"
                         v-show="partInfo.isShow"
                         @click="chooseParentPart(partInfo)">{{partInfo.department_no}} {{partInfo.department_name}}
                    </div>
                    <ul v-show="partInfo.sub_parts.length > 0"
                        style="margin-left: -20px;">
                        <div v-for=" (sub, index) in partInfo.sub_parts"
                             v-show="sub.isShow"
                             style="margin-top: 10px;cursor: pointer;font-size: 14px;"
                             v-bind:class="{subPart: activePartID == sub.department_no}"
                             @click="chooseSubPart(index, sub)">
                            {{sub.department_no}} {{sub.department_name}}

                            <div v-for="item in sub.sub_parts"
                                 style="margin-top: 5px;margin-left: 20px;font-weight: normal;font-size: 14px;"
								 @click.stop="chooseWorkGrouPart(index, item)">
                                {{item.work_group_no}} {{item.work_group_name}}
                            </div>
                        </div>
                    </ul>
                </el-col>
                <el-col :span="20">
                    <el-form :model="filters" label-position="right" label-width="60px">
                        <el-col :span="5" style="margin-left: -10px">
                            <el-form-item label="账号:">
                                <el-input v-model="filters.account"
                                          placeholder="账号"
                                          auto-complete="off"></el-input>
                            </el-form-item>
                        </el-col>
                        <el-col :span="5">
                            <el-form-item label="姓名:">
                                <el-input v-model="filters.name"
                                          placeholder="姓名"
                                          auto-complete="off"></el-input>
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


                    <el-button
                            icon="document"
                            size="normal"
                            type="primary"
                            @click="onImport">导入
                    </el-button>

                    <el-button
                            icon="document"
                            size="normal"
                            type="primary"
                            @click="onExport">导出
                    </el-button>

                    <el-button style="float: right;"
                               icon="plus"
                               size="normal"
                               type="primary"
                               @click="handleAdd">用户
                    </el-button>


                    <el-table
                            v-loading="loadingUI"
                            element-loading-text="获取数据中..."
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
                                prop="account"
                                label="账号">
                        </el-table-column>

                        <el-table-column
                                prop="name"
                                label="姓名">
                        </el-table-column>
                        <el-table-column
                                prop="sex"
                                label="性别">
                        </el-table-column>
                        <el-table-column
                                prop="department_name"
                                label="部门">
                        </el-table-column>
                        <el-table-column
                                prop="work_group_no"
                                label="班组">
                            <template scope="scope">
                                <span>{{scope.row.work_group_no|filterWorkGroupName}}</span>
                            </template>
                        </el-table-column>
                        <el-table-column
                                prop="work_post"
                                label="职位">
                        </el-table-column>
                        <el-table-column
                                prop="phone"
                                min-width="100"
                                label="手机">
                        </el-table-column>
                        <el-table-column
                                prop="short_number"
                                label="短号">
                        </el-table-column>
                        <el-table-column
                                prop="rolebs_name"
                                label="B/S角色">
                            <template scope="scope">
                                <span>{{scope.row.rolebs_name}}</span>
                            </template>
                        </el-table-column>
                        <el-table-column
                                prop="rolecs_name"
                                label="C/S角色">
                            <template scope="scope">
                                <span>{{scope.row.rolecs_name}}</span>
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
                                        :disabled="scope.row.account=='admin'"
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
        <el-dialog title="增加用户" v-model="addDialogVisible" size="small">
            <el-form :model="form">
                <el-col :span="12">
                    <el-form-item label="所属部门：" :label-width="formLabelWidth">
                        <el-select v-model="form.department_no" @change="onChange">
                            <el-option
                                    v-for="item in allParts"
                                    v-bind:value="item.department_no"
                                    v-bind:label="item.department_name">
                            </el-option>
                        </el-select>
                    </el-form-item>
                </el-col>
                <el-col :span="12">
                    <el-form-item label="班组：" :label-width="formLabelWidth">
                        <!--<el-select v-model="form.work_group_no"-->
                        <!--clearable-->
                        <!--@change="onChange">-->
                        <!--<el-option-->
                        <!--v-for="item in workGroupList "-->
                        <!--v-bind:value="item.work_group_no"-->
                        <!--v-bind:label="item.work_group_name">-->
                        <!--</el-option>-->
                        <!--</el-select>-->

                        <template scope="scope">
                            <el-select
                                    style="width: 100%"
                                    @change="onChange"
                                    v-model="form.work_group_no"
                                    clearable
                                    filterable
                                    placeholder="请选择班组">
                                <el-option
                                        v-for="item in workGroupList"
                                        :label="item.work_group_name"
                                        :value="item.work_group_no"
                                        :disabled="item.department_no != form.department_no">
                                    <span style="float: left">{{ item.work_group_name }}</span>
                                    <span style="float: right; color: #8492a6; font-size: 13px; margin-right: 30px">
                                    {{ item.department_no|filterDepartmentName }}
                                </span>
                                </el-option>
                            </el-select>
                        </template>
                    </el-form-item>
                </el-col>
                <el-col :span="12">
                    <el-form-item label="账号：" :label-width="formLabelWidth">
                        <el-input v-model="form.account" @change="onChange"></el-input>
                    </el-form-item>
                </el-col>
                <el-col :span="12">
                    <el-form-item label="姓名：" :label-width="formLabelWidth">
                        <el-input v-model="form.name" @change="onChange"></el-input>
                    </el-form-item>
                </el-col>
                <el-col :span="12">
                    <el-form-item label="密码：" :label-width="formLabelWidth">
                        <el-input v-model="form.password" @change="onChange"></el-input>
                    </el-form-item>
                </el-col>
                <el-col :span="12">
                    <el-form-item label="确认密码：" :label-width="formLabelWidth">
                        <el-input v-model="form.confirmpwd" @change="onChange"></el-input>
                    </el-form-item>
                </el-col>
                <el-col :span="12">
                    <el-form-item label="性别：" :label-width="formLabelWidth">
                        <div style="height: 25px; line-height: 25px">
                            <el-radio class="radio" v-model="form.sex" label="男">男</el-radio>
                            <el-radio class="radio" v-model="form.sex" label="女">女</el-radio>
                        </div>
                    </el-form-item>
                </el-col>
                <el-col :span="12">
                    <el-form-item label="职务：" :label-width="formLabelWidth">
                        <el-input v-model="form.work_post" @change="onChange"></el-input>
                    </el-form-item>
                </el-col>
                <el-col :span="12">
                    <el-form-item label="手机：" :label-width="formLabelWidth">
                        <el-input v-model="form.phone" @change="onChange"></el-input>
                    </el-form-item>
                </el-col>
                <el-col :span="12">
                    <el-form-item label="短号：" :label-width="formLabelWidth">
                        <el-input v-model="form.short_number" @change="onChange"></el-input>
                    </el-form-item>
                </el-col>
                <el-col :span="12">
                    <el-form-item label="B/S角色：" :label-width="formLabelWidth">
                        <!--<el-input v-model="form.bs" ></el-input>-->
                        <el-select v-model="form.rolebs_id" @change="onChange">
                            <el-option
                                    v-for="item in allBSTitles"
                                    v-bind:value="item.id"
                                    v-bind:label="item.title">
                            </el-option>
                        </el-select>
                    </el-form-item>
                </el-col>
                <el-col :span="12">
                    <el-form-item label="C/S角色：" :label-width="formLabelWidth">
                        <!--<el-input v-model="form.cs"></el-input>-->
                        <el-select v-model="form.rolecs_id" @change="onChange">
                            <el-option
                                    v-for="item in allCSTitles"
                                    v-bind:value="item.id"
                                    v-bind:label="item.title">
                            </el-option>
                        </el-select>
                    </el-form-item>
                </el-col>
            </el-form>
            <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
                      :title="errorMsg"
                      type="error"
                      :closable="false"
                      show-icon>
            </el-alert>
            <div slot="footer" class="dialog-footer" style="margin-bottom: 20px">
                <el-button @click="addDialogVisible = false">取 消</el-button>
                <el-button type="primary" @click="onAdd">确 定</el-button>
            </div>
        </el-dialog>

        <el-dialog title="编辑用户" v-model="modifyDialogVisible" size="small">
            <el-form :model="modifyForm">
                <el-col :span="12">
                    <el-form-item label="所属部门：" :label-width="formLabelWidth">
                        <el-select v-model="modifyForm.department_no" @change="onChange">
                            <el-option
                                    v-for="item in allParts"
                                    v-bind:value="item.department_no"
                                    v-bind:label="item.department_name">
                            </el-option>
                        </el-select>
                    </el-form-item>
                </el-col>
                <el-col :span="12">
                    <el-form-item label="班组：" :label-width="formLabelWidth">
                        <template scope="scope">
                            <el-select
                                    style="width: 100%"
                                    @change="onChange"
                                    v-model="modifyForm.work_group_no"
                                    clearable
                                    filterable
                                    placeholder="请选择班组">
                                <el-option
                                        v-for="item in workGroupList"
                                        :label="item.work_group_name"
                                        :value="item.work_group_no"
                                        :disabled="item.department_no != modifyForm.department_no">
                                    <span style="float: left">{{ item.work_group_name }}</span>
                                    <span style="float: right; color: #8492a6; font-size: 13px; margin-right: 30px">
                                    {{ item.department_no|filterDepartmentName }}
                                </span>
                                </el-option>
                            </el-select>
                        </template>
                    </el-form-item>
                </el-col>
                <el-col :span="12">
                    <el-form-item label="账号：" :label-width="formLabelWidth">
                        <el-input v-model="modifyForm.account" @change="onChange"></el-input>
                    </el-form-item>
                </el-col>
                <el-col :span="12">
                    <el-form-item label="姓名：" :label-width="formLabelWidth">
                        <el-input v-model="modifyForm.name" @change="onChange"></el-input>
                    </el-form-item>
                </el-col>
                <el-col :span="24">
                    <el-col :span="12">
                        <el-form-item label="密码：" :label-width="formLabelWidth">
                            <el-input v-model="modifyForm.password" @change="onChange"></el-input>
                        </el-form-item>
                    </el-col>
                </el-col>
                <!--<el-col :span="12">-->
                <!--<el-form-item label="密码确认：" :label-width="formLabelWidth">-->
                <!--<el-input v-model="modifyForm.confirmPwd"></el-input>-->
                <!--</el-form-item>-->
                <!--</el-col>-->
                <el-col :span="12">
                    <el-form-item label="性别：" :label-width="formLabelWidth">
                        <div style="height: 25px; line-height: 25px">
                            <el-radio class="radio" v-model="modifyForm.sex" label="男">男</el-radio>
                            <el-radio class="radio" v-model="modifyForm.sex" label="女">女</el-radio>
                        </div>
                    </el-form-item>
                </el-col>
                <el-col :span="12">
                    <el-form-item label="职务：" :label-width="formLabelWidth">
                        <el-input v-model="modifyForm.work_post" @change="onChange"></el-input>
                    </el-form-item>
                </el-col>
                <el-col :span="12">
                    <el-form-item label="手机：" :label-width="formLabelWidth">
                        <el-input v-model="modifyForm.phone" @change="onChange"></el-input>
                    </el-form-item>
                </el-col>
                <el-col :span="12">
                    <el-form-item label="短号：" :label-width="formLabelWidth">
                        <el-input v-model="modifyForm.short_number" @change="onChange"></el-input>
                    </el-form-item>
                </el-col>
                <el-col :span="12">
                    <el-form-item label="B/S角色：" :label-width="formLabelWidth">
                        <!--<el-input v-model="modifyForm.bs" ></el-input>-->
                        <el-select v-model="modifyForm.rolebs_id" @change="onChange">
                            <el-option
                                    v-for="item in allBSTitles"
                                    v-bind:value="item.id"
                                    v-bind:label="item.title">
                            </el-option>
                        </el-select>
                    </el-form-item>
                </el-col>
                <el-col :span="12">
                    <el-form-item label="C/S角色：" :label-width="formLabelWidth">
                        <!--<el-input v-model="modifyForm.cs"></el-input>-->
                        <el-select v-model="modifyForm.rolecs_id" @change="onChange">
                            <el-option
                                    v-for="item in allCSTitles"
                                    v-bind:value="item.id"
                                    v-bind:label="item.title">
                            </el-option>
                        </el-select>
                    </el-form-item>
                </el-col>
            </el-form>
            <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
                      :title="errorMsg"
                      type="error"
                      :closable="false"
                      show-icon>
            </el-alert>
            <div slot="footer" class="dialog-footer" style="margin-bottom: 20px">
                <el-button @click="modifyDialogVisible = false">取 消</el-button>
                <el-button type="primary" @click="onEidt">确 定</el-button>
            </div>
        </el-dialog>
        <el-dialog title="导入用户数据" v-model="importDialogVisible" size="small">
            <el-form id="uploadForm">
                <el-row>
                    <input :span="5" type="file" name="file" @change="onFileChange">

                    <el-button :span="6"  style="margin-top: 10px" type="primary" @click="onUpload" :disabled="uploadStatus">确 定</el-button>
                </el-row>
                <!--<el-upload-->
                <!--class="upload-demo"-->
                <!--ref="upload"-->
                <!--:multiple="false"-->
                <!--:action="importURL"-->
                <!--:before-upload="handleChange"-->
                <!--:file-list="importList"-->
                <!--:show-file-list="true"-->
                <!--&gt;-->
                <!--<el-button slot="trigger" size="small" type="primary" >选择文件</el-button >-->
                <!--<div slot="tip" class="el-upload__tip" >只能上传Excel文件，且不超过1MB</div >-->
                <!--</el-upload >-->
            </el-form>
        </el-dialog>

        <el-dialog title="提示" v-model="deleteConfirmVisible" size="tiny">
            <span>确认要删除账号为[ <b>{{selectedItem.account}}</b> ]的用户吗？</span>
            <span slot="footer" class="dialog-footer">
	    <el-button @click="deleteConfirmVisible = false">取 消</el-button>
	    <el-button type="primary" @click="onConfirmDelete">确 定</el-button>
	  </span>
        </el-dialog>
    </div>
</template>

<script>
    import Vue from 'vue'
    import {Loading} from 'element-ui';
    var _this;
    export default {
        name: "part_manage",
        components: {},
        data () {
            _this = this;
            return {
                addUrl: HOME + "User/addData",
                editUrl: HOME + "User/modifyData",
                deleteUrl: HOME + "User/deleteData",
                queryCountUrl: HOME + "User/queryRecordsCount",
                queryDataUrl: HOME + "User/queryRecords",
                isError: false,
                errorMsg: '',
                totalRecords: 0,
                selectedItem: {},
                deleteConfirmVisible: false,
                queryUserRoleUrl: HOME + "UserRole/getRecords",
                queryDepartmentUrl: HOME + "DepartmentInfo/getRecords",
                queryWorkGroupUrl: HOME + "WorkGroup/getRecords",
                uploadUrl: HOME + "File/upload",
		exportUrl: HOME + "User/exportUserInfo",

                tableData: [],
                //分页
                pageSize: EveryPageNum,//每一页的num
                currentPage: 1,
                startRecord: 0,

                //增加对话框
                addDialogVisible: false,
                form: {
                    department_no: "",
                    work_group_no: '',
                    account: "",
                    name: "",
                    password: "111111",
                    confirmpwd: "111111",
                    sex: "男",
                    work_post: "",
                    phone: "",
                    short_number: "",
                    rolebs_id: "",
                    rolecs_id: '0',
                },
                formLabelWidth: '100px',

                //增加对话框
                modifyDialogVisible: false,
                modifyForm: {
                    id: '',
                    department_no: "",
                    work_group_no: '',
                    account: "",
                    name: "",
                    password: "",
                    confirmpwd: "",
                    sex: "男",
                    work_post: "",
                    phone: "",
                    short_number: "",
                    rolebs_id: "",
                    rolecs_id: "",
                },
                filters: {
                    name: "",
                    department_name: ""
                },
                activeIndex: -1,
                activePartID: "",
                partInfo: {
                    id: '',
                    department_no: '',
                    department_name: '',
                    sub_parts: [],
                    part_belong: {},
                },
                allWorkGroup: [],
                workGroupList: [],
                allParts: [],
                allDepartments: [],
                allBSTitles: [],//根据当前用户的权限返回，服务部只能返回服务部的角色
                allCSTitles: [
                    {
                        id: '0',
                        title: '无',
                    }],
                loadingUI: false,
                importDialogVisible: false,
                importList: [],
                uploadStatus: true,
            }
        },
        methods: {
            onChange: function () {
                if (_this.addDialogVisible) {
                    _this.isError = _this.validateForm(_this.form, false);
                }
                else {
                    _this.isError = _this.validateForm(_this.modifyForm, true);
                }

            },

            handleRemove(file, fileList) {
                fileList.splice(file);
            },
            handleChange(file, fileList) {
                if (file.name.lastIndexOf('.xls') < 0) {
                    this.$refs.upload.clearFiles();
                    return false;
                }
                return true;

            },

            onFileChange(e) {
                var files = e.target.files || e.dataTransfer.files;
                if (files.length > 0) {
                    if(files[0].name) {
                      if(files[0].name.lastIndexOf('.xls') < 0) {
                        showMessage(_this, '文件类型错误！', 0);
                      } else {
                        _this.uploadStatus = false;
                      }
                    } else {
                      showMessage(_this, '文件为空！', 0);
                    }
                }

                //this.createImage(files[0]);
            },
            onUpload()
            {

                var formData = new FormData($( "#uploadForm" )[0]);
                $.ajax({
                    url: _this.uploadUrl,// 需要链接到服务器地址
                    type: 'POST',
                    data: formData,
                    async: false,
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function (data) {
//                        if (data.status) {
                            showMessage(_this, '上传成功！', 1);
                            _this.importDialogVisible = false;
//
//                        } else {
//                            showMessage(_this, '上传失败！', 0);
//                        }
                    },
                    error: function (data) {
                        showMessage(_this, '上传失败！', 0);
                    }
                });
            },

		    onExport()
		    {
			    var loadService = Loading.service(
					    {
//						    lock: true,
						    text: '正在导出中，请稍后...',
					    });
			    $.ajax({
				    url: _this.exportUrl,
				    type: 'POST',
				    dataType: 'json',
				    success: function (data) {
					    loadService.close();
					    if (data.status) {
						    if (data.info.state > 0) {
							    var res = downloadFile(document, HOST_URL + data.info.result);
							    if (res == true) {
								    showMessage(_this, "导出成功！", 1);
							    }
							    else {
								    showMessage(_this, "导出错误！" + res, 0);
							    }
						    }
						    else {
							    showMessage(_this, data.info.result, 0);
						    }
					    }
				    },
				    error: function (data) {
					    showMessage(_this, "导出错误！", 0);
				    }
			    })

            },
            onImport()
            {
                _this.importDialogVisible = true;
                this.uploadStatus = true;

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
                _this.filters.department_no = '';
				//_this.filters.work_group_no = '';
				
                if (_this.activePartID.length > 3) {//not all depart
                    _this.filters.department_no = _this.activePartID;
                }
				
				//_this.filters.work_group_no = _this.activePartID;
				
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
                        }
                        _this.loadingUI = false;
                    }
                })
            },
            setPartInfo(list) {

                _this.partInfo = copyObject(list[0]);
                _this.partInfo.isShow = this.userinfo.department_no.length == 3;

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
                    for (var j = 0; j < _this.allWorkGroup.length; j++) {
                        if (obj.department_no == _this.allWorkGroup[j].department_no) {
                            obj.sub_parts.push(
                                    {
                                        work_group_no: _this.allWorkGroup[j].work_group_no,
                                        work_group_name: _this.allWorkGroup[j].work_group_name,
                                        department_no: _this.allWorkGroup[j].department_no,
                                    });
                        }
                    }

                    obj.part_belong = copyObject(_this.partInfo);
                    _this.partInfo.sub_parts.push(obj);
                }
            },

            onSearchRecordCounts()
            {
                _this.filters.department_no = '';
                if (_this.activePartID.length > 3) {//not all depart
                    _this.filters.department_no = _this.activePartID;
                }
                _this.tableData = new Array();
                _this.loadingUI = true;
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


            handleAdd() {
                this.form = {
                    department_no: "",
                    work_group_no: "",
                    account: "",
                    name: "",
                    password: "111111",
                    confirmpwd: "111111",
                    sex: "男",
                    work_post: "",
                    phone: "",
                    short_number: "",
                    rolebs_id: "",
                    rolecs_id: '0',
                };
                if (this.activePartID == "") {
                    this.activePartID = this.partInfo.department_no;
                    this.form.department_no = this.partInfo.department_no;
                } else {
                    if (this.activePartID.length == 3) {
                        this.form.department_no = '';
                    }
                    else
                        this.form.department_no = this.activePartID;
                }
                this.loadFormDepartsList(false);

                this.isError = false;
                this.errorMsg = '';
                this.addDialogVisible = true;
            },

            handleEdit(index, item) {
                this.isError = false;
                this.errorMsg = '';
                this.selectedItem = item;
                this.modifyForm = copyObject(this.selectedItem);
                this.loadFormDepartsList(true);
                this.modifyDialogVisible = true;
            },

            handleDelete(index, item) {
                this.selectedItem = copyObject(item);
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

            validateForm(formObj, isEdit)
            {
                var iserror = false;
                if (isStringEmpty(formObj.department_no)) {
                    iserror = true;
                    this.errorMsg = '请选择部门';
                }
                if (!iserror && isStringEmpty(formObj.account)) {
                    iserror = true;
                    this.errorMsg = '账号不能为空';
                }
                if (!iserror && isStringEmpty(formObj.name)) {
                    iserror = true;
                    this.errorMsg = '姓名不能为空';
                }
//                if (!iserror && isStringEmpty(formObj.work_post)) {
//                    iserror = true;
//                    this.errorMsg = '职务不能为空';
//                }
//                if (!iserror && isStringEmpty(formObj.phone)) {
//                    iserror = true;
//                    this.errorMsg = '手机号不能为空';
//                }
//                if (!iserror && !regIsPhone(formObj.phone)) {
//                    iserror = true;
//                    this.errorMsg = '请输入正确的手机号';
//                }
                if (!iserror && isStringEmpty(formObj.rolebs_id)) {
                    iserror = true;
                    this.errorMsg = '请选择 B/S 角色';
                }
                if (!iserror) {
                    if (isStringEmpty(formObj.password)) {
                        iserror = true;
                        this.errorMsg = '密码不能为空';
                    } else if (!isEdit && formObj.password != formObj.confirmpwd) {
                        iserror = true;
                        this.errorMsg = '密码和确认密码不一致';
                    }
                }
                if (formObj.work_group_no.indexOf(formObj.department_no) < 0) {
                    formObj.work_group_no = '';
                }
                return iserror;
            },

            onAdd() {
                _this.isError = this.validateForm(this.form, false);
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
                this.modifyForm.confirmPwd = this.modifyForm.password;
                this.isError = this.validateForm(this.modifyForm, true);
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
                                _this.onSearchDetailData();
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
            chooseWorkGrouPart(index, part) {

				_this.filters.work_group_no = part.work_group_no;
				
                this.search();
            },
            chooseSubPart(index, part) {		
			
                this.activeIndex = index;
                this.activePartID = part.department_no;
                this.form.department_no = part.department_no;
				_this.filters.work_group_no = "";
                this.search();
            },
            chooseParentPart(part) {
                this.activeIndex = -1;//-1为"第一级"， "0"开始为第二级
                this.activePartID = part.department_no;
                this.form.department_no = part.department_no;
				_this.filters.work_group_no = "";
                this.search();
            },

            loadFormDepartsList(isEdit)
            {
                this.allParts = new Array();
                if (isEdit || this.activeIndex == -1)//add all
                {
                    for (var i in this.allDepartments) {
                        if (isNaN(parseInt(i))) {
                            continue;
                        }

                        var item = this.allDepartments[i];
                        if (item.department_no.length > 3) {
                            this.allParts.push({
                                department_no: item.department_no,
                                department_name: item.department_name,
                            });
                        }
                    }
                } else {
                    for (var i in this.allDepartments) {
                        if (isNaN(parseInt(i))) {
                            continue;
                        }
                        var item = this.allDepartments[i];
                        if (this.activePartID == item.department_no) {
                            this.allParts.push({
                                department_no: item.department_no,
                                department_name: item.department_name,
                            });
                            break;
                        }
                    }
                }
            },

            initAllDepart()
            {
                $.ajax({
                    url: _this.queryDepartmentUrl,
                    type: 'POST',
                    dataType: 'json',
                    data: {},
                    success: function (data) {
                        if (data.status) {
                            _this.allDepartments = data.info;
                            _this.setPartInfo(_this.allDepartments);
                        }
                    }
                })
            },

            initAllRoles()
            {
                $.ajax({
                    url: _this.queryUserRoleUrl,
                    type: 'POST',
                    dataType: 'json',
                    data: {},
                    success: function (data) {
                        if (data.status) {
                            var dataList = data.info;
                            for (var i in dataList) {
                                if (isNaN(parseInt(i))) {
                                    continue;
                                }
                                var newObj =
                                {
                                    id: dataList[i].id,
                                    title: dataList[i].role_name,
                                };
                                if (parseInt(dataList[i].role_type) == 0) {
                                    _this.allCSTitles.push(newObj);
                                } else {
                                    _this.allBSTitles.push(newObj);
                                }
                            }
                        }
                    }
                })
            },

            initWorkGroup()
            {
                $.ajax({
                    url: _this.queryWorkGroupUrl,
                    type: 'POST',
                    dataType: 'json',
                    data: {},
                    success: function (data) {
                        if (data.status) {
                            _this.allWorkGroup = data.info;
                            _this.loadWorkGourpList();
                            _this.initAllDepart();
                        }
                    }
                })
            },

            loadWorkGourpList()
            {
                _this.workGroupList = new Array();
                for (var i = 0; i < _this.allWorkGroup.length; i++) {
                    var item = _this.allWorkGroup[i];
                    if (this.activePartID.length > 3 && item.department_no != this.activePartID) {
                        continue;
                    }
                    _this.workGroupList.push(copyObject(item));
                }
            },

        },
        computed: {},
        filters: {

            filterWorkGroupName(id) {
                var result = ''
                for (var i = 0; i < _this.allWorkGroup.length; i++) {
                    if (id == _this.allWorkGroup[i].work_group_no) {
                        result = _this.allWorkGroup[i].work_group_name;
                        break;
                    }
                }
                return result;
            },
            filterDepartmentName(id) {
                let result = ''
                for (let i = 0; i < _this.allDepartments.length; i++) {
                    if (id == _this.allDepartments[i].department_no) {
                        result = _this.allDepartments[i].department_name;
                        break;
                    }
                }
                return result;
            },
        },
        created: function () {
            this.userinfo = JSON.parse(sessionStorage.getItem('user'));
            if (isNull(this.userinfo)) {
                this.$router.push({path: '/Login'});
                return;
            }
            this.initAllRoles();
            this.initWorkGroup();

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
        font-weight: bold;
    }
</style>
