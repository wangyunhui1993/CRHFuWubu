<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml" >
    <div >
        <el-col  class="breadcrumb-container" >
            <div class="title" >统计查询 / 散热设备统计</div >
        </el-col >
       <el-col class="well well-lg" style="background-color: white;" >

            <div class="panel panel-primary" >
                <div class="panel-heading" >
                    <h3 class="panel-title" >筛选列表</h3 >
                </div >
                <div class="panel-body" >
                    <el-form :model="queryFilters" label-position="left" label-width="75px" style="margin-top:20px;" >
                        <el-form-item label="作业日期:" >
                            <el-col :span="3" >
                                <el-form-item prop="dateStart" >
                                    <el-date-picker type="date" placeholder="起始日期时间" format="yyyy-MM-dd"
                                                    v-model="queryFilters.dateStart"
                                                    :picker-options="pickerOpt"
                                                    style="width: 200px;" >

                                    </el-date-picker >
                                </el-form-item >
                            </el-col >
                            <el-col class="line" :span="1" style="margin-left: 8px;" >至</el-col >
                            <el-col :span="3" style="margin-left: 13px;" >
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

							<el-col :span="5" >
								<label for="departSel">部门:</label>
								<el-select id="departSel" ref="departSelRef" v-model="queryFilters.department_no"
											:clearable="clearableDepart"
											style="margin-left: 2px ;width: 200px;">
									<el-option
									v-for="item in departmentList"
									v-bind:value="item.department_no"
									v-bind:label="item.department_name" >
									</el-option>
								</el-select >
							</el-col>

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
		                    label="数量(组)" >
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

            <!--div class="block" style="text-align: center; margin-top: 20px" >
                <el-pagination
		                @current-change="handleCurrentChange"
		                :current-page="currentPage"
		                :page-size="pageSize"
		                layout="total, prev, pager, next, jumper"
		                :total="totalRecords"
                >
                </el-pagination >
            </div -->
        </el-col >

		<el-dialog v-model="detailDialogVisible" size="normal" >
			<div id="printContent"  class="table-responsive" style="text-align: center;margin-top: -10px">
				<h3 >CRH2型动车组散热设备清洁保养工作量统计</h3>
				<h5 style="text-align: right;margin:20px;">_______分公司__________动车服务部</h5>
				<h5 style="text-align: right;margin:20px;">{{showDetailDialogDate}}</h5>
				<el-table :data="detailForm.data"
						:summary-method="getSummaries"
						show-summary
						border
						style="width: 100%; text-align:left"
						v-loading="dialogLoading"
						><!-- max-height="1000"-->
					<el-table-column
							width = "120" 							
							label="序号">
							<template scope="scope">
								<span>{{scope.$index + 1}}</span>
							</template>

					</el-table-column>
				
					<el-table-column
							width = "200" 
							prop="train_columnname"
							label="车组号">
					</el-table-column>
					
					<el-table-column
							width = "160" 
							prop="number"
							label="标准组数量"
							>
					</el-table-column>
					<el-table-column
							width = "230" 
							prop="problem"
							label="动车所检查发现问题"
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
			</div>

			<div slot="footer" class="dialog-footer" style="margin-top: 50px;text-align: right;" >
				<el-button type="primary" @click="PrintDateDetialData" >打 印</el-button >
				<el-button type="primary" @click="onExportDetail" >导 出</el-button >
			</div >
		</el-dialog >

    </div >
</template >

