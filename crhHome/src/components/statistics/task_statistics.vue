<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml" >
    <div >
        <el-col class="breadcrumb-container" >
            <div class="title" >统计查询 / 作业内容统计</div >
        </el-col >
       <el-col class="well well-lg" style="background-color: white;" >

	        <div class="panel panel-primary" >
	            <div class="panel-heading" >
	                <h3 class="panel-title" >筛选列表</h3 >
	            </div >
		        <div class="panel-body" >
			        <el-form :model="queryFilters" label-position="left" label-width="75px" >
				        <el-form-item label="作业日期:" >
						    <el-col :span="5" >
						      <el-form-item prop="dateStart" >
						        <el-date-picker type="datetime" placeholder="起始日期" format="yyyy-MM-dd hh:mm:ss"
						                        v-model="queryFilters.dateStart"
						                        :picker-options="pickerOpt"
						                        style="width: 200px;" >

						        </el-date-picker >
						      </el-form-item >
						    </el-col >
						    <el-col class="line" :span="1" style="margin-left: 25px;" >至</el-col >
						    <el-col :span="5" style="margin-left: 13px;" >
						      <el-form-item prop="dateEnd" >
						        <el-date-picker type="datetime" placeholder="结束日期" format="yyyy-MM-dd hh:mm:ss"
						                        v-model="queryFilters.dateEnd"
						                        :picker-options="pickerOpt"
						                        style="width: 200px;" >

						        </el-date-picker >
						      </el-form-item >
						    </el-col >
					        <el-col :span="2" style="margin-left: 25px;" >
					            <el-button
							            size="normal"
							            type="primary"
							            @click="onToday" >当天
					            </el-button >
					        </el-col >
					         <el-col :span="2" >
					            <el-button
							            size="normal"
							            type="primary"
							            @click="onMonth" >当月
					            </el-button >
					        </el-col >

					         <el-col :span="2" style="margin-right: 6px; float: right" >
					            <el-button
							            icon="search"
							            size="normal"
							            type="primary"
							            @click="onSearch" >查询
					            </el-button >
					        </el-col >

				        </el-form-item >
				        <el-row >
					         <el-col :span="6" v-show="userInfo.department_no == '001' " >
                                <el-form-item label="部门:" >
                                    <el-select v-model="queryFilters.department_no"
                                               clearable
                                               style="width: 200px;" >
                                        <el-option
		                                        v-for="item in departmentList"
		                                        v-bind:value="item.department_no"
		                                        v-bind:label="item.department_name" >
                                        </el-option >
                                    </el-select >
                                </el-form-item >
                            </el-col >
                            <el-col :span="6" >
                                <el-form-item label="作业项目:"
                                              :style="{'margin-left': userInfo.department_no == 001? '20px':'0px'}" >
                                    <el-select v-model="queryFilters.task_content_id"
                                               clearable
                                               style="width: 200px;" >
                                        <el-option
		                                        v-for="item in taskContentList"
		                                        v-bind:value="item.id"
		                                        v-bind:label="item.task_content" >
                                        </el-option >
                                    </el-select >
                                </el-form-item >
                            </el-col >
                            <el-col :span="6" :style="{'margin-left': userInfo.department_no == 001? '40px':'20px'}" >
                                <el-form-item label="关键字:" >
                                    <el-input v-model.trim="queryFilters.keywords"
                                              placeholder="车型"
                                              clearable
                                              auto-complete="off" ></el-input >
                                </el-form-item >
                            </el-col >
					        <el-col :span="2" style="float: right" >
					            <el-button
							            icon="document"
							            size="normal"
							            type="primary"
							            @click="onExport" >导出
					            </el-button >
					        </el-col >
				        </el-row >

	                </el-form >
		        </div >
	        </div >

	        <div class="panel panel-primary" >
		        <div class="panel panel-body" style="height: 50px;" >
			        <!--<div >作业项目-->
			        <!--<span class="badge" style="margin-left: 5px" v-html="tableData.length" ></span >-->
			        <!--</div >-->

			        <el-col :span="6" >
							 <label class="panel-lable" >
								 作业项目:
								  <label class="panel-lable" style="font-weight: bold;" >
                                    {{queryFilters.task_content_id|convertTaskContentName}}
								  </label >
							 </label >

			        </el-col >
			        <el-col :span="6"
			                v-show="queryFilters.dateStart&&queryFilters.dateEnd"
			                style="float: right" >
							 <label class="panel-lable" >
								 作业日期:
							 </label >
					         <label class="panel-lable" >
						         {{queryFilters.dateStart|converterDate}}
					         </label >
				              <label class="panel-lable" >
						        至
					         </label >
				              <label class="panel-lable" >
						         {{queryFilters.dateEnd|converterDate}}
					         </label >
			        </el-col >

		        </div >
		        <div class="panel-heading panel-title" style="margin-top: -20px;" >
			        记录数
			        <span class="badge" style="margin-left: 5px;" v-html="taskDateList.length" ></span >
				</div >
		        <el-table
				        v-loading="loadingUI"
				        element-loading-text="获取数据中..."
				        :data="taskDateList"
				        border
				        style="width: 100%;" >
			        <el-table-column
					        width="70"
					        prop="no"
					        label="序号" >
				            <template scope="scope" >
		                        {{scope.$index+1}}
                            </template >
	                </el-table-column >
	                <el-table-column
			                prop="task_date"
			                label="日期" >
	                </el-table-column >
			        <el-table-column
					        prop="task_count"
					        label="数量" >
                          <template scope="scope" >
                            <el-button
		                            style="min-width: 50px;float: left"
		                            @click.native.prevent="onDetail(scope.$index, taskDateList)"
		                            type="text"
                            >
                              {{scope.row.task_count}}
                            </el-button >
                          </template >
	                </el-table-column >
                    <el-table-column
		                    prop="task_total_count"
		                    label="累计数" >
	                </el-table-column >
					
					<el-table-column v-if="show_Lvwangbu_count"
		                    prop="total_Lvwangbu_count"
		                    label="片数" >
	                </el-table-column >
	            </el-table >
	        </div >

	        <div class="panel panel-primary" >
		        <div class="panel-heading panel-title" >车型汇总
                    <span class="badge" style="margin-left: 5px" v-html="tasTrainList.length" ></span >
                     <label class="panel-lable" style="margin-left: 20px" >
                         作业内容:
	                       <label class="panel-lable" style="font-weight: bold;" >
                            {{queryFilters.task_content_id|convertTaskContentName}}
	                       </label >
                     </label >

		        </div >
		        <el-table
				        v-loading="loadingUI"
				        element-loading-text="获取数据中..."
				        :data="tasTrainList"
				        border
				        style="width: 100%" >
			        <el-table-column
					        width="70"
					        prop="no"
					        label="序号" >
				            <template scope="scope" >
		                        {{scope.$index+1}}
                            </template >
	                </el-table-column >
	                <el-table-column
			                prop="train_model_name"
			                label="车型" >
		                    <template scope="scope" >
                              {{scope.row.train_model_name}}
			                    </el-button >
                            </template >
	                </el-table-column >
			        <el-table-column
					        prop="task_count"
					        label="数量" >
				         <template scope="scope" >
                              {{scope.row.task_count}}
					         </el-button >
                          </template >
	                </el-table-column >
	            </el-table >
	        </div >
	       <!--<div class="block" style="text-align: center; margin-top: 20px" >-->
	       <!--<el-pagination-->
	       <!--@size-change="handleSizeChange"-->
	       <!--@current-change="handleCurrentChange"-->
	       <!--:current-page="currentPage"-->
	       <!--:page-size="pageSize"-->
	       <!--layout="prev, pager, next, jumper"-->
	       <!--:total="totalRecords"-->
	       <!--&gt;-->
	       <!--</el-pagination >-->
	       <!--</div >-->
        </el-col >

		<el-dialog title="统计查询/作业内容车次查询"
		           v-model="dialogDetailVisible"
		           size="large"

		>
			<el-row >
			  <el-table
					  v-loading="loadingDetailUI"
					  element-loading-text="获取数据中..."
					  :data="taskDetailList"
					  style="width: 100%;" >
				  <el-table-column
						  width="70"
						  prop="no"
						  label="序号" >
					      <template scope="scope" >
						      {{scope.$index+1}}
					      </template >
				  </el-table-column >
				  <el-table-column
						  prop="task_content"
						  label="作业内容" >
				  </el-table-column >
				  <el-table-column
						      prop="train_task_count"
						      label="工作量" >
				  </el-table-column >
				  <el-table-column
						  prop="task_date"
						  label="作业日期" >
					  <template scope="scope" >
                          {{scope.row.task_date}}
						  </el-button >
					  </template >
				  </el-table-column >
				  <el-table-column
						  prop="task_time"
						  label="作业时间"
						  show-overflow-tooltip >
					  <template scope="scope" >
                          {{scope.row.task_time}}
						  </el-button >
					  </template >
				  </el-table-column >
				  <el-table-column
						  prop="train_column_name"
						  label="车列号" >
				  </el-table-column >
				  <el-table-column
						  prop="train_model_name"
						  label="车型" >
	                    <template scope="scope" >
                         {{scope.row.train_model_name}}
                        </template >
				  </el-table-column >
				  <el-table-column
						  prop="repair_name"
						  label="修程" >
				  </el-table-column >
				  <el-table-column
						  prop="station_track_no"
						  label="股道" >
				  </el-table-column >
				  <el-table-column
						  prop="train_group_name"
						  label="车组类型" >
				  </el-table-column >
			  </el-table >
			</el-row >

			<el-row >
				 <div class="block" style="text-align: center; margin-top: 20px" >
				 <el-pagination
						 @current-change="onDetailSwitchPage"
						 :current-page="detailCurrentPage"
						 :page-size="pageSize"
						 layout="prev, pager, next, jumper"
						 :total="detailTotalRecords"
				 >
				 </el-pagination >
				 </div >

			</el-row >

			<el-col :span="2" style="float: right;margin-bottom: 15px" >
				<el-button
						icon="document"
						size="normal"
						type="primary"
						@click="onExportDetail" >导出
				</el-button >
			</el-col >
		</el-dialog >
    </div >
