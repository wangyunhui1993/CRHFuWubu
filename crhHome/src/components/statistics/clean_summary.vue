<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml" >
	<div >
        <el-col class="breadcrumb-container" >
            <div class="title" >统计查询 / 保洁吸污汇总</div >
        </el-col >
        <el-col class="well well-lg" style="background-color: white;" >
	        <div class="panel panel-primary" >
	                <div class="panel-heading" >
	                    <h3 class="panel-title" >筛选列表</h3 >
	                </div >
	                <div class="panel-body" >

	                        <!--<div class="row" >-->
	                        <!--<div class="col-sm-4" >-->
	                        <!--<div class="form-group" >-->
	                        <!--<label class="control-label" >起始日期时间:</label >-->
	                        <!--<el-date-picker type="datetime" placeholder="起始日期时间"-->
	                        <!--v-model="queryFilters.dateStart"-->
	                        <!--:picker-options="pickerOpt"-->
	                        <!--style="width: 200px;" >-->

	                        <!--</el-date-picker >-->
	                        <!--</div >-->
	                        <!--<div class="form-group" v-show="userInfo.department_no == '001'" >-->
	                        <!--<label class="control-label" >部门:</label >-->
	                        <!--<el-select v-model="queryFilters.department_no"-->
	                        <!--clearable-->
	                        <!--style="width: 200px;" >-->
	                        <!--<el-option-->
	                        <!--v-for="item in departmentList"-->
	                        <!--v-bind:value="item.department_no"-->
	                        <!--v-bind:label="item.department_name" >-->
	                        <!--</el-option >-->
	                        <!--</el-select >-->
	                        <!--</div >-->

	                        <!--</div >-->
	                        <!--<div class="col-sm-4" >-->
	                        <!--<label class="control-label" >结束日期时间:</label >-->
	                        <!--<el-date-picker type="datetime" placeholder="结束日期时间"-->
	                        <!--v-model="queryFilters.dateEnd"-->
	                        <!--:picker-options="pickerOpt"-->
	                        <!--style="width: 200px;" >-->

	                        <!--</el-date-picker >-->
	                        <!--</div >-->

	                        <!--<div class="col-sm-1" >-->
	                        <!--<div class="form-group" >-->
	                        <!--<el-button-->
	                        <!--size="normal"-->
	                        <!--type="primary"-->
	                        <!--@click="onToday" >当天-->
	                        <!--</el-button >-->
	                        <!--</div >-->
	                        <!--<div class="form-group" >-->
	                        <!--<el-button-->
	                        <!--icon="search"-->
	                        <!--size="normal"-->
	                        <!--type="primary"-->
	                        <!--@click="onSearch" >查询-->
	                        <!--</el-button >-->
	                        <!--</div >-->
	                        <!--</div >-->
	                        <!--<div class="col-sm-1" >-->
	                        <!--<div class="form-group" >-->
	                        <!--<el-button-->
	                        <!--size="normal"-->
	                        <!--type="primary"-->
	                        <!--@click="onMonth" >当月-->
	                        <!--</el-button >-->
	                        <!--</div >-->
	                        <!--</div >-->
	                        <!--<div class="col-sm-1" style="float: right" >-->
	                        <!--<div class="form-group" >-->
	                        <!--<el-button-->
	                        <!--icon="view"-->
	                        <!--size="normal"-->
	                        <!--type="primary"-->
	                        <!--@click="onPrint" >打印-->
	                        <!--</el-button >-->
	                        <!--</div >-->
	                        <!--<div class="form-group" >-->
	                        <!--<el-button-->
	                        <!--icon="document"-->
	                        <!--size="normal"-->
	                        <!--type="primary"-->
	                        <!--@click="onExport" >导出-->
	                        <!--</el-button >-->
	                        <!--</div >-->
	                        <!--</div >-->
	                        <!--</div >-->

		                <el-form :model="queryFilters" label-position="left" label-width="75px" >
		                <el-form-item label="作业日期:" >
		                <el-col :span="5" >
		                <el-form-item prop="dateStart" >
		                <el-date-picker type="datetime" placeholder="起始日期时间"
		                                v-model="queryFilters.dateStart"
		                                :picker-options="pickerOpt"
		                                style="width: 200px;" >

		                </el-date-picker >
		                </el-form-item >
		                </el-col >
		                <el-col class="line" :span="1" style="margin-left: 15px;" >至</el-col >
		                <el-col :span="5" style="margin-left: -10px;" >
		                <el-form-item prop="dateEnd" >
		                <el-date-picker type="datetime" placeholder="结束日期时间"
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

		                <el-col :span="2" style="float: right" >
		                <!--el-button
				                icon="document"
				                size="normal"
				                type="primary"
				                @click="onExport" >导出
		                </el-button -->
		                </el-col >
		                </el-row >

		                </el-form >
	                </div >
	            </div >

            <div class="panel panel-primary" >
                <div class="panel-heading panel-title" >部门汇总
                    <span class="badge" style="margin-left: 5px" v-html="taskSummaryList.length" ></span >
                </div >
                <el-table
		                v-show="taskSummaryList.length>0"
		                v-loading="loadingUI"
		                element-loading-text="获取数据中..."
		                :data="taskSummaryList"
		                border
		                style="width: 100%"
                >
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
		                    prop="task_count"
		                    label="数量" >
							<template scope="scope" >
								<el-button
										style="min-width: 50px;float: left"
										@click.native.prevent="onCleanQuery(scope.row.task_content)"
										type="text"
								>
								{{scope.row.task_count}}
								</el-button >
							</template >
                    </el-table-column >
                    <el-table-column
		                    prop="department_name"
		                    label="部门" >
                        <!--<template scope="scope" >-->
                        <!--<span >{{scope.row.department_no | filterDepartmentName}}</span >-->
                        <!--</template >-->
                    </el-table-column >
                </el-table >
                <p v-show="taskSummaryList.length==0"
                   style="width: 100%; height: 200px; line-height: 200px; text-align: center; color: darkgray" >
                    暂无记录~~~</p >
            </div >

            <div class="panel panel-primary" >
                <div class="panel-heading panel-title" >全部汇总
                    <span class="badge" style="margin-left: 5px" v-html="taskSummaryTotalList.length" ></span >
                </div >
                <el-table
		                v-show="taskSummaryTotalList.length>0"
		                v-loading="loadingUI"
		                element-loading-text="获取数据中..."
		                :data="taskSummaryTotalList"
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
		                    prop="task_content"
		                    label="作业内容" >
                    </el-table-column >
                    <el-table-column
		                    prop="task_count"
		                    label="数量" >
                    </el-table-column >
                </el-table >
                <p v-show="taskSummaryTotalList.length==0"
                   style="width: 100%; height: 200px; line-height: 200px; text-align: center; color: darkgray" >
                    暂无记录~~~</p >
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
    </div >
