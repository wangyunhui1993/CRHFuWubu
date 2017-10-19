<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml" >
    <div >
        <el-col :span="24" class="breadcrumb-container" >
            <div class="title" >系统管理 / 班组管理</div >
        </el-col >
        <el-col class="well well-lg" style="background-color: white;" >

            <el-row >
                <el-col :span="5" style="margin-left: -20px;" >
                    <div style="margin-bottom: 10px; font-size: 16px; cursor: pointer"
                         v-show="userInfo.department_no == '001'"
                         v-bind:class="{parentPart: activeIndex == -1}"
                         class="parentPart"
                         @click="choosePart()"
                    >{{userInfo.department_no}} {{userInfo.department_name}}</div >
                    <ul v-show="departments.length > 0" style="margin-left: -20px" >
                        <li v-for=" (sub, index) in departments"
                            style="list-style-type: none; font-size: 14px; margin-top: 10px;cursor: pointer"
                            v-bind:class="{subPart: activeIndex == index}"
                            @click="chooseSubPart(index, sub)" >
                            {{sub.department_no}} {{sub.department_name}}
                        </li >
                    </ul >
                </el-col >
                <el-col :span="19"  style="margin-left: -20px;">
                    <div align="right" style="margin-bottom: 20px" >
                        <el-button
		                        icon="plus"
		                        size="normal"
		                        type="primary"
		                        @click="handleAdd" >班组
                        </el-button >
                    </div >
                    <el-table
		                    :data="tableData"
		                    border
		                    style="width: 100%;" >
                        <el-table-column
		                        width="70"
		                        prop="id"
		                        label="序号" >
                        </el-table-column >

                        <el-table-column
		                        width="150"
		                        label="部门名称" >
                            <template scope="scope" >
                                <div >
                                    {{scope.row.department_no | filterDepartmentName}}
                                </div >
                            </template >
                        </el-table-column >
                        <el-table-column

		                        prop="work_group_no"
		                        label="班组编号" >
                        </el-table-column >
                        <el-table-column

		                        prop="work_group_name"
		                        label="班组名称" >
                        </el-table-column >
                        <el-table-column

		                        prop="comment"
		                        label="备注" >
                        </el-table-column >

                        <el-table-column label="操作" width="150" >
                            <template scope="scope" >
                                <el-button
		                                size="small"
		                                type="primary"
		                                @click="handleEdit(scope.$index, scope.row)" >编辑
                                </el-button >
                                <el-button
		                                size="small"
		                                type="danger"
		                                @click="handleDelete(scope.$index, scope.row)" >删除
                                </el-button >
                            </template >
                        </el-table-column >
                    </el-table >
                    <div class="block" style="text-align: center; margin-top: 20px" >
                        <el-pagination
		                        @size-change="handleSizeChange"
		                        @current-change="handleCurrentChange"
		                        :current-page="currentPage"
		                        :page-size="pageSize"
                                layout="total, prev, pager, next, jumper"
		                        :total="totalPage" >
                        </el-pagination >
                    </div >
                </el-col >
            </el-row >
        </el-col >

        <el-dialog title="增加班组" v-model="addDialogVisible" size="tiny" >
            <el-form :model="form" >
                <el-form-item label="所属部门：" :label-width="formLabelWidth" >
                    <el-select v-model="form.department_no" style="width: 100%" >
                        <el-option
		                        v-for="item in departments"
		                        v-bind:value="item.department_no"
		                        v-bind:label="item.department_name" >
                        </el-option >
                    </el-select >
                </el-form-item >
                <el-form-item label="班组名称：" :label-width="formLabelWidth" >
                    <el-input v-model="form.work_group_name" ></el-input >
                </el-form-item >
                <el-form-item label="备注：" :label-width="formLabelWidth" >
                    <el-input v-model="form.comment" ></el-input >
                </el-form-item >
            </el-form >
            <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
                      :title="errorMsg"
                      type="error"
                      :closable="false"
                      show-icon >
            </el-alert >
            <div slot="footer" class="dialog-footer" >
                <el-button @click="addDialogVisible = false" >取 消</el-button >
                <el-button type="primary" @click="addWorkGroup" >确 定</el-button >
            </div >
        </el-dialog >

        <el-dialog title="编辑班组" v-model="modifyDialogVisible" size="tiny" >
            <el-form :model="modifyForm" >
                <el-form-item label="所属部门：" :label-width="formLabelWidth" >
                    <el-select v-model="modifyForm.department_no" >
                        <el-option
		                        v-for="item in departments"
		                        v-bind:value="item.department_no"
		                        v-bind:label="item.department_name" >
                        </el-option >
                    </el-select >
                </el-form-item >
                <el-form-item label="班组名称：" :label-width="formLabelWidth" >
                    <el-input v-model="modifyForm.work_group_name" ></el-input >
                </el-form-item >
                <el-form-item label="备注：" :label-width="formLabelWidth" >
                    <el-input v-model="modifyForm.comment" ></el-input >
                </el-form-item >
            </el-form >
            <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
                      :title="errorMsg"
                      type="error"
                      :closable="false"
                      show-icon >
            </el-alert >
            <div slot="footer" class="dialog-footer" >
                <el-button @click="modifyDialogVisible = false" >取 消</el-button >
                <el-button type="primary" @click="modifyWorkGroup" >确 定</el-button >
            </div >
        </el-dialog >

	     <el-dialog title="提示" v-model="deleteConfirmVisible" size="tiny" >
		  <span >确认要删除编号为[ <b >{{selectedItem.work_group_no}}</b > ]的班组吗？</span >
		  <span slot="footer" class="dialog-footer" >
		    <el-button @click="deleteConfirmVisible = false" >取 消</el-button >
		    <el-button type="primary" @click="onConfirmDelete" >确 定</el-button >
		  </span >
		</el-dialog >
    </div >
