<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml" >
    <div >
        <el-col class="breadcrumb-container" >
            <div class="title" >统计查询 / 保洁吸污查询</div >
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
                                                    max-width="200px;"
													@change="onDateChange"
                                    >

                                    </el-date-picker >
                                </el-form-item >
                            </el-col >
                            <el-col class="line" :span="1" style="margin-left: 25px;" >至</el-col >
                            <el-col :span="5" style="margin-left: 13px;" >
                                <el-form-item prop="dateEnd" >
                                    <el-date-picker type="datetime" placeholder="结束日期" format="yyyy-MM-dd hh:mm:ss"
                                                    v-model="queryFilters.dateEnd"
                                                    :picker-options="pickerOpt"
                                                    max-width="200px;"
													@change="onDateChange"
                                    >

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
                                              placeholder="车列号"
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
                        </label >
                        <label class="panel-lable" style="font-weight: bold;" >
                            {{queryFilters.task_content_id|convertTaskContentName}}
                        </label >
                    </el-col >
                    <el-col :span="6"
                            v-show="queryFilters.dateStart&&queryFilters.dateEnd"
                            style="float: right" >
                        <label class="panel-lable" >
                            作业日期:
                        </label >
                        <label class="panel-lable" >
                            {{workDate}}
                        </label >
                    </el-col >

                </div >
                <div class="panel-heading panel-title" style="margin-top: -20px;" >
                    记录数
                    <span class="badge" style="margin-left: 5px;" v-html="tableData.length" ></span >
                </div >
                <el-table
		                v-loading="loadingUI"
		                element-loading-text="获取数据中..."
		                :data="tableData"
		                border
		                style="width: 100%;"
                >
                    <el-table-column
		                    width="70"

		                    label="序号" >
	                        <template scope="scope" >
		                        {{scope.$index+1}}
                            </template >
                    </el-table-column >
                    <el-table-column
		                    prop="train_column_name"
		                    label="计划车组号" >
                    </el-table-column >
					<el-table-column
		                    prop="task_count"
		                    label="数量" >
                    </el-table-column >
                    <el-table-column
		                    prop="train_column_name"
		                    label="实际车组号" >
							<!-- -->
							<template scope="scope" >
								<el-button
										style="min-width: 50px;float: left"
										@click.native.prevent="onYicheYiDangQuery(scope.row.train_column_name)"
										type="text"
								>
								{{scope.row.train_column_name}}
								</el-button >
							</template >
							<!-- -->
                    </el-table-column >
                    <el-table-column

		                    label="作业组长" >
                    </el-table-column >
                    <el-table-column

		                    label="公司质检员" >
                    </el-table-column >
                    <el-table-column

		                    label="段方质检员" >
                    </el-table-column >
                    <el-table-column
		                    prop="task_count"
		                    label="数量" >
                    </el-table-column >
                    <el-table-column
		                    label="备注" >
                    </el-table-column >
	                <!--<el-table-column-->
	                <!--prop="department_no"-->
	                <!--label="部门" >-->
	                <!--<template scope="scope" >-->
	                <!--<span >{{scope.row.department_no | filterDepartmentName}}</span >-->
	                <!--</template >-->
	                <!--</el-table-column >-->
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
    </div >
</template >

<script >
    import Vue from 'vue'
	import {Loading} from 'element-ui';
    var _this;
    export default {
	    name: "clean_summary",
	    components: {},
	    data () {
		    _this = this;
		    return {
			    userInfo: {},
			    fetchSubDepartmentsURL: HOME + "DepartmentInfo/fetchSubDepartments",
			    queryCountUrl: HOME + "TaskPlan/getTaskQueryCount",
			    queryDataUrl: HOME + "TaskPlan/getTaskQuery",
			    queryTaskContentDataUrl: HOME + "TaskContent/getRecords",
				exportUrl: HOME + "TaskPlan/exportCleanQueryStatics",
			    isError: false,
			    errorMsg: '',
			    queryFilters: {
				    department_no: '',
				    dateStart:'' ,
				    dateEnd: '',
				    task_content_id: '',
				    keywords: '',
			    },

				workDate: '',

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

			    taskContentList: [],
			    totalRecords: 0,
			    tableData: [],
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

			    var y = currentDate.getFullYear();
			    var m = currentDate.getMonth();
			    var d = currentDate.getDate();
			    _this.queryFilters.dateStart = new Date(y, m, d, 8, 0, 0);
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
			onDateChange(){
				var endDate   = Date.parse(_this.queryFilters.dateEnd);
				var startDate = Date.parse(_this.queryFilters.dateStart);

				var dateDiff = endDate- startDate;
				var days = Math.floor(dateDiff / (24 * 3600 * 1000));
				var ds = new Date(startDate);
				var de = new Date(endDate);
				//console.log("days:" + days);
				//console.log("ds:" + ds);
				//console.log("de:" + de);
				var dsh = ds.format("hh");
				var dse = de.format("hh");
				//console.log("dsh: " + dsh);
				//console.log("dse: " + dse);
				if(days <= 1 && (dsh == dse) && (dsh == "08")){
					_this.workDate = ds.format("yyyy-MM-dd");
				}else{
					_this.workDate = ds.format("yyyy-MM-dd") + '至' + de.format("yyyy-MM-dd");
				}
			},

		    onExport()
		    {
				if (_this.totalRecords == 0) {
				    _this.loadingUI = false;
				    return;
			    }
				

				
				var loadService = Loading.service(
				{
//						    lock: true,
						    text: '正在导出中，请稍后...',
				});

			    $.ajax({
				    url: _this.exportUrl,
				    type: 'POST',
				    dataType: 'json',
				    data: _this.queryFilters,
				    success: function (data) {
					    _this.loadingUI = false;
						
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
						    _this.tableData = data.info;
//						    for (var i = 0; i < _this.tableData.length; i++) {
//							    _this.tableData[i].no = i + 1;
//						    }
					    }
				    }
			    })
		    },
		    onSearchRecordCounts()
		    {
			    _this.tableData = [];
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
			onYicheYiDangQuery(train_column_name)
			{
				this.$router.push({path: '/home/task/train_data',query: { train_column_n: train_column_name }});
			}
	    },
	    computed: {},
		watch:{
			/*
			'queryFilters.dateStart' : function(){
				_this.onDateChange();
			},
			'queryFilters.dateEnd' : function(){
				_this.onDateChange();
			},*/
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
						    var list = data.info;
						    for (var i = 0; i < list.length; i++) {
							    _this.departmentList.push(copyObject(list[i]));
						    }
					    }
//					    _this.departmentList.unshift({
//						    "department_no": '',
//						    "department_name": '全选',
//					    });
				    },
			    });
		    }
		    _this.initTaskContentList();
	    },
	    mounted: function () {
		    this.onSearchRecordCounts();
		    this.onMonth();
	    },
    }

</script >

<style>
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
