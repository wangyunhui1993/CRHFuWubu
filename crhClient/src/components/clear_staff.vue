sd<template >
    <div >
        <!--<el-col class="breadcrumb-container" >-->
        <!--<div class="title" style="margin-left:20px;" >保洁设置 / 保洁人员</div >-->
        <!--</el-col >-->
	     <el-button style="margin-left:20px;margin-top: 20px;"
	                icon="plus"
	                size="normal"
	                type="primary"
	                @click="handleAdd" >添 加
	     </el-button >
	     <el-button style="margin-left:20px;margin-top: 20px;"
	                icon="close"
	                size="normal"
	                type="danger"
	                @click="handleDelete" :disabled="multipleSelection.length==0" >删 除
	     </el-button >
        <el-col class="well well-lg" style="background-color: white;margin-top: 10px;" >

            <div class="panel panel-primary" >
                <div class="panel-heading panel-title" style="margin-top: -20px;" >
                    记录数
                    <span class="badge" style="margin-left: 5px;" v-html="tableData.length" ></span >
                </div >
	            <div class="panel-body" >
                    <el-table
		                    v-loading="loadingUI"
		                    element-loading-text="获取数据中..."
		                    :data="tableData"
		                    border
		                    @selection-change="handleSelectionChange"
		                    style="width: 100%;"
                    >
	                <el-table-column
			                type="selection"
			                width="55" >
                    </el-table-column >
                    <el-table-column
		                    width="70"
		                    label="序号" >
	                        <template scope="scope" >
		                        {{scope.$index+1}}
                            </template >
                    </el-table-column >
                    <el-table-column
		                    prop="name"
		                    label="姓名" >
                    </el-table-column >
                    <el-table-column
		                    label="部门" >
	                        <template scope="scope" >
		                        {{scope.row.department_no|filterDepartName}}
                            </template >
                    </el-table-column >
                    <el-table-column label="操作" width="150" >
                        <template scope="scope" >
                            <el-button style="text-align: center"
                                       size="small"
                                       type="primary"
                                       @click="handleEdit(scope.$index, scope.row)" >编辑
                            </el-button >
                        </template >
                    </el-table-column >
                </el-table >
	            </div >

            </div >

            <div class="block" style="text-align: center; margin-top: 20px" >
                <el-pagination
		                @current-change="handleCurrentChange"
		                :current-page="currentPage"
		                :page-size="pageSize"
		                layout="prev, pager, next, jumper"
		                :total="totalRecords"
                >
                </el-pagination >
            </div >
        </el-col >
	    <el-dialog title="增加保洁员" v-model="addDialogVisible" size="small" >
		    <div class="panel panel-primary" >
			    <div class="panel-heading" >
				    <div style="font-size: 20px;text-align: left" >

				    </div >
			    </div >
			    <div class="table-responsive" style="text-align: center;margin:20px;" >
				    <form class="form-horizontal" role="form"
				          style="margin-top: 30px; margin-right: 20px; font-size: 16px" >
					    <div class="form-group" >
						    <div class="col-sm-3" >
		                        <label class="control-label" >姓名:</label >
				            </div >
		                    <div class="col-sm-6" >
			                    <input type="text" class="form-control"
			                           v-model.trim="addInfo.name"
			                           style="height: 36px;" />
		                    </div >
					    </div >
					    <div class="form-group" >
						    <div class="col-sm-3" >
							    <label class="control-label" >部门:</label >
						    </div >
						    <div class="col-sm-6" >
							    <input type="text" disabled="true" class="form-control"
							           v-model="addInfo.department_name"
							           style="height: 36px;" />
						    </div >
					    </div >

					    <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
					              :title="errorMsg"
					              type="error"
					              :closable="false"
					              show-icon >
                        </el-alert >

					    <div slot="footer" class="dialog-footer" style="margin-bottom: 20px;margin-top: 40px;" >
						    <el-button type="primary" @click="onAdd" >确 定</el-button >
					    </div >
			            </form >
			        </div >
			    </div >
        </el-dialog >

        <el-dialog title="编辑保洁员" v-model="modifyDialogVisible" size="small" >
           <div class="panel panel-primary" >
			    <div class="panel-heading" >
				    <div style="font-size: 20px;text-align: left" >

				    </div >
			    </div >
			    <div class="table-responsive" style="text-align: center;margin:20px;" >
				    <form class="form-horizontal" role="form"
				          style="margin-top: 30px; margin-right: 20px; font-size: 16px" >
					    <div class="form-group" >
						    <div class="col-sm-3" >
		                        <label class="control-label" >姓名:</label >
				            </div >
		                    <div class="col-sm-6" >
			                    <input type="text" class="form-control"
			                           v-model.trim="editInfo.name"
			                           style="height: 36px;" />
		                    </div >
					    </div >
					    <div class="form-group" >
						    <div class="col-sm-3" >
							    <label class="control-label" >部门:</label >
						    </div >
						    <div class="col-sm-6" >
							    <input type="text" disabled="true" class="form-control"
							           v-model="editInfo.department_name"
							           style="height: 36px;" />
						    </div >
					    </div >
					    <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
					              :title="errorMsg"
					              type="error"
					              :closable="false"
					              show-icon >
                        </el-alert >

					    <div slot="footer" class="dialog-footer" style="margin-bottom: 20px;margin-top: 40px;" >
						    <el-button type="primary" @click="onEdit" >确 定</el-button >
					    </div >
			            </form >
			        </div >
			    </div >
        </el-dialog >

        <el-dialog title="提示" v-model="deleteConfirmVisible" size="tiny" >
            <span >确认要删除选中的数据吗？</span >
	        <span slot="footer" class="dialog-footer" >
		        <el-button @click="deleteConfirmVisible = false" >取 消</el-button >
			    <el-button type="primary" @click="onConfirmDelete" >确 定</el-button >
	        </span >
        </el-dialog >
    </div >
