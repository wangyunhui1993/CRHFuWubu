<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml">
    <div>
        <el-col :span="24" class="breadcrumb-container">
            <div class="title">作业管理 / 滤尘网工作量统计</div>
        </el-col>
        <el-col class="well well-lg" style="background-color: white;">

        <el-col :span="24" style="vertical-align:middle;">

            <el-col :span="4" >         
              <label for="departSel">部门:</label>
              <el-select id="departSel" ref="departSelRef" v-model="department_no"
                          :clearable="clearableDepart"
                          style="margin-top: 7px; margin-bottom: 20px; margin-left: 2px ;width: 200px;">
                  <el-option 
                    v-for="item in departmentList"
                    v-bind:value="item.department_no"
                    v-bind:label="item.department_name" >
                  </el-option>
              </el-select >
            </el-col>

            <div class="title" style="max-width:100px;margin-top: 20px; margin-bottom: 20px; margin-left: 5px; margin-right: 0px">填表日期:
            </div>
            <el-date-picker type="date" placeholder="选择日期"
                    format="yyyy-MM-dd"
                    v-model="myDate"
                    :picker-options="pickerOpt"
                    max-width="200px;"
                    style="margin-top: 10px; margin-bottom: 20px; margin-left: 2px"
                    @change="dateChange"
            >
            </el-date-picker >
        </el-col>

            <el-table :data="dynamicValidateForm.data"
                      border
                      style="width: 100%"
                      max-height="350">

                <el-table-column
                        width="50"
                        prop="id"
                        label="序号">
                </el-table-column>

                <template v-for="(Model, idx) in trainModels">
                    <el-table-column  :label="Model.text" header-align="center" >

                        <el-table-column
                                width="140"
                                prop="train_model_data[idx].train_column"
                                label="车列号">
                            <template scope="scope">
                                <!--  <el-input type="text" v-model="scope.row.train_group" auto-complete="off" placeholder="账号"></el-input > -->
                                <el-select v-model="scope.row.train_model_data[idx].train_column" filterable
                                        placeholder="搜索车列号" style="margin-top:4px;">
                                    <el-option
                                            v-for="item in trainColumns"
                                            :label="item.train_column"
                                            :value="item.id">
                                    </el-option>
                                </el-select>
                            </template>
                        </el-table-column>

                        <el-table-column
                                width="170"
                                prop="train_model_data[idx].number"
                                label="标准组数量(组)" style="margin-left: 0px;margin-right: 0px;">
                            <template scope="scope">
                                    <el-input-number type="number"  v-model="scope.row.train_model_data[idx].number"
                                     :min="0" style="width:100%"></el-input-number>
                            </template>
                        </el-table-column>

                    </el-table-column>
                </template>

                <el-table-column
                        width="370"
                        prop="problem"
                        label="动车所检查发现问题">
                    <template scope="scope">
                        <el-input type="textarea" v-model="scope.row.problem" auto-complete="off"
                                  placeholder="动车所检查发现问题"></el-input>
                    </template>
                </el-table-column>
                <el-table-column                        
                        label="操作">
                    <template scope="scope">
                        <el-button
                                size="small"
                                type="danger"
                                @click="handleDelete(scope.$index, scope.row)">删除
                        </el-button>
                    </template>
                </el-table-column>
            </el-table>

            <el-col :span="24">
                <div class="title" style="margin-top: 20px; margin-bottom: 10px; margin-left: 5px">总数量：{{sum}}</div>
            </el-col>
            <br>
            <el-col :span="24">
                <el-button type="primary" icon="add" @click="addStatistics">新增条目</el-button>
                <el-button type="primary" icon="add" @click="submit">提交统计</el-button>

            </el-col>


        </el-col>
        <el-dialog  v-model="deleteVisible" >
            <h4 style="font-weight: bold; ">确认要删除序号[ {{deleteIndex+1}} ]项吗？</h4>
            <span slot="footer" class="dialog-footer" >
                <el-button @click="deleteVisible = false">返回</el-button >
                <el-button @click="confirmDelete" type="primary">确定</el-button >
            </span >
        </el-dialog >
    </div>
</template>