</template >

<script >
    import Vue from 'vue'
    import {Loading} from 'element-ui';
    var _this;
    export default {
	    name: "task_statistics",
	    components: {},
	    data () {
		    _this = this;
		    return {
			    userInfo: {},
			    fetchSubDepartmentsURL: HOME + "DepartmentInfo/fetchSubDepartments",
			    queryCountUrl: HOME + "TaskPlan/getTaskStatisticsCount",
			    queryDataUrl: HOME + "TaskPlan/getTaskStatistics",
			    queryDetailDataUrl: HOME + "TaskPlan/getTaskDetailStatistics",
			    queryDetailDataCountUrl: HOME + "TaskPlan/getTaskDetailStatisticsCount",
			    queryTaskContentDataUrl: HOME + "TaskContent/getRecords",
			    exportUrl: HOME + "TaskPlan/exportTaskStatisticsData",
				exportDetailUrl: HOME + "TaskPlan/exportTaskStatisticsDetailData",

			    isError: false,
			    errorMsg: '',
			    queryFilters: {
				    department_no: '',
				    dateStart: '',
				    dateEnd: '',
				    task_content_id: '',
				    keywords: '',
					Lvwangbu_count: '',
			    },

			    pickerOpt: {
				    disabledDate(time) {
					    //return time.getTime() < Date.now() - 8.64e7;
					    return time.getTime() > Date.now();
				    },
				    shortcuts: [{
					    text: '今天',
					    onClick(picker) {
						    picker.$emit('pick', new Date());
					    }
				    }, {
					    text: '昨天',
					    onClick(picker) {
						    const date = new Date();
						    date.setTime(date.getTime() - 3600 * 1000 * 24);
						    picker.$emit('pick', date);
					    }
				    }, {
					    text: '一周前',
					    onClick(picker) {
						    const date = new Date();
						    date.setTime(date.getTime() - 3600 * 1000 * 24 * 7);
						    picker.$emit('pick', date);
					    }
				    }],
			    },

			    totalRecords: 0,
			    tableData: [],
			    departmentList: [],
			    taskContentList: [],

			    tasTrainList: [],
			    taskDateList: [],
			    taskDetailList: [],
			    dialogDetailVisible: false,
			    //分页
			    pageSize: EveryPageNum,//每一页的num
			    currentPage: 1,
			    startRecord: 0,

			    detailFilters: {},
			    detailTotalRecords: 0,
			    detailCurrentPage: 1,
			    detailStartRecord: 0,

			    formLabelWidth: '100px',
			    loadingUI: false,
			    loadingDetailUI: false,

				show_Lvwangbu_count:false,
		    }
	    },
	    methods: {
		    onToday()
		    {
			    var currentDate = new Date();

			    _this.queryFilters.dateStart = new Date(currentDate.format("yyyy-MM-dd" + " 08:00:00"));
			    var y = currentDate.getFullYear();
			    var m = currentDate.getMonth();
			    var d = currentDate.getDate();
			    _this.queryFilters.dateEnd = new Date(y, m, d + 1, 8, 0, 0);

		    },
		    onMonth()
		    {
			    var currentDate = new Date();
			    var y = currentDate.getFullYear();
			    var m = currentDate.getMonth();
			    var d = currentDate.getDate();
			    _this.queryFilters.dateStart = new Date(y, m, 1, 8);
			    _this.queryFilters.dateEnd = new Date(y, m, d, 8);
		    },
		    onSearch() {
			    _this.onSearchRecordCounts();
		    },

		    onExport()
		    {
			     _this.detailFilters = copyObject(_this.queryFilters);
				
				 _this.exportUrl = HOME + "TaskPlan/exportTaskStatisticsData";
				 
				for( var i = 0; i < _this.taskContentList.length; i++)
				{					
					if(_this.detailFilters.task_content_id == _this.taskContentList[i].id)
					{
						if ((_this.taskContentList[i].task_content.indexOf("吸污") > -1) || (_this.taskContentList[i].task_content.indexOf("污箱冲洗")) > -1 )
						{
							_this.exportUrl = HOME + "TaskPlan/exportXiWuRelatedTaskDataGroupByDate";
							break;
						}	
					}
				}
			    _this.ExportTaskContent();
		    },

			onExportDetail()
			{
			    var loadService = Loading.service(
					    {
						    text: '正在导出中，请稍后...',
					    });
				;

				$.ajax({
				    url: _this.exportDetailUrl,
				    type: 'POST',
				    dataType: 'json',
				    data: _this.detailFilters,
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
					    loadService.close();
					    _this.loadingUI = false;
					    showMessage(_this, "导出错误！", 0);
				    }
			    });
			},

		    ExportTaskContent()
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
				    data: _this.detailFilters,
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
					    loadService.close();
					    _this.loadingUI = false;
					    showMessage(_this, "导出错误！", 0);
				    }
			    })

		    },


		    onDetail(index, list)
		    {
			    _this.detailFilters = copyObject(_this.queryFilters);
			    var currentDate = new Date(list[index].task_date)
			    var y = currentDate.getFullYear();
			    var m = currentDate.getMonth();
			    var d = currentDate.getDate();
			    _this.detailFilters.dateStart = new Date(y, m, d, 0, 0, 0).format("yyyy-MM-dd hh:mm:ss");
			    _this.detailFilters.dateEnd = new Date(y, m, d, 23, 59, 59).format("yyyy-MM-dd hh:mm:ss");
			    if (index == 0) {
				    currentDate = new Date(list[index].task_date);
				    var y = currentDate.getFullYear();
				    var m = currentDate.getMonth();
				    var d = currentDate.getDate();
				    _this.detailFilters.dateStart = _this.queryFilters.dateStart;
				    _this.detailFilters.dateEnd = new Date(y, m, d, 23, 59, 59).format("yyyy-MM-dd hh:mm:ss");
			    }
			    if (index == list.length - 1) {
				    currentDate = new Date(list[index].task_date);
				    var y = currentDate.getFullYear();
				    var m = currentDate.getMonth();
				    var d = currentDate.getDate();
				    _this.detailFilters.dateStart = new Date(y, m, d, 0, 0, 0).format("yyyy-MM-dd hh:mm:ss");
				    _this.detailFilters.dateEnd = _this.queryFilters.dateEnd;
			    }
			    _this.detailFilters.start_record = 0;
			    _this.detailCurrentPage = 1;
			    _this.onSearchDetailDataCount();
			    _this.dialogDetailVisible = true;
		    },

		    onDetailSwitchPage(page)
		    {
			    this.detailCurrentPage = page;
			    this.detailStartRecord = this.pageSize * (this.detailCurrentPage - 1);
			    this.onSearchDetailData();
		    },

		    onSearchDetailDataCount()
		    {
			    _this.loadingDetailUI = true;
			    $.ajax({
				    url: _this.queryDetailDataCountUrl,
				    type: 'POST',
				    dataType: 'json',
				    data: _this.detailFilters,
				    success: function (data) {
					    if (data.status) {
						    _this.detailTotalRecords = parseInt(data.info.totalrecords);
						    if (_this.detailTotalRecords > 0) {
							    _this.onSearchDetailData();
						    } else {
							    _this.loadingDetailUI = false;
						    }
					    }
				    },
			    })
		    },

		    onSearchDetailData()
		    {
			    _this.detailFilters.start_record = this.detailStartRecord;
			    _this.detailFilters.page_size = _this.pageSize;
			    $.ajax({
				    url: this.queryDetailDataUrl,
				    type: 'POST',
				    dataType: 'json',
				    data: _this.detailFilters,
				    success: function (data) {
					    if (data.status) {
						    _this.taskDetailList = data.info;
					    }
					    _this.loadingDetailUI = false;
				    },
			    })
		    },


		    handleCurrentChange(val) {
			    _this.loadingUI = true;
			    this.currentPage = val;
			    this.startRecord = this.pageSize * (this.currentPage - 1);
			    this.onSearchRecordData();
		    },

		    initTaskContentList()
		    {
			    var list = JSON.parse(sessionStorage.getItem('taskContentList'));
//			    _this.taskContentList.push({
//				    "id": '',
//				    "task_content": '全选',
//			    });
			    if (isNull(list) || isUndefined(list)) {
				    _this.onGetTaskConentListData();
			    } else {
				    _this.taskContentList = new Array();
				    for (var i = 0; i < list.length; i++) {
					    if (list[i].is_statistics > 0) {
						    _this.taskContentList.push(copyObject(list[i]));
					    }
				    }
			    }
		    },
		    onGetTaskConentListData()
		    {
			    $.ajax({
				    url: _this.queryTaskContentDataUrl,
				    type: 'POST',
				    dataType: 'json',
				    data: {},
				    success: function (data) {
					    if (data.status) {
						    sessionStorage.setItem('taskContentList', JSON.stringify(data.info));//save to session
						    _this.taskContentList = data.info;
					    }
				    }
			    })
		    },

		    onSearchRecordData()
		    {
			    if (_this.totalRecords == 0) {
				    _this.loadingUI = false;
				    return;
			    }
			    _this.queryFilters.dateStart = new Date(_this.queryFilters.dateStart).format('yyyy-MM-dd hh:mm:ss');
			    _this.queryFilters.dateEnd = new Date(_this.queryFilters.dateEnd).format('yyyy-MM-dd hh:mm:ss');

				if( this.$options.filters.convertTaskContentName(_this.queryFilters.task_content_id).indexOf("滤网布") != -1 )
				{
					_this.show_Lvwangbu_count = true;

					_this.queryFilters.Lvwangbu_count = '1';
				}
				else{
					_this.show_Lvwangbu_count = false;
					_this.queryFilters.Lvwangbu_count ='';
				}
				

			    $.ajax({
				    url: _this.queryDataUrl,
				    type: 'POST',
				    dataType: 'json',
				    data: _this.queryFilters,
				    success: function (data) {
					    _this.loadingUI = false;
						_this.queryFilters.Lvwangbu_count ='';

					    if (data.status) {
						    _this.tasTrainList = data.info.taskStatisticsTrain;

						    _this.taskDateList = data.info.taskStatisticsDate;
						    for (var i = 0; i < _this.taskDateList.length; i++) {
							    if (i == 0) {
								    _this.taskDateList[i].task_total_count = _this.taskDateList[i].task_count;
							    }
							    else {
								    var sum = parseInt(_this.taskDateList[i - 1].task_total_count) + parseInt(_this.taskDateList[i].task_count);
								    _this.taskDateList[i].task_total_count = sum;
							    }
						    }
					    }
				    },
					error:function(data)
					{
						_this.queryFilters.Lvwangbu_count ='';
					},
			    })
		    },

		    onSearchRecordCounts()
		    {
			    _this.taskDateList = [];
			    _this.tasTrainList = [];
			    _this.queryFilters.dateStart = new Date(_this.queryFilters.dateStart).format('yyyy-MM-dd hh:mm:ss');
			    _this.queryFilters.dateEnd = new Date(_this.queryFilters.dateEnd).format('yyyy-MM-dd hh:mm:ss');
			    _this.loadingUI = true;
			    $.ajax({
				    url: this.queryCountUrl,
				    type: 'POST',
				    dataType: 'json',
				    data: _this.queryFilters,
				    success: function (data) {
					    if (data.status) {
						    _this.totalRecords = parseInt(data.info.totalrecords);
						    _this.onSearchRecordData();
					    }
				    },
			    })
		    },
	    },
	    computed: {},
	    filters: {
		    filterDepartmentName(id) {
			    let result = ''
			    for (let i = 0; i < _this.departmentList.length; i++) {
				    if (id == _this.departmentList[i].department_no) {
					    result = _this.departmentList[i].department_name;
					    break;
				    }
			    }
			    return result;
		    },
		    convertTaskContentName(id)
		    {
			    let result = '全部'
			    for (let i = 0; i < _this.taskContentList.length; i++) {
				    if (id == _this.taskContentList[i].id) {
					    result = _this.taskContentList[i].task_content;
					    break;
				    }
			    }
			    return result;
		    },
		    converterDate(strDate)
		    {
			    var d = new Date(strDate);
			    return d.format("yyyy-MM-dd");
		    },
		    converterTime(strDate)
		    {
			    var d = new Date(strDate);
			    return d.format("hh:mm:ss");
		    }
	    },
	    created: function () {
		    this.userInfo = JSON.parse(sessionStorage.getItem('user'));
		    if (this.userInfo != null && this.userInfo.department_no != "001") {
			    //非公司管理员
			    _this.departmentList.push({
				    "department_no": this.userInfo.department_no,
				    "department_name": this.userInfo.department_name
			    })
			    _this.queryFilters.department_no = this.userInfo.department_no;
		    } else {
			    $.ajax({
				    url: _this.fetchSubDepartmentsURL,
				    type: 'POST',
				    dataType: 'json',
				    data: {},
				    success: function (data) {
					    if (data.status != 0) {
						    _this.departmentList = data.info
					    }
				    },
			    });
		    }
		    _this.initTaskContentList();
	    },
	    mounted: function () {
		    this.onMonth();
		    this.onSearchRecordCounts();
	    },
    }

</script >
<style >
    .breadcrumb-container {
	    padding: 15px;
	    background-color: #E5E9F2;
    }

    .panel-lable {
	    font-weight: normal;
	    font-size: 16px;
    }

    .title {
	    width: 200px;
	    float: left;
	    color: #475669;
	    font-weight: bold
    }
</style >