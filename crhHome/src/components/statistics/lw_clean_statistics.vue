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
						<template scope="scope" >
							<el-button type="text" @click="showDateDetail(scope.row.date)" >{{scope.row.date}}</el-button>
            			</template >
                    </el-table-column >

					<template v-for="(Model, idx) in trainModels"> 

						<el-table-column  :label="Model.text" header-align="center" >
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

		<!--dialog class="detailDialog"  id="detailDialog" style = "
		border: 1px solid rgba(255, 0, 0, 0.3);
		border-radius: 6px;style="text-align: center;"
		box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
		background-color: rgba(0, 0, 0, 0.8);class="table-responsive" border: 1px solid rgba(255, 0, 0, 0.3);background-color: rgba(0, 0, 0, 0.8); 
		width:1070px; "</dialog-->
  		<el-dialog class="table-responsive" custom-class="detailDialog" v-model="detailDialogVisible" >
			<div id="printContent" style="width:100%;text-align: center;margin-top: -10px ;">
				<h3>动车组滤尘网清洗拆装工作量统计</h3>
				<h5 style="text-align: right;margin:20px;">_______分公司__________动车服务部</h5>
				<h5 style="text-align: right;margin:20px;">{{showDetailDialogDate}}</h5>
				<!-- //////////////////-->
				<el-table :data="detailForm.data"
						border						
						:summary-method="getSummaries"
						show-summary
						style="width: 100%; text-align:left"
						v-loading="dialogLoading">

					<el-table-column width="40" label="序号" >
							<template scope="scope" >
								<span >{{scope.$index + 1}}</span >
							</template >
					</el-table-column >

					<template v-for="(Model, idx) in trainModels">
						<el-table-column :label="Model.text" header-align="center" >
							<el-table-column
									width="80"
									label="车列号" >
									<template scope="scope" >
										{{scope.row.train_model_data[idx].train_columnname}}
									</template>
							</el-table-column >

							<el-table-column
									width="75"
									label="标准组数量" style="margin-left: 0px;margin-right: 0px;">											
									<template scope="scope" >
										{{scope.row.train_model_data[idx].number}}
									</template>
							</el-table-column >
						</el-table-column >
					</template>

					<el-table-column
							style="width:%100"
							
							prop="problem"
							label="动车所检查发现问题" >
					</el-table-column >
				</el-table >
  				<!-- //////////////////  width="%100"-->
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
							<h5 style="text-align: right;margin-right: 30px">动车所工长签认：</h5>
                		</el-col>
            		</el-row>
					<el-row>
						<h5 style="text-align: right;margin-right: 30px"></h5>
            		</el-row>
					<el-row>
                		<el-col>
							<h5 style="text-align: right;margin-right: 30px">动车所质检签认：</h5>
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
    import Vue from 'vue';
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
			    queryCountUrl: HOME + "FilterDustStatistics/getLWCleanStatisticsCount",
			    queryDataUrl: HOME + "FilterDustStatistics/getLWCleanStatistics",
			    exportUrl: HOME + "FilterDustStatistics/exportLWCleanStatistics",

				queryDataByDateUrl: HOME + "filterDustStatistics/getStatisticsAtDate",
				queryDateFilters: {
				    date: ''
			    },

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

				detailDialogVisible: false,
				showDetailDialogDate:'',
				showDetailDialog: null,
				detailForm:{
					data: [{
								problem:'',
								train_model_data:[
									{
										number:0 ,
										problem:'',
										train_columnname:'',
										train_model:'0'
									},]
							}]
				},
				dialogLoading: true,
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

						    _this.tableData = [];
						    var datainfo = data.info;
							/////////////////////////////////////////////////////
							for (var i = 0; i < datainfo.length; ) {
								var submitdate = datainfo[i]['date'];

								var notInitedTMode = new Array(_this.trainModels.length).fill(true);

								var Tmodeldata = [];									

								for(var iM = 0;iM < _this.trainModels.length; iM++)
								{
									//var indx = i + iM;										
									var indx = i;
									if(datainfo[indx] !=null && submitdate == datainfo[indx]['date'])
									{
										i++;

										var itemT = new Object();

										itemT.task_number = parseInt(datainfo[indx]['task_number']);
										itemT.train_model = datainfo[indx]['train_model'];	
										itemT.total_task_number = 0;
										Tmodeldata[itemT.train_model] = itemT;

										notInitedTMode[itemT.train_model] = false;
									}
								}

								for(var j = 0; j < _this.trainModels.length; j++)
								{//insert dummy items
									if(notInitedTMode[j] == true)
									{
										itemT = new Object();

										itemT.task_number = 0;
										itemT.train_model = j;
										itemT.total_task_number = 0;
										Tmodeldata[j] = itemT;
									}
								}

								var itemdataForm = new Object;

								itemdataForm.date = submitdate;
								itemdataForm.train_model_data = Tmodeldata;

								_this.tableData.push(itemdataForm);
							}
							/////////////////////////////////////////////////////
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
						    _this.totalRecords = parseInt(data.info.totalrecords);
						    _this.onSearchDetailData();
					    }
				    },
			    })
		    },
			//show the details at specified date
			showDateDetail(date){

				//$( "#detailDialog" ).show();
				//$( "#detailDialog" ).close(value);
				
				_this.detailDialogVisible = true;
				_this.showDetailDialogDate = new Date(date).format('yyyy 年 MM 月 dd 日');
				
				_this.queryDateFilters.date = date;
			    $.ajax({
				    url: _this.queryDataByDateUrl,
				    type: 'POST',
				    dataType: 'json',
				    data: _this.queryDateFilters,
				    success: function (data) {

					  _this.loadingUI = false;

					  if (data.status) {
						  _this.detailForm.data = [];
						  var datainfo = data.info;
						
						  for (var i = 0; i < datainfo.length; ) {							  	

									var guid = datainfo[i]['guid'];
									var problem = datainfo[i]['problem'];	
									var submitdate = datainfo[i]['date'];	

									var notInitedTMode = new Array(_this.trainModels.length).fill(true);

									var Tmodeldata = [];									

									for(var iM = 0;iM < _this.trainModels.length; iM++)
									{
										//var indx = i + iM;										
										var indx = i;
										
										if(datainfo[indx] !=null && guid == datainfo[indx]['guid'])
										{
											i++;

											Tmodeldata[datainfo[indx]['train_model']] = { 
												problem : problem,
												train_columnname : datainfo[indx]['train_columnname']==null?'':datainfo[indx]['train_columnname'],
												number: parseInt(datainfo[indx]['number']),
												train_model : datainfo[indx]['train_model']
											};

											notInitedTMode[datainfo[indx]['train_model']] = false;
										}									
									}

									for(var j = 0; j < _this.trainModels.length; j++)
									{//insert dummy items
										if(notInitedTMode[j] == true)
										{
											Tmodeldata[j] = { 
												problem : problem,
												train_columnname : '',
												number: 0,
												train_model : j
											};
										}
									}

									_this.detailForm.data.push(
										{
											problem:problem,
											train_model_data:Tmodeldata
										});
						  }

					  } else {
						  Notification({
							  title: '失败',
							  message: '获取日期下工作量信息失败',
							  type: 'error'
						  });
					  }
					  _this.dialogLoading = false;

				    }
			    })
			},
			getSummaries(param) {
				const { columns, data } = param;
				const sums = new Array(columns.length).fill('');

				//console.log('getSummaries-begin');

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
							sum = sum + parseInt( item.train_model_data[((indexCol)/2-1)].number ); 
						});

						sums[indexCol] = sum;		
					}
				});

				//console.log('getSummaries-end');

				return sums;
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
				this.printContent();
			},
		
			onExportDetail()
			{
				var _headers = new Object;//
				
				_headers.A1 =  { v: '' };
				var mergedCells = [];

				var rowStart = 6;
				var crhColStart = 66;//'B';
				var crhColEnd = crhColStart + _this.trainModels.length*2;//'B';
				var crhColEndChr = String.fromCharCode(crhColStart + _this.trainModels.length*2);//'B';

				_headers['A'+rowStart] =  { v: '序号1' };
				_headers['A'+(rowStart+1)] =  { v: '序号' };
				mergedCells.push({s:{r:rowStart-1,c:(0)},e:{r:rowStart,c:(0)}});

				_headers[String.fromCharCode(crhColStart + (crhColEnd-crhColStart)/2 -2)+2] =  { v: '动车组滤尘网清洗拆卸工作量统计' };
				_headers[String.fromCharCode(crhColEnd-1) +  (rowStart - 2)] =  { v:  _this.showDetailDialogDate };
				_headers[String.fromCharCode(crhColEnd-2) +  (rowStart - 3)] =  { v: '_______分公司__________动车服务部' };

				mergedCells.push({s:{r:1,c:((crhColEnd-crhColStart)/2 -1)},e:{r:1,c:((crhColEnd-crhColStart)/2 + 1)}});
				mergedCells.push({s:{r:(rowStart - 3),c:((crhColEnd-crhColStart)-1 + 1)},e:{r:(rowStart - 3),c:((crhColEnd-crhColStart)-1+2)}});
				mergedCells.push({s:{r:(rowStart - 3 -1),c:((crhColEnd-crhColStart)-1)},e:{r:(rowStart - 3-1),c:((crhColEnd-crhColStart)-1+2)}});

				

				//console.log(JSON.stringify(_this.trainModels));
				for(var j = 0; j < _this.trainModels.length; j++)
				{
					var lableCol = String.fromCharCode(crhColStart+j*2);

					_headers[lableCol+rowStart] = { v: _this.trainModels[j].text};
					lableCol = String.fromCharCode(crhColStart+j*2+1);
					_headers[lableCol+rowStart] = { v: '标准组数量'};
					mergedCells.push({s:{r:(rowStart-1),c:((crhColStart-65)+j*2-1 +1)},e:{r:(rowStart-1),c:((crhColStart-65)+j*2-1 + 2)}});

					lableCol = String.fromCharCode(crhColStart+j*2);
					_headers[lableCol+(rowStart+1)] = { v: '车组号'};
					lableCol = String.fromCharCode(crhColStart+j*2+1);
					_headers[lableCol+(rowStart+1)] = { v: '标准组数量'};
				}
				_headers[crhColEndChr+rowStart] = { v: '动车所检查发现问题' };
				_headers[crhColEndChr+(rowStart+1)] = { v: '动车所检查发现问题' };
				mergedCells.push({s:{r:rowStart-1,c:((crhColEnd-crhColStart)-1 + 1+1)},e:{r:rowStart,c:((crhColEnd-crhColStart)-1 + 1+1)}});
				rowStart = 7;

/*
				rowStart = 7;
				_headers['A'+rowStart] =  { v: '序号' };
				for(var j = 0; j < _this.trainModels.length; j++)
				{
					var k = String.fromCharCode(crhColStart+j*2)+rowStart;

					_headers[k] = { v: '车组号'};

					var k2 = String.fromCharCode(crhColStart+j*2+1)+rowStart;
					_headers[k2] = { v: '标准组数量'};

					//console.log(k + JSON.stringify(te[k]) + k2 + JSON.stringify(te[k2]));
				}
				var k2 = crhColEndChr+rowStart;
				_headers[k2] = { v: '动车所检查发现问题' };

				//console.log(JSON.stringify(_headers));
*/

			   	rowStart = 8;
				var _data={};
				
				var trainModeDataSum = [];
				for(var i =0; i < _this.detailForm.data.length; i++ )
				{
					var obj = _data;

					obj['A'+ (i+rowStart)] = {v:i+1};

					for(var j = 0; j < _this.trainModels.length; j++)
					{
						var crhTrainColum = String.fromCharCode(crhColStart+j*2)+(rowStart+i);
						var crhNumber = String.fromCharCode(crhColStart+j*2+1)+(rowStart+i);

						obj[crhTrainColum] = {v:_this.detailForm.data[i].train_model_data[j].train_columnname};
					    obj[crhNumber] = {v:_this.detailForm.data[i].train_model_data[j].number};
			
						trainModeDataSum[j] = (trainModeDataSum[j]==null?0:trainModeDataSum[j]) + parseInt(obj[crhNumber].v);
					}

					var problem = crhColEndChr+(rowStart+i);
					obj[ problem ] = {v:_this.detailForm.data[i].problem};			
				}
				
				var rowEnd = (rowStart+i);
				
				var obj = _data;;

				obj['A'+rowEnd] = {v:'总计'};
				for(var j = 0; j < _this.trainModels.length; j++)
				{
					var k2 = String.fromCharCode(crhColStart+j*2+1)+(rowEnd);

					obj[k2] = {v:trainModeDataSum[j]};
				}
				rowEnd = rowEnd +1;

				//console.log(JSON.stringify(_data));

				_headers['A'+(rowEnd+2)] = { v: '升亮公司代表签认：'};
				_headers[String.fromCharCode(crhColStart + (crhColEnd-crhColStart)/2) +(rowEnd+1)] = { v: '动车所工长签认：'};
				_headers[String.fromCharCode(crhColStart + (crhColEnd-crhColStart)/2) +(rowEnd+3)] = { v: '动车所质检签认：'};

				mergedCells.push({s:{r:(rowEnd+2-1),c:(0)},e:{r:(rowEnd+2-1),c:(2)}});//动车所工长签认：

				mergedCells.push({s:{r:(rowEnd+1 -1),c:((crhColEnd-crhColStart)/2 -1 + 2)},e:{r:(rowEnd+1-1),c:((crhColEnd-crhColStart)/2 -1+3)}});

				mergedCells.push({s:{r:(rowEnd+3 -1),c:((crhColEnd-crhColStart)/2 -1 + 2)},e:{r:(rowEnd+3-1),c:((crhColEnd-crhColStart)/2 -1+3)}});//动车所质检签认：

				rowEnd = rowEnd+4;

				//console.log(mergedCells);
				
				
				// 合并 headers 和 data
				var output = Object.assign({}, _headers, _data);
				// 获取所有单元格的位置
				var outputPos = Object.keys(output);
				// 计算出范围
				var ref = 'A1:'+ crhColEndChr+rowEnd;

				// 构建 workbook 对象
				var wb = {
					SheetNames: ['动车组滤尘网清洗拆卸工作量统计'],
					Sheets: {
						'动车组滤尘网清洗拆卸工作量统计':
													   Object.assign({}, 
													   output, 
													   { '!ref': ref },
													   {"!merges":mergedCells
														}
													   )//merge from E2:H2												
									
					}
				};


				// 导出 Excel
				XLSX.writeFile(wb, '动车组滤尘网清洗拆卸工作量统计.xlsx');
/*
			    var merge_format = wb.add_format({
					'bold':     True,
					'border':   6,
					'align':    'center',
					'valign':   'vcenter',
					'fg_color': '#D7E4BC',
				});

				wb.worksheet.merge_range('E2:H2', '动车组滤尘网清洗拆卸工作量统计', merge_format);
				*/
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

			_this.detailForm.data =[];
			var Tmodeldata = [];
            
            for(var j = 0; j < _this.trainModels.length; j++)
            {//insert dummy items
				Tmodeldata.push({
                    problem: '',
                    train_columnname: '',
                    number:0,
                    train_model:j
                });
            }

            _this.detailForm.data = [{
                train_model_data: Tmodeldata,
                problem: '',
            }];

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

	.detailDialog {
		width:1080px;
		}
</style >
