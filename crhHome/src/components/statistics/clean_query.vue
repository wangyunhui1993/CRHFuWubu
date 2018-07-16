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
                                    <el-date-picker type="datetime" placeholder="起始日期" format="yyyy-MM-dd HH:mm:ss"
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
                                    <el-date-picker type="datetime" placeholder="结束日期" format="yyyy-MM-dd HH:mm:ss"
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
                            <el-col :span="4" style="float: right" >
                                <el-button
		                                icon="document"
		                                size="normal"
		                                type="primary"
		                                @click="onExport" >导出
                                </el-button >
                                 <el-button @click="printPage" type="primary">打印</el-button >
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
        <div style="display: none;">
        	<div id="subOutputRank-print"  class="clean_query">
        		<div v-for="(list,index) in printData" :key="index"  style="page-break-after:always;">
        <TABLE border="1" style="font-size:9pt;" width="100%" align="center">
<THEAD style="display:table-header-group;font-weight:bold;border: none;">
<TR><TD colspan="18" style="">
	<div>
		<h4 style="text-align: center;">动车保洁、吸污作业单</h4>
	</div>
	<div style="padding-bottom: 10px;margin-bottom: 10px;">
		<span style="float: left;"><u>&nbsp;&nbsp;&nbsp;  升亮 &nbsp;&nbsp;&nbsp;  </u>分公司<u>&nbsp;&nbsp;&nbsp;  {{depname}} &nbsp;&nbsp;&nbsp;</u>  服务部（客技站）</span>
	<span style="float: right;"><u>&nbsp;&nbsp;{{printTime.y}}&nbsp;&nbsp;</u>年<u>&nbsp;&nbsp;&nbsp;{{printTime.m}}&nbsp;&nbsp;&nbsp;</u>月<u>&nbsp;&nbsp;{{printTime.d}}&nbsp;&nbsp;</u>日</span>
	</div>
</TD></TR>
</THEAD>
<TBODY style="text-align:center"">
	<TR>
<TD colspan="18" >
	<span style="float: left;">项目名称：{{queryFilters.task_content_id|convertTaskContentName}}</span>
</TD>
</TR>
<TR><TD>序号</TD><TD>计划车组号</TD><TD>数量</TD><TD>实际车组号</TD><TD>数量</TD><TD>作业组长</TD><TD>公司质检员</TD><TD>段方质检员</TD><TD>备注</TD>
	<TD>序号</TD><TD>计划车组号</TD><TD>数量</TD><TD>实际车组号</TD><TD>数量</TD><TD>作业组长</TD><TD>公司质检员</TD><TD>段方质检员</TD><TD>备注</TD>
</TR>
<TR v-for="(itemList,itemListIndex) in list"  :key="itemListIndex"> <TD>{{itemListIndex + (index* pageMaxNum * 2) + 1}}</TD><TD  v-for="item1 in 8">{{itemList[item1-1]}}</TD>
	<TD>{{itemListIndex + (index* pageMaxNum * 2) + pageMaxNum + 1}}</TD><TD  v-for="item2 in 8">{{itemList[item2+7]}}</TD>
</TR>
</TBODY>
<TFOOT style="display:table-footer-group;font-weight:bold">
<TR>
<TD colspan="18" style="">
	<div style="margin: 15px 0;">
		<span>合计：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;计划数量：{{(tableData.length/pageMaxNum/2>=(index+1))?(pageMaxNum * 2):(tableData.length - (pageMaxNum * 2 * index))}}&nbsp;&nbsp;&nbsp;&nbsp;实际数量：{{(tableData.length/pageMaxNum/2>=(index+1))?(pageMaxNum * 2):(tableData.length - (pageMaxNum * 2 * index))}}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	</div>
	<div style="margin: 15px 0;">
		<span style="float: right;margin-right: 20px;">签认：<u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>(分公司负责人)&nbsp;&nbsp;&nbsp;&nbsp;签认：<u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>(段方负责人) </span>
	</div>