<script >
    import Vue from 'vue'
	import {Loading} from 'element-ui';
	import XLSX from 'xlsx';
    var _this;
    export default {
	    name: "lw_clean_statistics",
	    components: {},
	    data () {
		    _this = this;
		    return {
			    userInfo: {},
				fetchSubDepartmentsURL: HOME + "DepartmentInfo/fetchSubDepartments",
			    queryCountUrl: HOME + "CoolerMaintainStatistics/getStatisticsCount",
			    queryDataUrl: HOME + "CoolerMaintainStatistics/getStatistics",				
				exportUrl: HOME + "CoolerMaintainStatistics/exportCoolerMaintainStatics",

				queryDataByDateUrl: HOME + "CoolerMaintainStatistics/QueryStatisticsByDate",				
				queryDateFilters: {
				    date: '',
					department_no:'',
			    },

			    isError: false,
			    errorMsg: '',
			    queryFilters: {
				    dateStart: '',
				    dateEnd: '',
					department_no:'',
			    },
        		departmentList:[],
        		clearableDepart:true,

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

				detailDialogVisible: false,
				showDetailDialogDate:'',
				showDetailDialog: null,
				detailForm:{
					data:[{
						date:'',
						id:'',
						number: 0,
						problem:'',
						train_columnName: '',
						train_column: '',						
					}],
				},
				dialogLoading:'',
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
			getSummaries(param) {
				const { columns, data } = param;
				const sums = new Array(columns.length).fill('');

				console.log('getSummaries-begin');

				columns.forEach((column, indexCol) => {
					if (indexCol === 0) {
						sums[indexCol] = '总计';
						return;
					}

					if( column.label =='标准组数量')
					{
						var sum = 0;
						data.forEach( (item , indexdata)=>
						{
							sum = sum + parseInt( item.number ); 
						});

						sums[indexCol] = sum;		
					}
				});

				//console.log('getSummaries-end');

				return sums;
			},
			showDateDetail(date){
				_this.detailDialogVisible = true;
				_this.showDetailDialogDate = new Date(date).format('yyyy 年 MM 月 dd 日');

				_this.queryDateFilters.date = date;
				_this.queryDateFilters.department_no = _this.queryFilters.department_no;

			    $.ajax({
				    url: _this.queryDataByDateUrl,
				    type: 'POST',
				    dataType: 'json',
				    data: _this.queryDateFilters,
				    success: function (data) {
					    _this.loadingUI = false;
					    if (data.status) {
							_this.detailForm.data = data.info;
					    }
				    }
			    })
			},
			printContent(e){ 
               let newContent = document.getElementById('printContent').outerHTML;  
               let oldContent = document.body.innerHTML;
               document.body.innerHTML = newContent;

               window.print();

               window.location.reload();
               return false;  
           } ,
		    PrintDateDetialData()
			{
				//console.log('1234679');
				this.printContent();
			},
		
			onExportDetail()
			{
				var _headers = {
					A1: { v: '' },
					B2: { v: 'CRH2型动车组散热设备清洁保养工作量统计' },
					A6: { v: '序号' },B6: { v: '车组号' },C6: { v: '标准组数量' }, D6: { v: '动车所检查发现问题' },
					};
				
				var mergedCells = [];
				////title
				mergedCells.push({s:{r:1,c:(1)},e:{r:1,c:(0+4)}});

				var rowStart = 7;
//
				var _data={};
				var trainSum = 0;
				for(var i =0; i < _this.detailForm.data.length; i++ )
				{
					var obj=_data;
					obj['A'+ (i+rowStart)] = {v:i+1};
					obj['B' + (i+rowStart)] = {v:_this.detailForm.data[i].train_columnname};
					obj['C' + (i+rowStart)] = {v:_this.detailForm.data[i].number};
					obj['D' + (i+rowStart)] = {v:_this.detailForm.data[i].problem};

					trainSum = trainSum + parseInt((obj['C' + (i+rowStart)]).v);
				}
				
				_headers['D'+  (rowStart - 2)] =  { v:  _this.showDetailDialogDate };
				_headers['D'+  (rowStart - 3)] =  { v: '_______分公司__________动车服务部' };
				mergedCells.push({s:{r:(rowStart - 2-1),c:(4-1)},e:{r:(rowStart - 2-1),c:(4-1+2)}});// date
				mergedCells.push({s:{r:(rowStart - 3-1),c:(4-1)},e:{r:(rowStart - 3-1),c:(4-1+2)}});

				var rowEnd = i+rowStart;

				obj['A'+rowEnd] = {v:'总计'};
				obj['C'+(rowEnd)] = {v:trainSum};
		
				_headers['A'+(rowEnd+3)] = { v: '升亮公司代表签认：'};
				mergedCells.push({s:{r:rowEnd+3-1,c:(0)},e:{r:rowEnd+3-1,c:(0+2)}});

				_headers['D'+(rowEnd+2)] = { v: '动车所工长签认：'};
				mergedCells.push({s:{r:rowEnd+2-1,c:(3)},e:{r:rowEnd+2-1,c:(3+2)}});

				_headers['D'+(rowEnd+4)] = { v: '动车所质检签认：'};
				mergedCells.push({s:{r:rowEnd+4-1,c:(3)},e:{r:rowEnd+4-1,c:(3+2)}});
				
				rowEnd = rowEnd+4;

				// 合并 headers 和 data
				var output = Object.assign({}, _headers, _data);
				// 获取所有单元格的位置
				var outputPos = Object.keys(output);
				// 计算出范围
				var ref = 'A1:'+('D'+rowEnd);//outputPos[0] + ':' + outputPos[outputPos.length - 1];

				// 构建 workbook 对象
				var wb = {
					SheetNames: ['散热设备保养统计'],
					Sheets: {
						'散热设备保养统计': Object.assign({}, output, { '!ref': ref },
														{"!merges":mergedCells})
					}
				};

				// 导出 Excel
				XLSX.writeFile(wb, '散热设备保养统计.xlsx');
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
		    //this.userInfo = JSON.parse(sessionStorage.getItem('user'));
	    },
	    mounted: function () {
		    this.onMonth();

			this.userInfo = JSON.parse(sessionStorage.getItem('user'));
		    if (this.userInfo != null && this.userInfo.department_no != "001") {
				//非公司管理员
				_this.departmentList.push({
					"department_no": this.userInfo.department_no,
					"department_name": this.userInfo.department_name
				})

				_this.queryFilters.department_no = this.userInfo.department_no;
				_this.clearableDepart = false;

				_this.onSearchRecordCounts();

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

						_this.onSearchRecordCounts();
				    },
			    });
       		}		    
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
