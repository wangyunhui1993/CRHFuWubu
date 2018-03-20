<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml" >
    <div >
        <el-col  class="breadcrumb-container" >
            <div class="title" >统计查询 / 滤芯清洗统计</div >
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
		                style="width: 100%;">
                    <el-table-column
		                    prop="no"
		                    label="序号" >
	                        <template scope="scope" >
		                        {{scope.$index+1}}
	                        </template >
                    </el-table-column >
					<el-table-column
		        		prop="date"
		        		label="日期" >
            			<template scope="scope" >
							<el-button type="text" @click="showDateDetail(scope.row.date)" >{{scope.row.date}}</el-button>
            			</template >
        			</el-table-column >
                    <el-table-column
		                    prop="task_number"
		                    label="数量(只)" >
                    </el-table-column >
                    <el-table-column
		                    prop="total_task_number"
		                    label="累计数量" >
                    </el-table-column >
                    <el-table-column
		                    label="备注" >
                    </el-table-column >
                </el-table >
                <p v-show="tableData.length==0"
                   style="width: 100%; height: 200px; line-height: 200px; text-align: center; color: darkgray" >
                    暂无记录~~~</p >
            </div >

            <div class="block" style="text-align: center; margin-top: 20px" >
                <el-pagination
		                @current-change="handleCurrentChange"
		                :current-page="currentPage"
		                :page-size="pageSize"
		                layout="total, prev, pager, next, jumper"
		                :total="totalRecords"
                >
                </el-pagination >
            </div >
        </el-col >
		<el-dialog v-model="modifyDialogVisible" size="normal" >
			<div id="printContent"  class="table-responsive" style="text-align: center;margin-top: -10px">
				<h3 >CRH2型动车组滤芯清洁工作量统计</h3>
				<h5 style="text-align: right;margin:20px;">_______分公司__________动车服务部</h5>
				<h5 style="text-align: right;margin:20px;">{{modifyDialogDate}}</h5>
				<el-table :data="modifyForm.data"
						border
						style="width: 100%"
						max-height="400"
						v-loading="dialogLoading"
						>
					<el-table-column
							width = "120" 
							label="序号">
							<template scope="scope">
								<span>{{scope.$index + 1}}</span>
							</template>
					</el-table-column>
				
					<el-table-column
							width = "200" 
							prop="train_column"
							label="车组号">
					</el-table-column>
					
					<el-table-column
							width = "160" 
							prop="number"
							label="数量(只)"
							>
					</el-table-column>
					<el-table-column
							width = "160" 
							prop="number"
							label="备注"
							>
					</el-table-column>
				</el-table> 
				<el-col :span="12">
            		<el-row :span="2" style="margin-top: 33px">
                		<el-col>
							<h5 style="text-align: left;">升亮公司代表签认：</h5>
                		</el-col>
            		</el-row>
        		</el-col>
				<el-col :span="12">
            		<el-row>
                		<el-col>
							<h5 style="text-align: left;">动车所工长签认：</h5>
                		</el-col>
            		</el-row>
					<el-row>
                		<el-col>
							<h5 style="text-align: left;">动车所质检签认：</h5>
                		</el-col>
            		</el-row>
        		</el-col>
				<div slot="footer" class="dialog-footer" style="margin-top: 50px;text-align: right;" >
					<el-button type="primary" @click="PrintDateDetialData" >打 印</el-button >
					<el-button type="primary" @click="onEdit" >导 出</el-button >
				</div >
			</div>
		</el-dialog >
    </div >
</template >

<script >
    import Vue from 'vue'
	import {Loading} from 'element-ui';
    var _this;
    export default {
	    name: "filter_clean_statistics",
	    components: {},
	    data () {
		    _this = this;
		    return {
			    userInfo: {},
			    queryCountUrl: HOME + "FilterElementStatistics/getStatisticsCount",
			    queryDataUrl: HOME + "FilterElementStatistics/getStatistics",				
				exportUrl: HOME + "FilterElementStatistics/exportFilterElementStatics",
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
			    tableData: [],
			    //分页
			    pageSize: EveryPageNum,//每一页的num
			    currentPage: 1,
			    startRecord: 0,
			    formLabelWidth: '100px',
			    loadingUI: false,
				modifyDialogVisible: false,
				modifyDialogDate: null,
				modifyForm:{
					data:[{
						id:0,
						order_id:'1',
						train_column: '',
						number: 0,
						problem:'',
					}],
				},
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
				
				if(_this.queryFilters == "")
				{
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
						    _this.tableData = data.info;
						    for (var i = 0; i < _this.tableData.length; i++) {
							    if (i == 0) {
								    _this.tableData[i].total_task_number = _this.tableData[i].task_number;
							    }
							    else {
								    var sum = parseInt(_this.tableData[i - 1].total_task_number) + parseInt(_this.tableData[i].task_number);
								    _this.tableData[i].total_task_number = sum;
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
						    _this.totalRecords = parseInt(data.info.totalrecords);
						    _this.onSearchDetailData();
					    }
				    },
			    })
		    },
			showDateDetail(date){
				_this.modifyDialogVisible = true;
				_this.modifyDialogDate = new Date(date).format('yyyy 年 MM 月 dd 日');
			    $.ajax({
				    url: _this.queryDataUrl,
				    type: 'POST',
				    dataType: 'json',
				    data: _this.queryFilters,
				    success: function (data) {
					    _this.loadingUI = false;
					    if (data.status) {
							_this.modifyForm.data = data.info;
						    for (var i = 0; i < _this.modifyForm.data.length; i++) {
							    if (i == 0) {
								    _this.modifyForm.data[i].total_task_number = _this.modifyForm.data[i].task_number;
							    }
							    else {
								    var sum = parseInt(_this.modifyForm.data[i - 1].total_task_number) + parseInt(_this.modifyForm.data[i].task_number);
								    _this.modifyForm.data[i].total_task_number = sum;
							    }
						    }
					    }
				    }
			    })
			},
			printContent(e){ 
               let subOutputRankPrint = document.getElementById('printContent');  
               console.log(subOutputRankPrint.innerHTML);  
               let newContent =subOutputRankPrint.innerHTML;  
               let oldContent = document.body.innerHTML;  
               document.body.innerHTML = newContent;  
               window.print();  
               window.location.reload();  
               document.body.innerHTML = oldContent;  
               return false;  
           } ,
		    PrintDateDetialData()
			{
				console.log('1234679');
				this.printContent();
			}
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
