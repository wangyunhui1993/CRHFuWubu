<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml" >
  <div >
    <el-col :span="24" class="breadcrumb-container" >
       <div class="title" >作业管理 / 滤尘网工作量管理</div >
    </el-col >
    <el-col class="well well-lg" style="background-color: white;" >
      <el-col :span="24" >
        <el-date-picker
		        format="yyyy-MM-dd"
		        v-model="form.formDate"
		        type="daterange"
		        placeholder="选择日期范围" >
        </el-date-picker >
        <el-button type="primary" @click="toToday" >今天</el-button >
        <el-select v-model="form.train_column" filterable placeholder="搜索车列号" clearable >
                <el-option
		                v-for="item in trainColumns"
		                :label="item.train_column"
		                :value="item.id" >
                </el-option >
         </el-select >
        <el-button type="primary" icon="search" @click="search" >查询</el-button >
      </el-col >
        <br >
        <el-table
		        :data="tableData"
		        border
		        style="width: 100%"
		        @selection-change="handleSelectionChange" v-loading="listLoading" >
          <el-table-column
		          type="selection"
		          width="55" >
          </el-table-column >
          <el-table-column
		          label="日期"
          >
            <template scope="scope" >{{ scope.row.date }}</template >
          </el-table-column >
          <el-table-column label="编辑" >
          <template scope="scope" style="text-align: center" >
            <el-button
		            size="small"
		            type="primary"
		            :disabled="cantEdit"
                                @click="editAtDate(scope.$index, scope.row)">编辑
                        </el-button>
          </template >
        </el-table-column >
         <el-table-column label="删除" >
          <template scope="scope" style="text-align: center" >
            <el-button
		            size="small"
		            type="primary"
                                @click="deleteAtDate(scope.row)">删除
                        </el-button>
          </template >
        </el-table-column >

      </el-table >
      <br >
      <div class="block" align="center" >
        <el-pagination
		        @current-change="handleCurrentChange"
		        :current-page="page"
		        :page-size="form.length"
		        layout="total, prev, pager, next, jumper"
		        :total="total" >
        </el-pagination >
      </div >
      <br >
    </el-col >
    <el-dialog title="提示" v-model="deleteConfirmVisible" size="tiny" >
      <span >确认要删除选定的滤网布工作量信息吗？</span >
      <span slot="footer" class="dialog-footer" >
      <el-button @click="deleteConfirmVisible = false" >取 消</el-button >
      <el-button type="primary" @click="onConfirmDelete" >确 定</el-button >
    </span >
    </el-dialog >
    <el-dialog title="编辑作业" v-model="modifyDialogVisible" size="large" >
    <el-table :data="modifyForm.data"
              border
              style="width: 100%"
              max-height="350"
              v-loading="dialogLoading"
    >
          <el-table-column
		          width="50"
		          label="序号" >
	            <template scope="scope" >
                  <span >{{scope.$index + 1}}</span >
                </template >
                </el-table-column >
                <el-table-column :label="trainModels[0]" header-align="center" >
                    <el-table-column
		                    width="200"
		                    prop="train_column"
		                    label="车列号" >
                        <template scope="scope" >
                            <!--  <el-input type="text" v-model="scope.row.train_group" auto-complete="off" placeholder="账号"></el-input > -->
                            <el-select v-model="scope.row.train_model_data[0].train_column" filterable
                                       placeholder="搜索车列号" >
                                <el-option
		                                v-for="item in trainColumns"
		                                :label="item.train_column"
		                                :value="item.id" >
                                </el-option >
                            </el-select >
                        </template >

                    </el-table-column >

                    <el-table-column
		                    width="200"
		                    prop="number"
		                    label="标准组数量(组)"
                    >
                        <template scope="scope" >
                            <div style="margin-top:8px" >
                                <el-input-number type="number" v-model="scope.row.train_model_data[0].number"
                                                 :min="1" ></el-input-number >
                            </div >

                        </template >
                    </el-table-column >
                </el-table-column >

                <el-table-column :label="trainModels[1]" header-align="center" >
                    <el-table-column
		                    width="200"
		                    prop="train_column"
		                    label="车列号" >
                        <template scope="scope" >
                            <!--  <el-input type="text" v-model="scope.row.train_group" auto-complete="off" placeholder="账号"></el-input > -->
                            <el-select v-model="scope.row.train_model_data[1].train_column" filterable
                                       placeholder="搜索车列号" >
                                <el-option
		                                v-for="item in trainColumns"
		                                :label="item.train_column"
		                                :value="item.id" >
                                </el-option >
                            </el-select >
                        </template >

                    </el-table-column >

                    <el-table-column
		                    width="200"
		                    prop="number"
		                    label="标准组数量(组)"
                    >
                        <template scope="scope" >
                            <div style="margin-top:8px" >
                                <el-input-number type="number" v-model="scope.row.train_model_data[1].number"
                                                 :min="1" ></el-input-number >
                            </div >

                        </template >
                    </el-table-column >
                </el-table-column >

                <el-table-column :label="trainModels[2]" header-align="center" >
                    <el-table-column
		                    width="200"
		                    prop="train_column"
		                    label="车列号" >
                        <template scope="scope" >
                            <!--  <el-input type="text" v-model="scope.row.train_group" auto-complete="off" placeholder="账号"></el-input > -->
                            <el-select v-model="scope.row.train_model_data[2].train_column" filterable
                                       placeholder="搜索车列号" >
                                <el-option
		                                v-for="item in trainColumns"
		                                :label="item.train_column"
		                                :value="item.id" >
                                </el-option >
                            </el-select >
                        </template >

                    </el-table-column >

                    <el-table-column
		                    width="200"
		                    prop="number"
		                    label="标准组数量(组)"
                    >
                        <template scope="scope" >
                            <div style="margin-top:8px" >
                                <el-input-number width="100" type="number"
                                                 v-model="scope.row.train_model_data[2].number"
                                                 :min="1" ></el-input-number >
                            </div >

                        </template >
                    </el-table-column >
                </el-table-column >

                <el-table-column
		                width="300"
		                prop="problem"
		                label="动车所检查发现问题" >
                    <template scope="scope" >
                        <el-input type="textarea" v-model="scope.row.problem" auto-complete="off"
                                  placeholder="动车所检查发现问题" ></el-input >
                    </template >
                </el-table-column >

	      <el-table-column
			      width="100"
			      label="操作" >
          <template scope="scope" >
            <el-button
		            size="small"
		            type="danger"
                                @click="handleDelete(scope.$index, scope.row)">删除
                        </el-button>
          </template >
        </el-table-column >
        
      </el-table >
      <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
                :title="errorMsg"
                type="error"
                :closable="false"
                show-icon >
      </el-alert >
      <div slot="footer" class="dialog-footer" style="margin-bottom: 20px; margin-right: 30px" >
        <el-button @click="modifyDialogVisible = false" >取 消</el-button >
        <el-button type="primary" @click="onEdit" >确 定</el-button >
      </div >
    </el-dialog >
	    <el-dialog v-model="deleteVisible" >
      <h4 style="font-weight: bold; " >确认要删除序号[ {{deleteIndex+1}} ]项吗？</h4 >
      <span slot="footer" class="dialog-footer" >
	    <el-button @click="deleteVisible = false" >返回</el-button >
	    <el-button @click="confirmDelete" type="primary" >确定</el-button >
	  </span >
    </el-dialog >
   </div >
