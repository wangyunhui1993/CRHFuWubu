<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml" >
    <div >
        <el-col class="breadcrumb-container" >
            <div class="title" >统计查询 / 滤尘网清洗统计</div >
        </el-col >
       <el-col class="well well-lg" style="background-color: white;" >

            <div class="panel panel-primary" >
                <div class="panel-heading" >
                    <h3 class="panel-title" >筛选列表</h3 >
                </div >
                <div class="panel-body" >
                    <el-form :model="queryFilters" label-position="left" label-width="75px" style="margin-top:20px;" >
                        <el-form-item label="作业日期:" >
                            <el-col :span="5" >
                                <el-form-item prop="dateStart" >
                                    <el-date-picker type="date" placeholder="起始日期时间" format="yyyy-MM-dd"
                                                    v-model="queryFilters.dateStart"
                                                    :picker-options="pickerOpt"
                                                    style="width: 200px;" >

                                    </el-date-picker >
                                </el-form-item >
                            </el-col >
                            <el-col class="line" :span="1" style="margin-left: 25px;" >至</el-col >
                            <el-col :span="5" style="margin-left: 13px;" >
                                <el-form-item prop="dateEnd" >
                                    <el-date-picker type="date" placeholder="结束日期时间" format="yyyy-MM-dd"
                                                    v-model="queryFilters.dateEnd"
                                                    :picker-options="pickerOpt"
                                                    style="width: 200px;" >

                                    </el-date-picker >
                                </el-form-item >
                            </el-col >
                            <el-col :span="2" style="margin-left: 20px;" >
                                <el-button
		                                size="normal"
		                                type="primary"
		                                @click="onMonth" >本月
                                </el-button >
                            </el-col >

                            <el-col :span="2" >
                                <el-button
		                                icon="search"
		                                size="normal"
		                                type="primary"
		                                @click="onSearch" >查询
                                </el-button >
                            </el-col >

                            <el-col :span="2" style="margin-right:-10px;float:right" >
                                <el-button style="margin-right:10px;"
                                           icon="document"
                                           size="normal"
                                           type="primary"
                                           @click="onExport" >导出
                                </el-button >
                            </el-col >
                        </el-form-item >


                    </el-form >
                </div >
            </div >

            <div class="panel panel-primary" >
                <div class="panel panel-body" style="height: 50px;" >
                    <!--<div >作业项目-->
                    <!--<span class="badge" style="margin-left: 5px" v-html="tableData.length" ></span >-->
                    <!--</div >-->

                    <el-col :span="6" v-show="queryFilters.dateStart&&queryFilters.dateEnd" style="float: left" >
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
                    <span class="badge" style="margin-left: 5px;" v-html="tableData.length" ></span >
                </div >
                <el-table
		                v-show="tableData.length>0"
		                v-loading="loadingUI"
		                element-loading-text="获取数据中..."
		                :data="tableData"
		                border
		                style="width: 100%;"
                >
                    <el-table-column
		                    width="50"
		                    prop="no"
		                    label="序号" >
	                        <template scope="scope" >
		                        {{scope.$index+1}}
	                        </template >
                    </el-table-column >
                    <el-table-column
		                    prop="date"
		                    label="日期" >
                    </el-table-column >

					<template v-for="(Model, idx) in trainModels"> 

						<el-table-column  :label="Model" header-align="center" >
							<el-table-column
									prop="train_model_data[idx].task_number"
									label="数量(组)" >
								<template scope="scope" >
									<div >
									{{scope.row.train_model_data[idx].task_number}}
									</div >
								</template >
							</el-table-column >

							<el-table-column
									prop="train_model_data[idx].total_task_number"
									label="累计数量(组)" >
								<template scope="scope" >
									<div >
									{{scope.row.train_model_data[idx].total_task_number}}
									</div >
								</template >
	                    	</el-table-column >

						</el-table-column>

					</template>

					  <!--el-table-column :label="trainModels[0]" header-align="center" >
	                    <el-table-column
			                    prop="train_model_data[0].task_number"
			                    label="数量(组)" >
		                      <template scope="scope" >
			                    <div >
			                    {{scope.row.train_model_data[0].task_number}}
			                    </div >
		                    </template >
	                    </el-table-column >
	                    <el-table-column
			                    prop="train_model_data[0].total_task_number"
			                    label="累计数量(组)" >
		                    <template scope="scope" >
			                    <div >
			                    {{scope.row.train_model_data[0].total_task_number}}
			                    </div >
		                    </template >
	                    </el-table-column >
                    </el-table-column -->

                    <el-table-column
		                    label="备注" >
                    </el-table-column >
                </el-table >
                <p v-show="tableData.length==0"
                   style="width: 100%; height: 200px; line-height: 200px; text-align: center; color: darkgray" >
                    暂无记录~~~</p >
            </div >

            <!--div class="block" style="text-align: center; margin-top: 20px" >
                <el-pagination
		                @current-change="handleCurrentChange"
		                :current-page="currentPage"
		                :page-size="pageSize"
		                layout="prev, pager, next, jumper"
		                :total="totalRecords"
                >
                </el-pagination >
            </div -->
        </el-col >
    </div >
</template >