<script>
    import Vue from 'vue'
    import {Notification} from 'element-ui'
    var _this

    export default {

        name: "filter_dust_statistics",
        components: {},
        data () {
            _this = this;
            var myDate = new Date();
            return {
                userInfo: {},
                fetchSubDepartmentsURL: HOME + "DepartmentInfo/fetchSubDepartments",
                submitUrl: HOME + "FilterDustStatistics/SubmitData",
                getAllTrainColumnUrl: HOME + "TrainColumn/getRecords",
                myDate:Date(),
                dynamicValidateForm: {
                    data: [{
                        id: '1',
                        train_model_data: [
                            {
                                train_column: '',
                                number: 0,
                                train_model: 0,
                                guid:'',
                            },  
/*                          {
                               train_column: '',
                                number: 1,
                                train_model: 0,
                                guid:'',
                            },                            {
                                train_column: '',
                                number: 1,
                                train_model: 0,
                                guid:'',
                            },*/
                        ],//e.g
                        problem: '',
                        date:'',
                        department_no: "",
                    }]
                },
                department_no: "",
                departmentList:[],
                clearableDepart:true,
                trainColumns: [],
                errorMsg: '',
                isError: false,
                trainModels: [],
                deleteVisible:false,
                deleteIndex: -1,
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
            }
        },
        methods: {
            addStatistics() {
                
                var Tmodeldata = [];
                
                for(var j = 0; j < _this.trainModels.length; j++)
                {//insert dummy items
                    var itemT = new Object;
                    itemT.guid = '';
                    itemT.problem = '';

                    itemT.train_column = '';
                    itemT.number = 0;
                    itemT.train_model = j;

                    Tmodeldata.push(itemT);
                }

                _this.dynamicValidateForm.data.push({
                    id: _this.dynamicValidateForm.data.length + 1,
                    train_model_data: Tmodeldata,
                    problem: '',
                    date:''
                });
            },
            submit(){
                _this.isError = this.validateForm(this.dynamicValidateForm);
                if (_this.isError)
                    return;

                // for(var i = 0; i < _this.dynamicValidateForm.data.length ; i++)
                // {
                //     _this.dynamicValidateForm.data[i].date = _this.myDate;

                // };

                var submitData = {data: []};
                for (var i = 0; i < _this.dynamicValidateForm.data.length; i++) {
                    var item  = _this.dynamicValidateForm.data[i];
                    item.date = _this.myDate;
                    item.guid = generateQuickGuid();

                    for (var j = 0; j < item.train_model_data.length; j++) {
                        submitData.data.push({
                            train_column: item.train_model_data[j].train_column,
                            number: item.train_model_data[j].number,
                            train_model: item.train_model_data[j].train_model,
                            problem: item.problem,
                            date:item.date,
                            guid:item.guid,
                            department_no:_this.department_no,
                        });
                    }
                }

                $.ajax({
                    url: _this.submitUrl,
                    type: 'POST',
                    dataType: 'json',
                    data: submitData,//_this.dynamicValidateForm,
                    success: function (data) {
                        if (data.status) {
                            Notification({
                                title: '成功',
                                message: '录入成功',
                                type: 'success'
                            });

                        } else {
                            Notification({
                                title: '失败',
                                message: '录入失败',
                                type: 'error'
                            });
                        }

                        var Tmodeldata = [];
                        
                        for(var j = 0; j < _this.trainModels.length; j++)
                        {//insert dummy items
                            var itemT = new Object;
                            {
                                itemT.guid = '';
                                itemT.problem = '';

                                itemT.train_column = '';
                                itemT.number = 0;
                                itemT.train_model = j;

                                Tmodeldata.push(itemT);
                            }
                        }

                        _this.dynamicValidateForm.data = [{
                            id: '1',
                            train_model_data: Tmodeldata,
                            problem: '',
                            date:_this.myDate,
                        }];
                    },
                })
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
                        this.errorMsg = '行车列数据不能全部为空，请检查！';
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

            handleDelete(index, item) {
                this.deleteIndex = index;
                this.deleteVisible = true;
            },
            confirmDelete() {
                _this.dynamicValidateForm.data.splice(this.deleteIndex, 1);
                this.deleteVisible = false;
            },
            dateChange(val) {
                _this.myDate=val;
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
        computed: {
            sum(){
                var sum = 0;
                for (var i = _this.dynamicValidateForm.data.length - 1; i >= 0; i--) {
                    var item = _this.dynamicValidateForm.data[i];
                    for (var j = 0; j < item.train_model_data.length; j++) {
                        sum = sum + parseInt(item.train_model_data[j]["number"]);
                    }
                }
                return sum;
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

                _this.department_no = this.userInfo.department_no;
                _this.clearableDepart = false;

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

				    },
			    });
            }

            _this.getAllTrainColumn();
            _this.trainModels = getTrainModel();
            
            var tempDate = new Date().format('yyyy-MM-dd');
            _this.myDate = tempDate;//.toLocaleDateString();

            var Tmodeldata = [];
            
            for(var j = 0; j < _this.trainModels.length; j++)
            {//insert dummy items
                var itemT = new Object;
                {
                    itemT.guid = '';
                    itemT.problem = '';

                    itemT.train_column = '';
                    itemT.number = 0;
                    itemT.train_model = j;

                    Tmodeldata.push(itemT);
                }
            }

            _this.dynamicValidateForm.data = [{
                id: '1',
                train_model_data: Tmodeldata,
                problem: '',
                date:_this.myDate,
            }];

        },
        mounted: function () {

        },
    }

</script>
<style>

</style>