</template >

<script >
    import Vue from 'vue'
    var _this;
    export default {
	    name: "clean_summary",
	    components: {},
	    data () {
		    _this = this;
		    return {
			    userInfo: {},
			    fetchSubDepartmentsURL: HOME + "DepartmentInfo/fetchSubDepartments",
			    queryCountUrl: HOME + "TaskPlan/getTaskSummaryCount",
			    queryDataUrl: HOME + "TaskPlan/getTaskSummary",
			    isError: false,
			    errorMsg: '',
			    queryFilters: {
				    department_no: '',
				    dateStart: '',
				    dateEnd: '',
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
			    taskSummaryTotalList: [],
			    taskSummaryList: [],
			    departmentList: [],
			    //分页
			    pageSize: EveryPageNum,//每一页的num
			    currentPage: 1,
			    startRecord: 0,
			    formLabelWidth: '100px',
			    loadingUI: false,

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

			    //TODO
			    showMessage(_this, "Not implement onExport!", 0)
		    },
		    onPrint()
		    {
			    //TODO
			    showMessage(_this, "Not implement onPrint!", 0)

		    },


		    handleCurrentChange(val) {
			    _this.loadingUI = true;
			    this.currentPage = val;
			    this.startRecord = this.pageSize * (this.currentPage - 1);
			    this.onSearchDetailData();
		    },
		    onSearchDetailData()
		    {
			    if (_this.totalRecords == 0) {
				    _this.loadingUI = false;
				    return;
			    }
			    _this.queryFilters.dateStart = new Date(_this.queryFilters.dateStart).format('yyyy-MM-dd hh:mm:ss');
			    _this.queryFilters.dateEnd = new Date(_this.queryFilters.dateEnd).format('yyyy-MM-dd hh:mm:ss');
			    $.ajax({
				    url: _this.queryDataUrl,
				    type: 'POST',
				    dataType: 'json',
				    data: _this.queryFilters,
				    success: function (data) {
					    _this.loadingUI = false;
					    if (data.status) {
						    _this.taskSummaryList = data.info.tasksummary;
						    _this.taskSummaryTotalList = data.info.taskSummaryTotal;
					    }
				    }
			    })
		    },
		    onSearchRecordCounts()
		    {
			    _this.taskSummaryList = [];
			    _this.taskSummaryTotalList = [];
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
						    _this.totalRecords = parseInt(data.info);
						    _this.onSearchDetailData();
					    }
				    },
			    })
		    },
			
			onCleanQuery(taskcontet)
			{
				this.$router.push({path: '/home/statistics/clean_query',
				query: { DateStart: _this.queryFilters.dateStart, DateEnd:_this.queryFilters.dateEnd, department_no:_this.queryFilters.department_no, taskItem:taskcontet}});
			}
	    },
	    computed: {
		    currentDepartmentStr(){
			    let $res = "";

			    if (_this.userInfo.department_no == "001") {
				    $res = "";//返回全部
			    } else {
				    $res = _this.userInfo.department_no;
			    }
			    return $res;
		    }
	    },
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
	    },
	    created: function () {
		    this.userInfo = JSON.parse(sessionStorage.getItem('user'));
		    if (this.userInfo != null && this.userInfo.department_no != "001") {
			    //非公司管理员
			    _this.departmentList.push({
				    "department_no": this.userInfo.department_no,
				    "department_name": this.userInfo.department_name
			    });
			    _this.queryFilters.department_no = this.userInfo.department_no;
		    } else {
			    $.ajax({
				    url: _this.fetchSubDepartmentsURL,
				    type: 'POST',
				    dataType: 'json',
				    data: {},
				    success: function (data) {
					    if (data.status != 0) {
						    _this.departmentList = data.info;
//                            _this.departmentList.unshift({
//                                "department_no": '',
//                                "department_name": '全选',
//                            })

					    }
				    },
			    });
		    }
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

    .control-label {
	    width: 100px;
    }

    .title {
	    width: 200px;
	    float: left;
	    color: #475669;
	    font-weight: bold
    }
</style >
