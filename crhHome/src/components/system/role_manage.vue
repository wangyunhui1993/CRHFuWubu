<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml">
    <div>
        <el-col :span="24" class="breadcrumb-container">
            <div class="title">系统管理 / 角色管理</div>
        </el-col>
        <el-col class="well well-lg" style="background-color: white;">
            <div align="right" style="margin-bottom: 20px">
                <el-button
                    icon="plus"
                    size="normal"
                    type="primary"
                    @click="handleAdd">角色</el-button>
            </div>

            <el-table
                    :data="tableData"
                    border
                    style="width: 100%">
                <el-table-column
                        width="80"
                        prop="id"
                        label="序号">
                        <template scope="scope" >
                            {{scope.$index+1}}
                        </template >
                </el-table-column>
                <el-table-column
                        prop="role_name"
                        label="角色名称">
                </el-table-column>
                <el-table-column
                        label="角色类型">
                    <template scope="scope">
                        <div><strong>{{scope.row.role_type | filterRoleType}}</strong></div>
                    </template>
                </el-table-column>

                <el-table-column
                        prop="comment"
                        label="角色说明">
                </el-table-column>
                <el-table-column label="操作" width="150">
                    <template scope="scope">
                        <el-button
                                size="small"
                                type="primary"
                                @click="handleEdit(scope.row)">编辑</el-button>
                        <el-button
                                size="small"
                                type="danger"
                                @click="handleDelete(scope.row)">删除</el-button>
                    </template>
                </el-table-column>
            </el-table>
            <div class="block" style="text-align: center; margin-top: 20px">
                <el-pagination
                        @size-change="handleSizeChange"
                        @current-change="handleCurrentChange"
                        :current-page="currentPage"
                        :page-size="pageSize"
                        layout="total, prev, pager, next, jumper"
                        :total="totalPage">
                </el-pagination>
            </div>
        </el-col>
        <el-dialog title="添加角色" v-model="addDialogVisible" size="small" >
            <el-form :model="form">
                <el-form-item label="角色名称：" :label-width="formLabelWidth" style="width: 30%">
                    <el-input v-model="form.role_name" ></el-input>
                </el-form-item>
                <el-form-item label="角色类型：" :label-width="formLabelWidth" style="width: 30%">
                    <div style="display: inline">
                        <el-select v-model="form.role_type" style="width: 100%">
                            <el-option
                                    v-for="item in roleTypes"
                                    v-bind:value="item.role_type"
                                    v-bind:label="item.role_name">
                            </el-option>
                        </el-select>
                        <div v-show="form.role_type == 0" style=" color: red;">确定创建CS角色？</div>
                    </div>

                </el-form-item>
                <el-form-item label="备注：" :label-width="formLabelWidth" style="width: 50%">
                    <el-input v-model="form.comment"  type="textarea"  :autosize="{ minRows: 3, maxRows: 5}"></el-input>
                </el-form-item>
                <el-form-item label="操作权限：" :label-width="formLabelWidth" >
                </el-form-item>
            </el-form>
            <el-row style="background-color: #F9FAFC; border-radius: 10px;">
                <el-col :span="6">
                    <div style="margin-top: 20px">
                        <div >
                            <el-checkbox style="margin-left: 20px"
                                         v-model="taskAllChecked"
                                         @change="handleTaskCheckAllChange"></el-checkbox>
                            <div style="font-weight: bold;  margin-bottom: 20px; display: inline">作业管理</div>
                        </div>
                        <ul>
                            <li v-for=" item in taskList" style="list-style: none; margin-left: -10px" >
                                <el-checkbox style="font-weight: normal"
                                             v-model="item.checked"
                                             @change="handleCheckedTaskChange">{{item.name}}</el-checkbox>
                            </li>
                        </ul>
                    </div>
                </el-col>
                <el-col :span="6">
                    <div style="margin-top: 20px">
                        <div >
                            <el-checkbox style="margin-left: 20px"
                                         v-model="statisticAllChecked"
                                         @change="handleStatisticCheckAllChange"></el-checkbox>
                            <div style="font-weight: bold;  margin-bottom: 20px; display: inline">统计查询</div>
                        </div>
                        <ul>
                            <li v-for=" item in statisticList" style="list-style: none;margin-left: -10px">
                                <el-checkbox style="font-weight: normal"
                                             v-model="item.checked"
                                             @change="handleCheckedStatisticChange">{{item.name}}</el-checkbox>
                            </li>
                        </ul>
                    </div>
                </el-col>
                <el-col :span="6">
                    <div style="margin-top: 20px">
                        <div >
                            <el-checkbox style="margin-left: 20px"
                                         v-model="basicAllChecked"
                                         @change="handleBasicCheckAllChange"></el-checkbox>
                            <div style="font-weight: bold;  margin-bottom: 20px; display: inline">基础数据</div>
                        </div>
                        <ul>
                            <li v-for=" item in basicDataList" style="list-style: none;margin-left: -10px">
                                <el-checkbox style="font-weight: normal"
                                             v-model="item.checked"
                                             @change="handleCheckedBasicChange">{{item.name}}</el-checkbox>
                            </li>
                        </ul>
                    </div>
                </el-col>
                <el-col :span="6">
                    <div style="margin-top: 20px">
                        <div >
                            <el-checkbox style="margin-left: 20px"
                                         v-model="systemAllChecked"
                                         @change="handleSystemCheckAllChange"></el-checkbox>
                            <div style="font-weight: bold;  margin-bottom: 20px; display: inline">系统管理</div>
                        </div>
                        <ul>
                            <li v-for=" item in systemList" style="list-style: none;margin-left: -10px">
                                <el-checkbox style="font-weight: normal"
                                             v-model="item.checked"
                                             @change="handleCheckedSystemChange">{{item.name}}</el-checkbox>
                            </li>
                        </ul>
                    </div>
                </el-col>
            </el-row>
            <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
                      :title="errorMsg"
                      type="error"
                      :closable="false"
                      show-icon >
            </el-alert >
            <div slot="footer" class="dialog-footer">
                <el-button @click="addDialogVisible = false">取 消</el-button>
                <el-button type="primary" @click="addRole">确 定</el-button>
            </div>
        </el-dialog>

        <el-dialog title="编辑角色" v-model="modifyDialogVisible" size="small">
            <el-form :model="modifyForm">
                <el-form-item label="角色名称：" :label-width="formLabelWidth" style="width: 30%">
                    <el-input v-model="modifyForm.role_name" ></el-input>
                </el-form-item>
                <el-form-item label="角色类型：" :label-width="formLabelWidth" style="width: 30%">
                    <el-select v-model="modifyForm.role_type" style="width: 100%">
                        <el-option
                                v-for="item in roleTypes"
                                v-bind:value="item.role_type"
                                v-bind:label="item.role_name">
                        </el-option>
                    </el-select>
                    <div v-show="modifyForm.role_type == 0" style=" color: red;">确定创建CS角色？</div>
                </el-form-item>
                <el-form-item label="备注：" :label-width="formLabelWidth" style="width: 50%">
                    <el-input v-model="modifyForm.comment"  type="textarea"  :autosize="{ minRows: 3, maxRows: 5}"></el-input>
                </el-form-item>
            </el-form>
            <el-row style="background-color: #F9FAFC; border-radius: 10px;">
                <el-col :span="6">
                    <div style="margin-top: 20px">
                        <div >
                            <el-checkbox style="margin-left: 20px"
                                         v-model="taskAllChecked"
                                         @change="handleTaskCheckAllChange"></el-checkbox>
                            <div style="font-weight: bold;  margin-bottom: 20px; display: inline">作业管理</div>
                        </div>
                        <ul>
                            <li v-for=" item in taskList" style="list-style: none; margin-left: -10px" >
                                <el-checkbox style="font-weight: normal"
                                             v-model="item.checked"
                                             @change="handleCheckedTaskChange">{{item.name}}</el-checkbox>
                            </li>
                        </ul>
                    </div>
                </el-col>
                <el-col :span="6">
                    <div style="margin-top: 20px">
                        <div >
                            <el-checkbox style="margin-left: 20px"
                                         v-model="statisticAllChecked"
                                         @change="handleStatisticCheckAllChange"></el-checkbox>
                            <div style="font-weight: bold;  margin-bottom: 20px; display: inline">统计查询</div>
                        </div>
                        <ul>
                            <li v-for=" item in statisticList" style="list-style: none;margin-left: -10px">
                                <el-checkbox style="font-weight: normal"
                                             v-model="item.checked"
                                             @change="handleCheckedStatisticChange">{{item.name}}</el-checkbox>
                            </li>
                        </ul>
                    </div>
                </el-col>
                <el-col :span="6">
                    <div style="margin-top: 20px">
                        <div >
                            <el-checkbox style="margin-left: 20px"
                                         v-model="basicAllChecked"
                                         @change="handleBasicCheckAllChange"></el-checkbox>
                            <div style="font-weight: bold;  margin-bottom: 20px; display: inline">基础数据</div>
                        </div>
                        <ul>
                            <li v-for=" item in basicDataList" style="list-style: none;margin-left: -10px">
                                <el-checkbox style="font-weight: normal"
                                             v-model="item.checked"
                                             @change="handleCheckedBasicChange">{{item.name}}</el-checkbox>
                            </li>
                        </ul>
                    </div>
                </el-col>
                <el-col :span="6">
                    <div style="margin-top: 20px">
                        <div >
                            <el-checkbox style="margin-left: 20px"
                                         v-model="systemAllChecked"
                                         @change="handleSystemCheckAllChange"></el-checkbox>
                            <div style="font-weight: bold;  margin-bottom: 20px; display: inline">系统管理</div>
                        </div>
                        <ul>
                            <li v-for=" item in systemList" style="list-style: none;margin-left: -10px">
                                <el-checkbox style="font-weight: normal"
                                             v-model="item.checked"
                                             @change="handleCheckedSystemChange">{{item.name}}</el-checkbox>
                            </li>
                        </ul>
                    </div>
                </el-col>
            </el-row>
            <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
                      :title="errorMsg"
                      type="error"
                      :closable="false"
                      show-icon >
            </el-alert >
            <div slot="footer" class="dialog-footer">
                <el-button @click="modifyDialogVisible = false">取 消</el-button>
                <el-button type="primary" @click="modifyRole">确 定</el-button>
            </div>
        </el-dialog>
        <el-dialog title="提示" v-model="deleteConfirmVisible" size="tiny" >
		  <span >确认要删除[ <b >{{selectedItem.role_name}}</b > ]的角色吗？</span >
		  <span slot="footer" class="dialog-footer" >
		    <el-button @click="deleteConfirmVisible = false" >取 消</el-button >
		    <el-button type="primary" @click="onConfirmDelete" >确 定</el-button >
		  </span >
		</el-dialog >
    </div>