<script >
    import Vue from 'vue'
    import {Loading} from 'element-ui';
    var _this;
    export default {
	    name: "lw_clean_statistics",
	    components: {},
	    data () {
		    _this = this;
		    return {
			    userInfo: {},
			    queryCountUrl: HOME + "FilterDustStatistics/getLWCleanStatisticsCount",
			    queryDataUrl: HOME + "FilterDustStatistics/getLWCleanStatistics",
			    exportUrl: HOME + "FilterDustStatistics/exportLWCleanStatistics",
			    isError: false,
			    errorMsg: '',
			    queryFilters: {
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
			    tableData: [
				    {
					    train_model_data: [
						    {
							    task_number: 0,
							    total_task_number: 0,
							    train_model: 0,
						    },
						    {
							    task_number: 0,
							    total_task_number: 0,
							    train_model: 1,
						    },
						    {
							    task_number: 0,
							    total_task_number: 0,
							    train_model: 2,
						    }
					    ],
					    date: '',
				    }

			    ],
			    //分页
			    pageSize: EveryPageNum,//每一页的num
			    currentPage: 1,
			    startRecord: 0,
			    formLabelWidth: '100px',
			    loadingUI: false,
			    trainModels: [],

		    }
	    },
	    methods: {
		    onToday()
		    {
			    var currentDate = new Date();
			    _this.queryFilters.dateStart = new Date(currentDate.format("yyyy-MM-dd"));
			    _this.queryFilters.dateEnd = currentDate;
		    },
		    onMonth()
		    {
			    var currentDate = new Date();
			    var y = currentDate.getFullYear();
			    var m = currentDate.getMonth();
			    var d = currentDate.getDate();
			    _this.queryFilters.dateStart = new Date(y, m, 1);
			    _this.queryFilters.dateEnd = new Date(y, m, d);
		    },
		    onSearch() {
			    _this.onSearchRecordCounts();
		    },

		    onExport()
		    {
			    if (_this.totalRecords == 0) {
				    _this.loadingUI = false;
				    return;
			    }

			    if (_this.queryFilters == "") {
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
								    showMessage(_this, "导出文件错误！" + res, 0);
							    }
						    }
						    else {
							    showMessage(_this, data.info.result, 0);
						    }
					    }
				    },
				    error: function (data) {
					    _this.loadingUI = false;
					    loadService.close();
					    showMessage(_this, "导出错误！error", 0);
				    }
			    })
		    },

		    handleCurrentChange(val) {
			    _this.loadingUI = true;
			    this.currentPage = val;
			    this.startRecord = this.pageSize * (this.currentPage - 1) * 3;
			    this.onSearchDetailData();
		    },
		    onSearchDetailData()
		    {
			    if (_this.totalRecords == 0) {
				    _this.loadingUI = false;
				    return;
			    }

			    $.ajax({
				    url: _this.queryDataUrl,
				    type: 'POST',
				    dataType: 'json',
				    data: _this.queryFilters,
				    success: function (data) {
					    _this.loadingUI = false;
					    if (data.status) {
//						    _this.tableData = data.info;
						    _this.tableData = [];
						    var datainfo = data.info;
						    for (var i = 0; i < datainfo.length; i++) {
							    if (parseInt(datainfo[i]['train_model']) == 0) {
								    var itemdata = {
									    train_model_data: [
										    {
											    total_task_number: 0,
											    task_number: parseInt(datainfo[i]['task_number']),
											    train_model: datainfo[i]['train_model'],
										    },
										    {
											    total_task_number: 0,
											    task_number: parseInt(datainfo[i + 1]['task_number']),
											    train_model: datainfo[i + 1]['train_model'],
										    },
										    {
											    total_task_number: 0,
											    task_number: parseInt(datainfo[i + 2]['task_number']),
											    train_model: datainfo[i + 2]['train_model'],
										    },
									    ],
									    date: datainfo[i]['date'],
								    };
								    _this.tableData.push(itemdata);
								    i += 2;
							    }
						    }
						    for (var j = 0; j < _this.tableData.length; j++) {
							    if (j == 0) {
								    var item = _this.tableData[j].train_model_data;
								    for (var p = 0; p < item.length; p++) {
									    _this.tableData[j].train_model_data[p].total_task_number = item[p].task_number;
								    }
							    }
							    else {
								    for (var p = 0; p < _this.tableData[j].train_model_data.length; p++) {
									    var sum = parseInt(_this.tableData[j - 1].train_model_data[p].total_task_number) + parseInt(_this.tableData[j].train_model_data[p].task_number);
									    _this.tableData[j].train_model_data[p].total_task_number = sum;
								    }
							    }
						    }

					    }
				    }
			    })
		    },
		    onSearchRecordCounts()
		    {
			    _this.tableData = [];
			    _this.queryFilters.dateStart = isUndefined(_this.queryFilters.dateStart) ? null : new Date(_this.queryFilters.dateStart).format('yyyy-MM-dd hh:mm:ss');
			    _this.queryFilters.dateEnd = isUndefined(_this.queryFilters.dateEnd) ? null : new Date(_this.queryFilters.dateEnd).format('yyyy-MM-dd hh:mm:ss');
			    _this.loadingUI = true;
			    $.ajax({
				    url: this.queryCountUrl,
				    type: 'POST',
				    dataType: 'json',
				    data: _this.queryFilters,
				    success: function (data) {
					    if (data.status) {
						    _this.totalRecords = parseInt(data.info.totalrecords / 3);
						    _this.onSearchDetailData();
					    }
				    },
			    })
		    },
	    },
	    computed: {},
	    filters: {
		    converterDate(strDate)
		    {
			    var d = new Date(strDate);
			    return d.format("yyyy-MM-dd");
		    }
	    },
	    created: function () {
		    this.userInfo = JSON.parse(sessionStorage.getItem('user'));
		    _this.trainModels = getTrainModel();
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