</template >
<script >
    import Vue from 'vue';
    var _this;
    export default {
	    name: "welcome_setting",
	    components: {},
	    data () {
		    _this = this;
		    return {
			    userInfo: {},
			    addUrl: HOME + "CsClearStaff/addData",
			    editUrl: HOME + "CsClearStaff/modifyData",
			    deleteUrl: HOME + "CsClearStaff/deleteData",
			    queryCountUrl: HOME + "CsClearStaff/getRecordCount",
			    queryDataUrl: HOME + "CsClearStaff/getRecord",
			    isError: false,
			    errorMsg: '',
			    totalRecords: 0,
			    selectedItem: {},
			    deleteConfirmVisible: false,
			    tableData: [],
			    addInfo: {
				    department_no: "",
				    department_name: "",
				    name: "",
			    },
			    editInfo: {
				    department_no: "",
				    department_name: "",
				    name: "",
			    },
			    //分页
			    pageSize: EveryPageNum,//每一页的num
			    currentPage: 1,
			    startRecord: 0,

			    //增加对话框
			    addDialogVisible: false,
			    modifyDialogVisible: false,
			    loadingUI: false,
			    multipleSelection: []

		    }
	    },

	    methods: {
		    handleSelectionChange(item) {
			    this.multipleSelection = item;
		    },
		    handleCurrentChange(val) {
			    this.currentPage = val;
			    this.startRecord = this.pageSize * (this.currentPage - 1)
			    this.onSearchDetailData();
		    },
		    search() {
			    _this.onSearchRecordCounts();
		    },
		    onSearchDetailData()
		    {
			    $.ajax({
				    url: _this.queryDataUrl,
				    type: 'POST',
				    dataType: 'json',
				    data: {
					    start_record: _this.startRecord,
					    page_size: _this.pageSize,
					    department_no: _this.userInfo.department_no
				    },
				    success: function (data) {
					    if (data.status) {
						    var dataList = data.info;
						    _this.tableData = dataList;
					    }
					    _this.loadingUI = false;
				    }
			    })
		    },

		    onSearchRecordCounts()
		    {
			    _this.tableData = new Array();
			    _this.loadingUI = true;
			    $.ajax({
				    url: _this.queryCountUrl,
				    type: 'POST',
				    dataType: 'json',
				    data: {
					    department_no: _this.userInfo.department_no,
				    },
				    success: function (data) {
					    if (data.status) {
						    _this.totalRecords = parseInt(data.info);
						    _this.onSearchDetailData();
					    }
				    },
			    })
		    },
		    handleAdd() {
			    this.addInfo = {
				    department_no: this.userInfo.department_no,
				    department_name: this.userInfo.department_name,
				    name: "",
			    };
			    this.isError = false;
			    this.errorMsg = '';
			    this.addDialogVisible = true;
		    },

		    handleEdit(index, item) {
			    this.isError = false;
			    this.errorMsg = '';
			    this.selectedItem = item;
			    this.editInfo = copyObject(this.selectedItem);
			    this.editInfo.department_name = _this.userInfo.department_name;
			    this.modifyDialogVisible = true;
		    },

		    handleDelete() {
			    if (_this.multipleSelection.length > 0) {
				    _this.deleteConfirmVisible = true;
			    }
		    },

		    onConfirmDelete: function () {
			    _this.deleteConfirmVisible = false;
			    $.ajax({
				    url: _this.deleteUrl,
				    type: 'POST',
				    dataType: 'json',
				    data: {"data": _this.multipleSelection},
				    success: function (data) {
					    if (data.status > 0) {
						    _this.onSearchRecordCounts();//reload
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
		    onAdd() {
			    _this.isError = _this.validateForm(_this.addInfo);
			    if (!_this.isError) {
				    $.ajax({
					    url: _this.addUrl,
					    type: 'POST',
					    dataType: 'json',
					    data: _this.addInfo,
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
		    onEdit() {
			    _this.isError = _this.validateForm(_this.editInfo);
			    if (!_this.isError) {
				    $.ajax({
					    url: _this.editUrl,
					    type: 'POST',
					    dataType: 'json',
					    data: _this.editInfo,
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
		    validateForm(formObj)
		    {
			    var iserror = false;
			    if (isStringEmpty(formObj.name)) {
				    iserror = true;
				    this.errorMsg = '保洁员姓名不能为空！';
			    }
			    return iserror;
		    },
		    onkeydown: function (e) {
			    var ev = document.all ? window.event : e;
			    if (ev.keyCode == 13) {//enter key
				    if (_this.addDialogVisible == true) {
					    _this.onAdd();
				    }
				    else if (_this.modifyDialogVisible == true) {
					    _this.onEdit();
				    }
			    }
		    },

	    },

	    filters: {
		    filterDepartName(no) {
			    if (no == _this.userInfo.department_no) {
				    return _this.userInfo.department_name;
			    }
			    return "";
		    },
	    },


	    created: function () {
		    this.userInfo = JSON.parse(sessionStorage.getItem('user'));
		    this.onSearchRecordCounts();
	    },

	    mounted: function () {
		    window.addEventListener('keydown', _this.onkeydown);
	    },
	    destroyed: function () {
		    console.log("destroyed vue");
		    window.removeEventListener('keydown', _this.onkeydown);

	    },
    }

</script >
<style lang="scss" scoped >

</style >