</template >

<script >
  import Vue from 'vue'
  import {Notification} from 'element-ui'
  var _this
  export default {
	  name: "filter_dust_statistics_manage",
	  components: {},
	  data () {
		  _this = this;
		  return {
			  userInfo: {},
			  queryDataUrl: HOME + "filterDustStatistics/getStatisticsData",
			  queryCountUrl: HOME + "filterDustStatistics/getRecordsCount",
			  deleteUrl: HOME + "filterDustStatistics/delete",
			  getStatisticsAtDateUrl: HOME + "filterDustStatistics/getStatisticsAtDate",
			  getAllTrainColumnUrl: HOME + "TrainColumn/getRecords",
			  editStatisticsAtDateUrl: HOME + "filterDustStatistics/editStatisticsAtDate",
			  listLoading: false,
			  form: {
				  formDate: [],
				  start_records: 0,
				  length: 10,
				  train_column: '',
			  },

			  tableData: [],

			  multipleSelection: [],
			  total: 0,
			  page: 1,
			  modifyDialogVisible: false,
			  cantEdit: false,
			  modifyForm: {
				  data: [
//					  {
//
//						  train_model_data: [
//							  {
//					              id: '1',
//								  train_column: '',
//								  number: 1,
//								  train_model: 0,
//							  },
//							  {
// 					              id: '1',
//								  train_column: '',
//								  number: 1,
//								  train_model: 1,
//							  },
//							  {
// 					              id: '1',
//								  train_column: '',
//								  number: 1,
//								  train_model: 2,
//							  }
//						  ],
//						  problem: '',
//					  }
				  ],
			  },
			  trainColumns: [],
			  dialogLoading: true,
			  deleteConfirmVisible: false,
			  deletedItem: {
				  data: [],
			  },
			  errorMsg: '',
			  isError: false,
			  trainModels: [],
			  deleteVisible: false,
			  deleteIndex: -1
		  }

	  },
	  methods: {
		  toToday(){
			  this.form.formDate = [Date.now(), Date.now()]
		  },

		  search() {
			  this.onSearchRecordCounts();
		  },
		  handleSelectionChange(val) {
			  if (val.length <= 0) {
				  this.cantEdit = false;
			  } else {
				  this.cantEdit = true;
			  }
			  this.multipleSelection = val;
		  },
		  onSearchRecordCounts()
		  {
			  let postData = copyObject(this.form);
			  if (postData.formDate[1]) {
				  postData.formDate[0] = new Date(this.form.formDate[0]).format("yyyy-MM-dd");
				  postData.formDate[1] = new Date(this.form.formDate[1]).format("yyyy-MM-dd");
			  } else {
				  postData.formDate = null;
			  }


			  $.ajax({
				  url: _this.queryCountUrl,
				  type: 'POST',
				  dataType: 'json',
				  data: postData,
				  success: function (data) {
					  if (data.status) {
						  _this.a = data.info;
						  _this.total = parseInt(data.info.totalrecords);
					  }
					  _this.getStatisticsData();
				  },
			  })
		  },
		  getStatisticsData() {
			  _this.listLoading = true;
			  let postData = copyObject(this.form);
			  if (postData.formDate[1]) {
				  postData.formDate[0] = new Date(this.form.formDate[0]).format("yyyy-MM-dd");
				  postData.formDate[1] = new Date(this.form.formDate[1]).format("yyyy-MM-dd");
			  } else {
				  postData.formDate = null;
			  }

			  $.ajax({
				  url: _this.queryDataUrl,
				  type: 'POST',
				  dataType: 'json',
				  data: postData,
				  success: function (data) {
					  if (data.status) {
						  // var dataList = data.info;
						  _this.tableData = data.info;
					  } else {

					  }
					  _this.listLoading = false;
				  }
			  })
		  },
		  handleDelete(index, item) {
			  this.deleteIndex = index;
			  this.deleteVisible = true;
		  },
		  confirmDelete() {
//			  _this.modifyForm.data.splice(this.deleteIndex, 1);
			  $.ajax({
				  url: _this.deleteUrl,
				  type: 'POST',
				  dataType: 'json',
				  data: {data: [_this.modifyForm.data[_this.deleteIndex]]},
				  success: function (data) {
					  if (data.status) {
						  Notification({
							  title: '成功',
							  message: '删除成功',
							  type: 'success'
						  });
						  _this.modifyForm.data.splice(_this.deleteIndex, 1);
					  } else {
						  Notification({
							  title: '失败',
							  message: '删除失败',
							  type: 'error'
						  });
					  }
				  },
				  error: function (data) {
					  Notification({
						  title: '失败',
						  message: '删除失败',
						  type: 'error'
					  });
				  }
			  })
			  this.deleteVisible = false;
		  },
		  deleteAtDate(data){
			  _this.deletedItem.data = [];
			  if (_this.multipleSelection.length >= 1) {
				  _this.deletedItem.data = _this.multipleSelection;
			  } else {
				  _this.deletedItem.data.push(data);
			  }
			  _this.deleteConfirmVisible = true;

		  },
		  onConfirmDelete(){
			  _this.deleteConfirmVisible = false;

			  $.ajax({
				  url: _this.deleteUrl,
				  type: 'POST',
				  dataType: 'json',
				  data: _this.deletedItem,
				  success: function (data) {
					  if (data.status) {
						  Notification({
							  title: '成功',
							  message: '删除成功',
							  type: 'success'
						  });
						  _this.onSearchRecordCounts();
					  } else {
						  Notification({
							  title: '失败',
							  message: '删除失败',
							  type: 'error'
						  });
					  }

				  }
			  })
		  },
		  editAtDate(index, data){
			  _this.modifyDialogVisible = true;
			  _this.isError = false;
			  _this.errorMsg = '';

			  $.ajax({
				  url: _this.getStatisticsAtDateUrl,
				  type: 'POST',
				  dataType: 'json',
				  data: data,
				  success: function (data) {
					  if (data.status) {
						  _this.modifyForm.data = [];
						  var datainfo = data.info;
						
						  for (var i = 0; i < datainfo.length; ) {							  	
									
									var guid = datainfo[i]['guid'];
									var problem = datainfo[i]['problem'];	
									var submitdate = datainfo[i]['date'];	

									var notInitedTMode = [];
									for(var k = 0; k < _this.trainModels.length; k++)
									{
										notInitedTMode[k] = true;
									}

									var Tmodeldata = [];									

									for(var iM = 0;iM < _this.trainModels.length; iM++)
									{
										//var indx = i + iM;										
										var indx = i;									

										var itemT = new Object();
										if(guid == datainfo[indx]['guid'])
										{
											i++;

											itemT.guid = guid;
											itemT.problem = problem;

											itemT.id = datainfo[indx]['id'];
											itemT.train_column = datainfo[indx]['train_column'] == 0 ? '' : datainfo[indx]['train_column'];
											itemT.number = parseInt(datainfo[indx]['number']);
											itemT.train_model = datainfo[indx]['train_model'];	

											Tmodeldata.push(itemT);

											notInitedTMode[itemT.train_model] = false;
										}
										else{//flag a dummy item

											//notInitedTMode[iM] = true;
										}										
									}

									for(var j = 0; j < _this.trainModels.length; j++)
									{//insert dummy items
										if(notInitedTMode[j] == true)
										{
											itemT = new Object();
											itemT.guid = guid;
											itemT.problem = problem;

											itemT.id = '-1';
											itemT.train_column = '';
											itemT.number = 0;
											itemT.train_model = j;

											Tmodeldata.push(itemT);
										}
									}

									var itemdataForm = new Object;
									itemdataForm.problem = problem;
									itemdataForm.date = submitdate;
									//itemdataForm.id = id;
									itemdataForm.train_model_data = Tmodeldata;

									_this.modifyForm.data.push(itemdataForm);
						  }

					  } else {
						  Notification({
							  title: '失败',
							  message: '获取日期下工作量信息失败',
							  type: 'error'
						  });
					  }
					  _this.dialogLoading = false;
				  },
			  })
		  },
		  onEdit(){
			  _this.isError = this.validateForm(this.modifyForm);
                if (_this.isError)
                    return;
			  if (!_this.isError) {

				  var submitData = {data: []};
				  for (var i = 0; i < _this.modifyForm.data.length; i++) {
					  var item = _this.modifyForm.data[i];
					  for (var j = 0; j < item.train_model_data.length; j++) {
						  submitData.data.push({
							  guid:item.train_model_data[j].guid,
							  id: item.train_model_data[j].id,
							  date:item.date,
							  train_column: item.train_model_data[j].train_column,
							  number: item.train_model_data[j].number,
							  train_model: item.train_model_data[j].train_model,
							  problem: item.problem,
						  });
					  }
				  }

				  $.ajax({
					  url: _this.editStatisticsAtDateUrl,
					  type: 'POST',
					  dataType: 'json',
					  data: submitData,//_this.modifyForm,
					  success: function (data) {
						  if (data.status) {
							  Notification({
								  title: '成功',
								  message: '修改成功',
								  type: 'success'
							  });
						  } else {
							  Notification({
								  title: '失败',
								  message: '修改失败',
								  type: 'error'
							  });
						  }
						  _this.modifyDialogVisible = false;

					  },
				  })
			  }
		  },
		  validateForm(formObj)
		  {

			  var iserror = false;
                var isTrainError = true;
			  for (var i = formObj.data.length - 1; i >= 0; i--) {
				  var item = formObj.data[i];
				  for (var j = 0; j < item.train_model_data.length; j++) {
                        if (!isStringEmpty(item.train_model_data[j].train_column)) {
                            isTrainError = false;
                            break;
                        }
//                        if (isStringEmpty(item.train_model_data[j].train_column)) {
//                            isTrainError
//                            iserror = true;
//                            this.errorMsg = '某行车列数据为空，将不会进行记录！';
//                        }
					  }
                    if (isTrainError == true) {
						  iserror = true;
                        this.errorMsg = '第' + (i + 1).toString() + '行车列数据不能为空，请检查！';
                        break;
					  }
				  }
                if (!iserror) {
                    this.errorMsg = '';
                } else {
                    this.$message(this.errorMsg);
			  }

			  return iserror;
		  },


		  getAllTrainColumn(){
			  this.userInfo = JSON.parse(sessionStorage.getItem('user'));
			  var data = {department_no: ''};
			  data.department_no = this.userInfo.department_no;
			  if (data.department_no == '001') {
				  data = null;
			  }
			  $.ajax({
				  url: _this.getAllTrainColumnUrl,
				  type: 'POST',
				  dataType: 'json',
				  data: data,
				  success: function (data) {
					  if (data.status) {
						  _this.trainColumns = data.info;
					  } else {
						  Notification({
							  title: '失败',
							  message: '获取车列信息失败',
							  type: 'error'
						  });
					  }
				  },
			  })
		  },

		  handleCurrentChange(val) {
			  this.page = val;
			  this.form.start_records = (this.page - 1) * this.form.length;
			  this.getStatisticsData();
		  },

	  },
	  filters: {
		  filterModelName(id) {
			  let result = ''
			  for (let i = 0; i < _this.trainModels.length; i++) {
				  if (id == _this.trainModels[i].value) {
					  result = _this.trainModels[i].text;
					  break;
				  }
			  }
			  return result;
		  },
	  },
	  computed: {},
	  created: function () {
		  this.onSearchRecordCounts();
		  _this.getAllTrainColumn();
		  _this.trainModels = getTrainModel();
	  },
	  mounted: function () {

	  },
  }

</script >
<style >

</style >