</template>

<script>
    import Vue from 'vue'
    import routes from '../../config/routes'
    let _this
    export default {
        name:"role_manage",
        components: {},
        data () {
            _this = this
            return {
                addRoleURL:HOME + "UserRole/addData",
                modifyRoleURL:HOME + "UserRole/modifyData",
                deleteRoleURL:HOME + "UserRole/deleteData",
                fetchRolesURL:HOME + "UserRole/getRecords",
                fetchRoleCountURL:HOME + "UserRole/getRecordsCount",
                tableData: [],

                isError: false,
                errorMsg: '',
                //分页
                totalPage: 1,
                pageSize: EveryPageNum,//每一页的num
                currentPage:1,
                startRecord: 0,

                roleTypes:[{"role_type":"1", "role_name":"BS"},{"role_type":"0", "role_name":"CS"}],

                //增加对话框
                addDialogVisible: false,
                form: {
                    role_name: "",
                    role_type: "1",
                    comment:"",
                    role_scope:""
                },
                formLabelWidth: '100px',

                //编辑对话框
                modifyDialogVisible: false,
                modifyForm: {
                    id:"",
                    role_name: "",
                    role_type: "",
                    comment:"",
                    role_scope:''
                },

                selectedItem: {},
                deleteConfirmVisible: false,

                //工作管理
                taskList:[],
                //统计查询
                statisticList:[],
                //基础数据
                basicDataList:[],
                //系统管理
                systemList:[],

                taskAllChecked: false,//全选的checkbox是否checked
                statisticAllChecked: false,
                basicAllChecked: false,
                systemAllChecked: false,
            }
        },
        methods: {
            //获取所有role的count
            fetchRoleCount(){
                //alert(this.currentDepartment)
                $.ajax({
                    url: _this.fetchRoleCountURL,
                    type: 'POST',
                    dataType: 'json',
                    data: "",
                    success: function (data) {
                        _this.isError = data.status == 0;
                        if (!_this.isError) {
                            //TODO:
                            let total = parseInt(data.info)
                            _this.totalPage = parseInt(data.info)
                            _this.fetchRoles()
                        } else {
                            _this.isError = true;
                            _this.errorMsg = '获取角色数失败！'
                        }
                    },
                    error: function (info) {
                        _this.isError = true;
                        _this.errorMsg = '服务器访问出错';
                    }
                })
            },
            //获取所有的Roles
            fetchRoles(){
                //alert(this.currentDepartment)
                $.ajax({
                    url: _this.fetchRolesURL,
                    type: 'POST',
                    dataType: 'json',
                    data: {"start_record":_this.startRecord, "page_size":_this.pageSize},
                    success: function (data) {
                        _this.isError = data.status == 0;
                        if (!_this.isError) {
                            //TODO:
                            _this.tableData = data.info
                        } else {
                            showMessage(_this, '获取角色信息失败', 0);
                        }
                    },
                    error: function (info) {
                        showMessage(_this, '服务器访问出错', 0)
                    }
                })
            },
            handleSizeChange(val) {
//        console.log(`每页 ${val} 条`);
            },
            handleCurrentChange(val) {
                this.currentPage = val;
                this.startRecord = this.pageSize * (this.currentPage -1)
                this.fetchRoleCount()
            },
            handleAdd() {
                this.resetStatus()
                this.addDialogVisible = true;
            },

            addRole() {
                //准备角色的操作范围
                this.form.role_scope = this.prepareRoleScopeJson()
                $.ajax({
                    url: _this.addRoleURL,
                    type: 'POST',
                    dataType: 'json',
                    data: _this.form,
                    success: function (data) {
                        _this.isError = data.status == 0;
                        if (!_this.isError) {
                            _this.addDialogVisible = false
                            _this.fetchRoleCount()
                            showMessage(_this, '添加角色成功', 1);
                        } else {
                            _this.isError = true;
                            _this.errorMsg = '添加角色失败！'
                        }
                    },
                    error: function (info) {
                        _this.isError = true;
                        _this.errorMsg = '服务器访问出错';
                    }
                })

            },

            handleEdit(item) {
                this.resetStatus()
                this.modifyForm.id = item.id;
                this.modifyForm.role_name = item.role_name;
                this.modifyForm.role_type = item.role_type;
                this.modifyForm.comment = item.comment;
                //解析scope
                this.prepareScopeJsonToObject(item.role_scope)
                this.modifyDialogVisible = true;
            },

            modifyRole() {
                this.modifyForm.role_scope = this.prepareRoleScopeJson()
                $.ajax({
                    url: _this.modifyRoleURL,
                    type: 'POST',
                    dataType: 'json',
                    data: _this.modifyForm,
                    success: function (data) {
                        _this.isError = data.status == 0;
                        if (!_this.isError) {
                            _this.modifyDialogVisible = false
                            _this.fetchRoles()
                            showMessage(_this, '修改角色成功', 1);
                        } else {
                            _this.isError = true;
                            _this.errorMsg = '修改角色失败！'
                        }
                    },
                    error: function (info) {
                        _this.isError = true;
                        _this.errorMsg = '服务器访问出错！';
                    }
                })

            },
            resetStatus() {
                this.isError = false
                this.errorMsg = false
                let i
                for(i = 0; i<this.taskList.length; i++ ){
                    this.taskList[i].checked = false;
                }
                for(i=0; i<this.basicDataList.length; i++ ){
                    this.basicDataList[i].checked = false;
                }
                for(i=0; i<this.statisticList.length; i++ ){
                    this.statisticList[i].checked = false;
                }
                for(i=0; i<this.systemList.length; i++ ){
                    this.systemList[i].checked = false;
                }

                this.taskAllChecked = false//全选的checkbox是否checked
                this.statisticAllChecked = false
                this.basicAllChecked = false
                this.systemAllChecked = false
            },

            handleDelete(item) {
                _this.selectedItem = copyObject(item);
                _this.deleteConfirmVisible = true;
            },
            onConfirmDelete()
            {
                this.deleteData(_this.selectedItem);
                _this.deleteConfirmVisible = false;
            },

            deleteData(item) {
                $.ajax({
                    url: _this.deleteRoleURL,
                    type: 'POST',
                    dataType: 'json',
                    data: {"id":item.id},
                    success: function (data) {
                        _this.isError = data.status == 0;
                        if (!_this.isError) {
                            showMessage(_this, '删除角色成功', 1);
                            _this.fetchRoles()
                        } else {
                            showMessage(_this, '删除角色失败，请确认是否有用户绑定了该角色！', 0);
                        }
                        _this.deleteConfirmVisible = false;

                    },
                    error: function (info) {
                        showMessage(_this, '服务器访问出错！', 0);
                        _this.deleteConfirmVisible = false;

                    }
                })
            },

            handleTaskCheckAllChange(){
                if(this.taskAllChecked) {
                    for(let i =0; i<this.taskList.length; i++) {
                        this.taskList[i].checked = true;
                    }
                }else {
                    for(let i =0; i<this.taskList.length; i++) {
                        this.taskList[i].checked = false;
                    }
                }
            },
            handleCheckedTaskChange(item) {
                if(this.taskCheckedNum === this.taskList.length) {
                    this.taskAllChecked = true;
                } else {
                    this.taskAllChecked = false;
                }
            },

            handleStatisticCheckAllChange(){
                if(this.statisticAllChecked) {
                    for(let i =0; i<this.statisticList.length; i++) {
                        this.statisticList[i].checked = true;
                    }
                }else {
                    for(let i =0; i<this.statisticList.length; i++) {
                        this.statisticList[i].checked = false;
                    }
                }
            },
            handleCheckedStatisticChange(){
                if(this.taskCheckedNum === this.statisticList.length) {
                    this.statisticAllChecked = true;
                } else {
                    this.statisticAllChecked = false;
                }
            },

            handleBasicCheckAllChange() {
                if(this.basicAllChecked) {
                    for(let i =0; i<this.basicDataList.length; i++) {
                        this.basicDataList[i].checked = true;
                    }
                }else {
                    for(let i =0; i<this.basicDataList.length; i++) {
                        this.basicDataList[i].checked = false;
                    }
                }
            },
            handleCheckedBasicChange() {
                if(this.basicCheckedNum === this.basicDataList.length) {
                    this.basicAllChecked = true;
                } else {
                    this.basicAllChecked = false;
                }
            },

            handleSystemCheckAllChange() {
                if(this.systemAllChecked) {
                    for(let i =0; i<this.systemList.length; i++) {
                        this.systemList[i].checked = true;
                    }
                }else {
                    for(let i =0; i<this.systemList.length; i++) {
                        this.systemList[i].checked = false;
                    }
                }
            },
            handleCheckedSystemChange() {
                if(this.systemCheckedNum === this.systemList.length) {
                    this.systemAllChecked = true;
                } else {
                    this.systemAllChecked = false;
                }
            },

            prepareRoleScopeJson() {
                let result = ""
                let taskArr = []
                let statisticArr = []
                let basicArr = []
                let systemArr = []
                for(let i=0; i<this.taskList.length; i++ ){
                    if(this.taskList[i].checked) {
                        taskArr.push(this.taskList[i].path)
                    }
                }
                for(let i=0; i<this.statisticList.length; i++ ){
                    if(this.statisticList[i].checked) {
                        statisticArr.push(this.statisticList[i].path)
                    }
                }
                for(let i=0; i<this.basicDataList.length; i++ ){
                    if(this.basicDataList[i].checked) {
                        basicArr.push(this.basicDataList[i].path)
                    }
                }

                for(let i=0; i<this.systemList.length; i++ ){
                    if(this.systemList[i].checked) {
                        systemArr.push(this.systemList[i].path)
                    }
                }
                result = JSON.stringify({"task":taskArr, "statistic":statisticArr, "basic":basicArr, "system":systemArr})
                return result
            },

            prepareScopeJsonToObject(scopeStr) {
                if(scopeStr == null) return
                let all = JSON.parse(scopeStr)
                let count = 0;
                for(let i=0; i< this.taskList.length; i++ ){
                    for(let j=0; j<all.task.length; j++ ) {
                        if(this.taskList[i].path == all.task[j]){
                            this.taskList[i].checked = true;
                            count++
                        }
                    }
                }
                if(count == this.taskList.length) {
                    this.taskAllChecked = true
                }

                count = 0;
                for(let i=0; i< this.statisticList.length; i++ ){
                    for(let j=0; j<all.statistic.length; j++ ) {
                        if(this.statisticList[i].path == all.statistic[j]){
                            this.statisticList[i].checked = true;
                            count++
                        }
                    }
                }
                if(count == this.statisticList.length) {
                    this.statisticAllChecked = true
                }

                count = 0;
                for(let i=0; i< this.basicDataList.length; i++ ){
                    for(let j=0; j<all.basic.length; j++ ) {
                        if(this.basicDataList[i].path == all.basic[j]){
                            this.basicDataList[i].checked = true;
                            count++
                        }
                    }
                }
                if(count == this.basicDataList.length) {
                    this.basicAllChecked = true
                }

                count = 0;
                for(let i=0; i< this.systemList.length; i++ ){
                    for(let j=0; j<all.system.length; j++ ) {
                        if(this.systemList[i].path == all.system[j]){
                            this.systemList[i].checked = true;
                            count++
                        }
                    }
                }
                if(count == this.systemList.length) {
                    this.systemAllChecked = true
                }
            }

        },
        computed: {
            taskCheckedNum() {
                let num =0;
                for(let i=0; i<this.taskList.length; i++){
                    if (this.taskList[i].checked) {
                        num = num + 1
                    }
                }
                return num
            },
            statisticCheckedNum() {
                let num =0;
                for(let i=0; i<this.statisticList.length; i++){
                    if (this.statisticList[i].checked) {
                        num = num + 1
                    }
                }
                return num
            },
            basicCheckedNum() {
                let num =0;
                for(let i=0; i<this.basicDataList.length; i++){
                    if (this.basicDataList[i].checked) {
                        num = num + 1
                    }
                }
                return num
            },
            systemCheckedNum() {
                let num =0;
                for(let i=0; i<this.systemList.length; i++){
                    if (this.systemList[i].checked) {
                        num = num + 1
                    }
                }
                return num
            }
        },

        filters:{
            filterRoleType(role_type) {
                if(role_type == 1) {
                    return "BS"
                } else if(role_type == 0) {
                    return "CS"
                }
            }
        },

        created: function () {

            //读取路由信息
            for(let i=0; i<routes.length; i++) {
                if(routes[i].path == "/home") {
                    for(let j=0; j<routes[i].children.length; j++) {
                        switch (routes[i].children[j].path) {
                            case "/home/task":
                                for(let k=0; k<routes[i].children[j].children.length; k++) {
                                    _this.taskList.push({"path":routes[i].children[j].children[k].path,
                                        "name":routes[i].children[j].children[k].meta,
                                        "checked":0})
                                }
                                break;
                            case "/home/statistics":
                                for(let k=0; k< routes[i].children[j].children.length; k++) {
                                    _this.statisticList.push({"path":routes[i].children[j].children[k].path,
                                        "name":routes[i].children[j].children[k].meta,
                                        "checked":0})
                                }
                                break;
                            case "/home/basic_data":
                                for(let k=0; k< routes[i].children[j].children.length; k++) {
                                    _this.basicDataList.push({"path":routes[i].children[j].children[k].path,
                                        "name":routes[i].children[j].children[k].meta,
                                        "checked":0})
                                }
                                break;
                            case "/home/system":
                                for(let k=0; k< routes[i].children[j].children.length; k++) {
                                    _this.systemList.push({"path":routes[i].children[j].children[k].path,
                                        "name":routes[i].children[j].children[k].meta,
                                        "checked":0})//checked状态用于存储是否被选中的状态
                                }
                                break;
                            default :
                                break
                        }
                    }
                    break;
                }
            }
            this.fetchRoleCount()
        },
        mounted: function () {

        },
    }

</script>
<style>
    .breadcrumb-container {
        padding: 15px;
        background-color: #E5E9F2;
    }
    .title {
        width: 200px;
        float: left;
        color: #475669;
        font-weight: bold
    }
</style>
