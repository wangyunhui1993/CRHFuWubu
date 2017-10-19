<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml" >
    <div >
        <el-col :span="22" class="breadcrumb-container" >
            <div class="title" >基础数据 / 修程管理</div >
        </el-col >
        <el-col :span="2" style="background-color: #E5E9F2;" >
            <el-button
		            style="margin-left: 10px;margin-top: 7px; margin-bottom: 7px"
		            size="normal"
		            type="primary"
		            @click="handleAdd" >增加
            </el-button >
        </el-col >
        <el-col class="well well-lg" style="background-color: white;" >
            <el-table
		            :data="tableData"
		            border
		            style="width: 100%" >
                <el-table-column
		                width="80"
		                prop="id"
		                label="序号" >
                    <template scope="scope" >
                        <span >{{scope.$index +1}}</span >
                    </template >
                </el-table-column >
                <el-table-column
		                width="200"
		                prop="name"
		                label="修程名称" >
                </el-table-column >
	            <el-table-column
			            label="修程项目" >
		            <template scope="scope" >
			            <el-tag
				             style="margin-left:2px;"
				             :key="tag"
				             v-for="tag in scope.row.category.split(',')"
				             :closable="false"
			            >{{tag}}
			            </el-tag >
		            </template >
	            </el-table-column >
                <el-table-column
		                width="120"
		                prop="font_color"
		                label="字体颜色" >
                    <template scope="scope" >
                        <div :style="{'background-color': scope.row.font_color, 'margin': '5px'}" >
                            <span >{{scope.row.font_color}}</span >
                        </div >
                    </template >
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
		                layout="prev, pager, next, jumper"
		                :total="totalRecords" >
                </el-pagination >
            </div >
        </el-col >
        <el-dialog title="增加修程" v-model="addDialogVisible" size="tiny" >
            <el-form :model="form" >
                <el-form-item label="修程名称：" :label-width="formLabelWidth" >
                    <el-input v-model="form.name" auto-complete="off" @change="onChange" ></el-input >
                </el-form-item >
	            <el-form-item label="修程项目：" :label-width="formLabelWidth" >
		            <table style="width: 100%" >
                        <tr >
                            <td >
								<div style="border-width: 0.5px;
								    border-style: solid;
								    border-color: lightgrey;
									width: 100%;
									min-height: 40px;
									" >
					                <el-tag
							                style="margin-left:2px;"
							                :key="tag"
							                v-for="tag in form.categoryUI"
							                :closable="true"
							                :close-transition="false"
							                @close="handleClose(tag)"
					                >{{tag}}
					                </el-tag >
									<el-input
											class="input-new-tag"
											v-if="inputVisible"
											v-model="inputValue"
											ref="saveTagInput"
											size="normal"
											@keyup.enter.native="handleInputConfirm()"
											@blur="handleInputConfirm()"
									>
									</el-input >

			                    </div >
                            </td >
	                        <td style="width: 30px;vertical-align: text-top;" >
		                        <el-button type="primary"
		                                   :disabled="inputVisible"
		                                   icon="plus"
		                                   size="normal"
		                                   @click="onAddCategory()"
		                                   style="zoom: 80%;margin-left: 5px;" ></el-button >
                            </td >
                        </tr >
		            </table >
	            </el-form-item >

                <el-form-item label="颜色：" :label-width="formLabelWidth" >
                </el-form-item >
	             <div class="block" style="margin-top: -60px;margin-left:60px; " >
                   <el-color-picker v-model="form.font_color"
                                    @change="onChange" >
                   </el-color-picker >
	            </div >
            </el-form >
	         <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
	                   :title="errorMsg"
	                   type="error"
	                   :closable="false"
	                   show-icon >
            </el-alert >
            <div slot="footer" class="dialog-footer" >
                <el-button @click="addDialogVisible = false" >取 消</el-button >
                <el-button type="primary" @click="onAdd" >确 定</el-button >
            </div >
        </el-dialog >

        <el-dialog title="编辑修程" v-model="modifyDialogVisible" size="tiny" >
            <el-form :model="modifyForm" >
                <el-form-item label="修程名称：" :label-width="formLabelWidth" >
                    <el-input v-model="modifyForm.name" auto-complete="off" @change="onChange" ></el-input >
                </el-form-item >
				<el-form-item label="修程项目：" :label-width="formLabelWidth" >
		            <table style="width: 100%" >
                        <tr >
                            <td >
								<div style="border-width: 0.5px;
								    border-style: solid;
								    border-color: lightgrey;
									width: 100%;
									min-height: 40px;
									" >
					                <el-tag
							                style="margin-left:2px;"
							                :key="tag"
							                v-for="tag in modifyForm.categoryUI"
							                :closable="true"
							                :close-transition="false"
							                @close="handleClose(tag)"
					                >{{tag}}
					                </el-tag >
									<el-input
											class="input-new-tag"
											v-if="inputVisible"
											v-model="inputValue"
											ref="saveTagInput"
											size="normal"
											@keyup.enter.native="handleInputConfirm()"
											@blur="handleInputConfirm()"
									>
									</el-input >

			                    </div >
                            </td >
	                        <td style="width: 30px;vertical-align: text-top;" >
		                        <el-button type="primary"
		                                   :disabled="inputVisible"
		                                   icon="plus"
		                                   size="normal"
		                                   @click="onAddCategory()"
		                                   style="zoom: 80%;margin-left: 5px;" ></el-button >
                            </td >
                        </tr >
		            </table >
	            </el-form-item >

                <el-form-item label="颜色：" :label-width="formLabelWidth" >
                </el-form-item >
	            <div class="block" style="margin-top: -60px;margin-left:60px; " >
                    <el-color-picker v-model="modifyForm.font_color"
                                     @change="onChange" ></el-color-picker >
	            </div >
            </el-form >
            <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
                      :title="errorMsg"
                      type="error"
                      :closable="false"
                      show-icon >
            </el-alert >
	        <!--<div class="alert alert-danger" v-if="isError" style="margin-top: 10px;padding: 5px;" >-->
	        <!--{{errorMsg}}!-->
	        <!--</div >-->
            <div slot="footer" class="dialog-footer" >
                <el-button @click="modifyDialogVisible = false" >取 消</el-button >
                <el-button type="primary" @click="onEidt" >确 定</el-button >
            </div >
        </el-dialog >

		<el-dialog title="提示" v-model="deleteConfirmVisible" size="tiny" >
		  <span >确认要删除名称为[ <b >{{selectedItem.name}}</b > ]的修程吗？</span >
		  <span slot="footer" class="dialog-footer" >
		    <el-button @click="deleteConfirmVisible = false" >取 消</el-button >
		    <el-button type="primary" @click="onConfirmDelete" >确 定</el-button >
		  </span >
		</el-dialog >

	    <!--<div class="modal fade" id="deleteConfirmMsg" role="dialog" >-->
	    <!--<div class="modal-dialog" >-->
	    <!--&lt;!&ndash; Modal content&ndash;&gt;-->
	    <!--<div class="modal-content" >-->
	    <!--<div class="modal-header" style="text-align: left" >-->
	    <!--<h3 >提示</h3 >-->
	    <!--</div >-->
	    <!--<div class="modal-body" style="font-size: 18px;font-family: FontAwesome" >-->
	    <!--&lt;!&ndash; 加上<form>标签可以使得modal窗口在点击按钮都自动dismiss&ndash;&gt;-->
	    <!--确认要删除名称为<b >"{{selectedItem.name}}"</b >的修程吗？-->
	    <!--<button type="button" style="margin-top: 50px;font-size: 16px" class="btn btn-danger btn-block"-->
	    <!--v-on:click="onConfirmDelete" >确 定-->
	    <!--</button >-->
	    <!--</div >-->
	    <!--</div >-->
	    <!--</div >-->
	    <!--</div >-->

    </div >