</TD>
</TR>
</TFOOT>
</TABLE>
    </div>
        	</div>
        </div>
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
				autoSearch: false,
				pageMaxNum:15,
				printData:[],
				depname:"",
				printTime:{
					y:"",
					m:"",
					d:"",
				},
		    }
	    },
	    methods: {
	    	formatPrintData(data){
	    		this.printData=[];
	    		let pages=Math.ceil(this.tableData.length / (this.pageMaxNum*2) );
	    		for(var i=0;i<pages;i++){
	    			this.printData[i]=[];
	    			let v=-1;
	    			for(var j=this.pageMaxNum*2*i;j<this.pageMaxNum*2*(i+1);j++){
	    				v++;
	    				if(v<this.pageMaxNum){
	    					this.printData[i][v]=[];
	    					if(this.tableData.length>j){
	    						this.printData[i][v].push(this.tableData[j].train_column_name||"",this.tableData[j].task_count,this.tableData[j].train_column_name,this.tableData[j].task_count,"","","","");
	    					}else{
	    						this.printData[i][v].push("","","","","","","","");
	    					}
	    					console.log(this.printData[i][v]);
	    				}else{
	    					if(this.tableData.length>j){
	    						this.printData[i][v-this.pageMaxNum].push(this.tableData[j].train_column_name||"",this.tableData[j].task_count,this.tableData[j].train_column_name,this.tableData[j].task_count,"","","","");
	    					}else{
	    						this.printData[i][v-this.pageMaxNum].push("","","","","","","","");
	    					}
	    				}
	    			}
	    		}
	    		console.log(this.printData);
	    		return this.printData;
	    	},
	    	printPage(){
	    		this.printContent();
	    	},
	    	     printContent(e){
               let subOutputRankPrint = document.getElementById('subOutputRank-print');  
               //console.log(subOutputRankPrint.innerHTML);  
               let newContent =subOutputRankPrint.outerHTML;  
               let oldContent = document.body.innerHTML;  
               document.body.innerHTML = newContent;  
               window.print();  
               window.location.reload();
               //document.body.innerHTML = oldContent;  
               return false;  
           } ,
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
		    	this.depname='';
		    	for(var item of this.departmentList){
		    		console.log(item);
		    		console.log(this.queryFilters.department_no);
		    		if(item.department_no==this.queryFilters.department_no){
		    			this.depname=item.department_name;
		    			console.log(this.depname);
		    		}
		    	}
			    _this.onSearchRecordCounts();
		    },
			onDateChange(){
				var endDate   = Date.parse(_this.queryFilters.dateEnd);
				var startDate = Date.parse(_this.queryFilters.dateStart);

				var timer=new Date(_this.queryFilters.dateStart);
	    		this.printTime.y=timer.getFullYear();
	    		this.printTime.m=timer.getMonth() + 1;
	    		this.printTime.d=timer.getDate();
	    		console.log(this.printTime);
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

			prepareQueryFilter()
			{
				//
				///_this.autoSearch = false;

				var param = this.parseUrl();//解析所有参数
				if(param && param['DateStart'])
				{
					_this.queryFilters.dateStart = param['DateStart'];//就是你要的结果

					_this.autoSearch = true;
				}
				
				if(param && param['DateEnd'])
				{
					_this.queryFilters.dateEnd = param['DateEnd'];//就是你要的结果
					_this.autoSearch = true;
				}
				
				if(param && param['department_no'])
				{
					_this.queryFilters.department_no = param['department_no'];//就是你要的结果
					_this.autoSearch = true;
				}
				if(param && param['taskItem'])
				{
					var id = _this.convertTaskContentName2ID(param['taskItem']);//就是你要的结果
					_this.queryFilters.task_content_id = id;
					_this.autoSearch = true;
				}
				//
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

					_this.prepareQueryFilter();
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
							
							_this.prepareQueryFilter();
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
						    _this.formatPrintData(data.info);
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
			},     
			
			 parseUrl(){
				var url=location.href;

				url = decodeURIComponent(url);
				var i=url.indexOf('?');
				if(i==-1)return;
				var querystr=url.substr(i+1);
				var arr1=querystr.split('&');
				var arr2=new Object();
				for  (i=0; i < arr1.length; i++)
				{
					var strtemp = arr1[i];
					if(strtemp && strtemp != "")
					{
						var ta = strtemp.split('=');
						arr2[ta[0]]=ta[1];
					}
				}
				return arr2;
      		},

			convertTaskContentName2ID(taskname)
		    {
			    let result = ''
			    for (let i = 0; i < _this.taskContentList.length; i++) {
				    if (taskname == _this.taskContentList[i].task_content) {
					    result = _this.taskContentList[i].id;
					    break;
				    }
			    }
			    return result;
		    },
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
			if(!_this.autoSearch)
			{
			    this.onMonth();
			}
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
    .clean_query tbody tr td{
    	height:30px;
    }
</style >