</template >

<script >
    import Vue from 'vue'
    let _this
    export default {
	    name: "work_group_manage",
	    components: {},
	    data () {
		    _this = this
		    return {
			    userInfo: {},
			    fetchSubDepartmentsURL: HOME + "DepartmentInfo/fetchSubDepartments",
			    addWorkGroupURL: HOME + "WorkGroup/addData",
			    deleteWorkGroupURL: HOME + "WorkGroup/deleteData",
			    modifyWorkGroupURL: HOME + "WorkGroup/modifyData",
			    fetchWorkGroupURL: HOME + "WorkGroup/getRecords",
			    fetchWorkGroupCountURL: HOME + "WorkGroup/getRecordsCount",
			    isError: false,
			    errorMsg: '',
			    tableData: [],
			    //分页
			    totalPage: 1,
			    pageSize: EveryPageNum,//每一页的num
			    currentPage: 1,
			    startRecord: 0,


			    //增加对话框
			    addDialogVisible: false,
			    form: {
				    department_no: "",
				    work_group_name: "",
				    comment: ""
			    },
			    formLabelWidth: '100px',

			    //编辑对话框
			    modifyDialogVisible: false,
			    modifyForm: {
				    id: "",
				    department_no: "",
				    work_group_no: "",
				    work_group_name: "",
				    comment: ""
			    },
			    selectedItem: {},
			    deleteConfirmVisible: false,

			    partInfo: {
				    id: '',
				    department_no: '',
				    department_name: '',
				    sub_parts: [],
				    part_belong: {},
			    },
			    activeIndex: -1,
			    activePartID: "",
			    departments: [],
		    }
	    },
	    methods: {
		    handleSizeChange(val) {
//        console.log(`每页 ${val} 条`);
		    },
		    handleCurrentChange(val) {
			    this.currentPage = val;
			    this.startRecord = this.pageSize * (this.currentPage - 1);
			    this.fetchWorkGroup();
		    },
		    handleAdd()
		    {
			    this.errorMsg = '';
			    _this.isError = false;
			    this.addDialogVisible = true;
		    },

		    handleEdit(index, item) {
			    //this.modifyForm = item; 不能这样直接赋值，不然modifyForm就变成了item对象
			    this.modifyForm.id = item.id;
			    this.modifyForm.department_no = item.department_no;
			    this.modifyForm.work_group_name = item.work_group_name;
			    this.modifyForm.work_group_no = item.work_group_no;
			    this.modifyForm.comment = item.comment;
			    _this.selectedItem = copyObject(item);
			    this.errorMsg = '';
			    _this.isError = false;
			    this.modifyDialogVisible = true;
		    },

		    handleDelete(index, item) {
			    _this.selectedItem = copyObject(item);
			    _this.deleteConfirmVisible = true;
		    },
		    onConfirmDelete()
		    {
		    	this.deleteWorkGroup(_this.selectedItem.id);
			    _this.deleteConfirmVisible = false;
		    },

		    chooseSubPart(index, part) {
			    this.activeIndex = index;
			    if (this.activePartID != part.department_no) {
				    this.activePartID = part.department_no;
				    this.form.department_no = part.department_no
				    //this.tableData = []
				    this.startRecord = 0//切换时reset初始值
				    this.currentPage = 1//切换时reset初始值
				    this.fetchWorkGroupCount()
			    }
		    },
		    choosePart()
		    {
			    this.activeIndex = -1
			    _this.currentDepartment = this.userInfo.department_no;
			    //this.tableData = []
			    this.startRecord = 0//切换时reset初始值
			    this.currentPage = 1//切换时reset初始值
			    this.fetchWorkGroupCount()
		    },

		    deleteWorkGroup(id){
			    if (id) {
				    $.ajax({
					    url: this.deleteWorkGroupURL,
					    type: 'POST',
					    dataType: 'json',
					    data: {"id": id},
					    success: function (data) {
						    _this.isError = data.status == 0;
						    if (!_this.isError) {
							    _this.fetchWorkGroupCount()
							    showMessage(_this, '删除成功', 1);
						    } else {
							    _this.isError = true;
							    _this.errorMsg = '删除失败！'
						    }
					    },
					    error: function (info) {
						    _this.isError = true;
						    _this.errorMsg = '服务器访问出错';
					    }
				    })
			    } else {
				    showMessage(this, "删除项ID为空！", 0)
			    }

		    },

		    validateForm(formObj)
		    {
			    var iserror = false;
			    if (isStringEmpty(formObj.department_no)) {
				    iserror = true;
				    this.errorMsg = '部门不能为空！';
			    }
			    if (!iserror && isStringEmpty(formObj.work_group_name)) {
				    iserror = true;
				    this.errorMsg = '班组不能为空！';
			    }
			    return iserror;
		    },

		    addWorkGroup(){
			    _this.isError = _this.validateForm(this.form);
			    if (!_this.isError) {
				    $.ajax({
					    url: _this.addWorkGroupURL,
					    type: 'POST',
					    dataType: 'json',
					    data: this.form,
					    success: function (data) {
						    _this.isError = data.status == 0;
						    if (!_this.isError) {
							    _this.addDialogVisible = false
							    _this.fetchWorkGroupCount()
							    showMessage(_this, '添加成功', 1);
						    } else {
							    _this.isError = true;
							    _this.errorMsg = '添加失败！'
						    }
					    },
					    error: function (info) {
						    _this.isError = true;
						    _this.errorMsg = '服务器访问出错';
					    }
				    })
			    }
		    },

		    modifyWorkGroup(){
			    _this.isError = _this.validateForm(this.modifyForm);
			    if (!_this.isError) {
				    $.ajax({
					    url: _this.modifyWorkGroupURL,
					    type: 'POST',
					    dataType: 'json',
					    data: this.modifyForm,
					    success: function (data) {
						    _this.isError = data.status == 0;
						    if (!isUndefined(data.info.errorMsg)) {
							    _this.errorMsg = data.info.errorMsg;
							    _this.isError = true;
							    showMessage(_this, _this.errorMsg, 0);//error
						    }
						    else {
							    _this.modifyDialogVisible = false;
							    showMessage(_this, '修改成功', 1);
							    _this.fetchWorkGroup();
						    }
					    },
					    error: function (info) {
						    _this.isError = true;
						    _this.errorMsg = '服务器访问出错';
					    }
				    })
			    }
		    },

		    //获取工作小信息，迅安公司返回全部工作小组，反之获取登录用户所在服务部的工作小组
		    fetchWorkGroup(){
			    _this.currentDepartment = '';
			    if (_this.activePartID.length > 3) {//not all depart
				    _this.currentDepartment = _this.activePartID;
			    }
			    $.ajax({
				    url: _this.fetchWorkGroupURL,
				    type: 'POST',
				    dataType: 'json',
				    data: {
					    "department_no": _this.currentDepartment,
					    "start_record": _this.startRecord,
					    "page_size": _this.pageSize
				    },
				    success: function (data) {
					    _this.isError = data.status == 0;
					    if (!_this.isError) {
						    //TODO:
						    _this.tableData = data.info
					    } else {
						    _this.isError = true;
						    _this.errorMsg = '获取信息失败！'
					    }
				    },
				    error: function (info) {
					    _this.isError = true;
					    _this.errorMsg = '服务器访问出错';
				    }
			    })
		    },
		    //根据部门返回所有小组数,返回成功后加载数据
		    fetchWorkGroupCount(){
			    _this.currentDepartment = '';
			    if (_this.activePartID.length > 3) {//not all depart
				    _this.currentDepartment = _this.activePartID;
			    }
			    $.ajax({
				    url: _this.fetchWorkGroupCountURL,
				    type: 'POST',
				    dataType: 'json',
				    data: {"department_no": _this.currentDepartment},
				    success: function (data) {
					    _this.isError = data.status == 0;
					    if (!_this.isError) {
						    //TODO:
						    let total = parseInt(data.info)
						    _this.totalPage = parseInt(data.info)
						    _this.fetchWorkGroup()
					    } else {
						    _this.isError = true;
						    _this.errorMsg = '获取数据失败！'
					    }
				    },
				    error: function (info) {
					    _this.isError = true;
					    _this.errorMsg = '服务器访问出错';
				    }
			    })
		    },
	    },
	    computed: {
		    currentDepartment(){
			    let $res = "";
			    if (this.activeIndex == -1) {
				    //默认
				    if (this.userInfo.department_no == "001") {
					    $res = "";//返回全部
				    } else {
					    $res = this.userInfo.department_no;
				    }
			    } else {
				    //用户选择以后
				    $res = this.departments[this.activeIndex].department_no;
			    }
			    return $res;
		    }

	    },
	    filters: {
		    filterDepartmentName(id) {
			    let result = ''
			    for (let i = 0; i < _this.departments.length; i++) {
				    if (id == _this.departments[i].department_no) {
					    result = _this.departments[i].department_name;
					    break;
				    }
			    }
			    return result;
		    },
	    },
	    created: function () {
		    this.userInfo = JSON.parse(sessionStorage.getItem('user'))
		    var _this = this;

		    //初始化activeIndex
		    if (this.userInfo.department_no != "001") {
			    this.activeIndex = 0
			    this.form.department_no = this.userInfo.department_no
		    } else {
			    this.activeIndex = -1
		    }
		    this.activePartID = this.userInfo.department_no;

		    //获取服务部信息，迅安公司返回全部服务部，反之获取登录用户所在服务部
		    if (_this.userInfo.department_no == "001") {//是否为迅安公司，获取全部子服务部
			    $.ajax({
				    url: _this.fetchSubDepartmentsURL,
				    type: 'GET',
				    success: function (data) {
					    _this.isError = data.status == 0;
					    if (!_this.isError) {
						    //TODO:
						    _this.departments = data.info
//                            console.log(data.info)
					    } else {
						    _this.isError = true;
						    _this.errorMsg = '获取服务部信息失败！'
					    }

				    },
				    error: function (info) {
					    _this.isError = true;
					    _this.errorMsg = '服务器访问出错';
				    }
			    })
		    } else {
			    _this.departments.push({
				    "department_no": _this.userInfo.department_no,
				    "department_name": _this.userInfo.department_name
			    });
		    }
	    },
	    mounted: function () {
		    _this.fetchWorkGroupCount();
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
</style >