</template >

<script >
    import Vue from 'vue'
    var _this;

    export default {
	    name: "xiucheng",
	    components: {},
	    data () {
		    _this = this;
		    return {
			    addUrl: HOME + "RepairInfo/addData",
			    editUrl: HOME + "RepairInfo/modifyData",
			    deleteUrl: HOME + "RepairInfo/deleteData",
			    queryCountUrl: HOME + "RepairInfo/getRecordsCount",
			    queryDataUrl: HOME + "RepairInfo/getRecords",
			    isError: false,
			    errorMsg: '',
			    filters: {},
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
				    name: "",
				    font_color: "#000000",
				    category: '',
				    categoryUI: []
			    },
			    formLabelWidth: '100px',

			    //增加对话框
			    modifyDialogVisible: false,
			    modifyForm: {
				    id: '',
				    name: "",
				    font_color: "#000000",
				    category: '',
				    categoryUI: []
			    },
			    inputValue: '',
			    inputVisible: false,

		    }
	    },
	    methods: {
		    handleInputConfirm() {
			    var objForm = _this.modifyDialogVisible == true ? _this.modifyForm : _this.form;
			    if (_this.inputValue) {
				    objForm.categoryUI.push(_this.inputValue);
			    }
			    _this.inputVisible = false;
			    _this.inputValue = '';
		    },
		    handleClose(tag)
		    {
			    var objForm = _this.modifyDialogVisible == true ? _this.modifyForm : _this.form;
			    objForm.categoryUI.splice(objForm.categoryUI.indexOf(tag), 1);
			    /*WA for refresh UI*/
			    this.inputVisible = true;
			    this.inputVisible = false;
		    },
		    onAddCategory: function () {
			    var objForm = _this.modifyDialogVisible == true ? _this.modifyForm : _this.form;
			    _this.inputValue = '项目' + (objForm.categoryUI.length + 1).toString();
			    this.inputVisible = true;
			    this.$nextTick(_ => {
				    this.$refs.saveTagInput.$refs.input.focus();
			    });
		    },

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
//        this.onSearchDetailData();
//        console.log(`当前页: ${val}`);
		    },
		    onSearchDetailData()
		    {
			    $.ajax({
				    url: _this.queryDataUrl,
				    type: 'POST',
				    dataType: 'json',
				    data: {"start_record": _this.startRecord, "page_size": _this.pageSize},
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
				    url: this.queryCountUrl,
				    type: 'POST',
				    dataType: 'json',
				    data: this.filters,
				    success: function (data) {
					    if (data.status) {
						    _this.totalRecords = parseInt(data.info);
						    _this.onSearchDetailData();
					    }
				    },
			    })
		    },

		    handleAdd() {
			    this.isError = false;
			    this.errorMsg = '';
			    this.form.name = '';
			    this.form.categoryUI = [];
			    this.addDialogVisible = true;
		    },

		    handleEdit(index, item) {
			    this.isError = false;
			    this.errorMsg = '';
			    this.selectedItem = item;
			    this.modifyForm = copyObject(this.selectedItem);
			    this.modifyForm.categoryUI = _this.selectedItem.category.split(',');
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
			    if (isStringEmpty(formObj.name)) {
				    iserror = true;
				    this.errorMsg = '名称不能为空！';
			    }
			    if (!iserror && isStringEmpty(formObj.font_color)) {
				    iserror = true;
				    this.errorMsg = '字体不能为空！';
			    }
			    if (!iserror && formObj.categoryUI.length == 0) {
				    iserror = true;
				    this.errorMsg = '修程项目不能为空！';
			    }
			    return iserror;
		    },
		    onAdd() {
			    _this.isError = this.validateForm(this.form);
			    _this.form.category = _this.form.categoryUI.join(',');
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
			    _this.modifyForm.category = _this.modifyForm.categoryUI.join(',');
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
							    _this.selectedItem.font_color = _this.modifyForm.font_color;
							    _this.selectedItem.name = _this.modifyForm.name;
							    _this.selectedItem.category = _this.modifyForm.category;
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


	    },
	    filters: {
		    filterParentName(id) {
			    let result = ''
			    for (let i = 0; i < _this.parent_type_list.length; i++) {
				    if (id == _this.parent_type_list[i].value) {
					    result = _this.parent_type_list[i].text;
					    break;
				    }
			    }
			    return result;
		    },
	    },
	    computed: {},
	    created: function () {
		    this.userinfo = JSON.parse(sessionStorage.getItem('user'));
		    if (this.userinfo == null) {
			    this.$router.push({path: '/Login'});
			    return;
		    }
	    },
	    mounted: function () {
		    this.onSearchRecordCounts();
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
</style >
