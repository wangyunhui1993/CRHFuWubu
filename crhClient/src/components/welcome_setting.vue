<template >
    <div >
        <el-row style="margin-top: 20px; margin-left: 20px" >
            <el-col :span="2" >
                <el-button
		                size="normal"
		                type="primary"
		                @click="addLED" >增加一屏
                </el-button >
            </el-col >
            <el-col :span="2" >
                <el-button
		                :disabled="multipleSelection.length==0"
		                size="normal"
		                type="danger"
		                @click="deleteSelection" >删除所选
                </el-button >
            </el-col >
            <el-col :span="2" >
                <el-button
		                :disabled="sendBtnStatus"
		                size="normal"
		                type="primary"
		                @click="sendAllLED" >发送数据
                </el-button >
            </el-col >
        </el-row >
        <div class="well" style=" margin-top: 20px" >
            <el-table
		            empty-text="LED信息为空"
		            :data="ledInfo"
		            tooltip-effect="dark"
		            border
		            @selection-change="handleSelectionChange"
		            style="width: 100%" >
                <el-table-column
		                type="selection"
		                width="55" >
                </el-table-column >
                <el-table-column
		                min-width="30"
		                prop="id"
		                label="序号" >
                    <template scope="scope" >
                        <span >{{scope.$index +1}}</span >
                    </template >
                </el-table-column >
                <el-table-column
		                min-width="160"
		                prop="content"
		                label="内容" >
                </el-table-column >
                <el-table-column
		                min-width="50"
		                prop="font"
		                label="字体" >
                    <template scope="scope" >
                        <span >{{scope.row.font}}</span >
                    </template >
                </el-table-column >
                <el-table-column
		                min-width="50"
		                prop="color"
		                label="颜色" >
                    <template scope="scope" >
                        <span >{{scope.row.color}}</span >
                    </template >
                </el-table-column >
                <el-table-column
		                width="100"
		                prop="display"
		                label="是否显示" >
                    <template scope="scope" >
                        <!--<el-checkbox true-label='1' false-label="0" v-model="scope.row.display"></el-checkbox>-->
                        <span ><strong >{{displayName(scope.row.display)}}</strong ></span >
                    </template >
                </el-table-column >
                <el-table-column label="操作" min-width="50" >
                    <template scope="scope" >
                        <el-button
		                        size="small"
		                        type="primary"
		                        @click="onEdit(scope.row)" >编辑</el-button >
                        <el-button
		                        size="small"
		                        type="warning"
		                        @click="previewLED(scope.row)" >预览</el-button >
                    </template >
                </el-table-column >
            </el-table >
        </div >
        <el-dialog title="增加LED项" v-model="addLEDVisible" close-on-click-modal >
            <el-form >
                <el-col :span="24" >
                    <el-form-item label="内容：" :label-width="formLabelWidth" >
                        <el-input
		                        style="width: 300px"
		                        type="textarea"
		                        :rows="3"
		                        placeholder="请输入内容"
		                        v-model="submitData.content" >
                        </el-input >
                    </el-form-item >
                </el-col >
                <el-col :span="24" >
                    <el-form-item label="字体：" :label-width="formLabelWidth" >
                        <el-select v-model="submitData.font" clearable
                                   style="width: 300px" >
                            <el-option
		                            v-for="item in allFonts"
		                            :label="item"
		                            :value="item" >
                            </el-option >
                        </el-select >
                    </el-form-item >
                </el-col >
                <el-col :span="24" >
                    <el-form-item label="颜色：" :label-width="formLabelWidth" >
                        <el-select v-model="submitData.color" clearable
                                   style="width: 300px" >
                            <el-option
		                            v-for="item in allColors"
		                            :label="item"
		                            :value="item" >
                            </el-option >
                        </el-select >
                    </el-form-item >
                </el-col >
                <el-col :span="24" >
                    <el-form-item label="是否显示：" :label-width="formLabelWidth" >
                        <el-select v-model="submitData.display" clearable
                                   style="width: 300px" >
                            <el-option
		                            v-for="item in display"
		                            :label="item.name"
		                            :value="item.value" >
                            </el-option >
                        </el-select >
                    </el-form-item >
                </el-col >
            </el-form >
            <span slot="footer" class="dialog-footer" >
                <el-button @click="addLEDVisible = false" >退 出</el-button >
                <el-button type="primary" @click="onConfirmAddLED" >保 存</el-button >
            </span >
        </el-dialog >
        <el-dialog title="编辑LED项" v-model="editLEDVisible" close-on-click-modal >
            <el-form >
                <el-col :span="24" >
                    <el-form-item label="内容：" :label-width="formLabelWidth" >
                        <el-input
		                        style="width: 300px"
		                        type="textarea"
		                        :rows="3"
		                        placeholder="请输入内容"
		                        v-model="submitData.content" >
                        </el-input >
                    </el-form-item >
                </el-col >
                <el-col :span="24" >
                    <el-form-item label="字体：" :label-width="formLabelWidth" >
                        <el-select v-model="submitData.font" clearable
                                   style="width: 300px" >
                            <el-option
		                            v-for="item in allFonts"
		                            :label="item"
		                            :value="item" >
                            </el-option >
                        </el-select >
                    </el-form-item >
                </el-col >
                <el-col :span="24" >
                    <el-form-item label="颜色：" :label-width="formLabelWidth" >
                        <el-select v-model="submitData.color" clearable
                                   style="width: 300px" >
                            <el-option
		                            v-for="item in allColors"
		                            :label="item"
		                            :value="item" >
                            </el-option >
                        </el-select >
                    </el-form-item >
                </el-col >
                <el-col :span="24" >
                    <el-form-item label="是否显示：" :label-width="formLabelWidth" >
                        <el-select v-model="submitData.display" clearable
                                   style="width: 300px" >
                            <el-option
		                            v-for="item in display"
		                            :label="item.name"
		                            :value="item.value" >
                            </el-option >
                        </el-select >
                    </el-form-item >
                </el-col >
            </el-form >
            <span slot="footer" class="dialog-footer" >
                <el-button @click="editLEDVisible = false" >退 出</el-button >
                <el-button type="primary" @click="onEditSave" >保 存</el-button >
            </span >
        </el-dialog >
        <el-dialog title="提示" v-model="deleteConfirmVisible" size="tiny" >
            <span >确认要删除选择的作业任务吗？</span >
            <span slot="footer" class="dialog-footer" >
	    <el-button @click="deleteConfirmVisible = false" >取 消</el-button >
	    <el-button type="primary" @click="onConfirmDelete" >确 定</el-button >
	  </span >
        </el-dialog >
    </div >
</template >
<script >
    import Vue from 'vue';
    var _this;
    export default {
	    name: "welcome_setting",
	    components: {},
	    data () {
		    _this = this;
		    return {
			    addLedURL: HOME + "CsLed/addData",
			    modifyLedURL: HOME + "CsLed/modifyData",
			    deleteLedURL: HOME + "CsLed/deleteData",
			    fetchLedURL: HOME + "CsLed/getRecords",
			    formLabelWidth: "100px",
			    addLEDVisible: false,
			    editLEDVisible: false,
			    deleteConfirmVisible: false,
			    userInfo: "",
			    department: [],
			    ledInfo: [],
			    oldLedInfo: [],
			    submitData: {
				    "id": "",
				    "content": "",
				    "font": "",
				    "color": "",
				    "display": ""
			    },
			    allFonts: ["12*12", "16*16", "24*24", "32*32"],
			    allColors: ["红色", "黄色", "绿色"],
			    display: [{"name": "是", "value": "1"}, {"name": "否", "value": "0"}],
			    multipleSelection: [],
                sendingData:[]//for LED display
		    }
	    },

        methods: {
            handleSelectionChange(val) {
                this.multipleSelection = val;
                //alert(JSON.stringify(this.multipleSelection));
            },
            deleteSelection() {
                if(this.multipleSelection.length == 0) {
                    showMessage(_this, '选择项为空！', 0);
                } else {
                    this.deleteConfirmVisible = true;
                }
            },
            onConfirmDelete() {
                $.ajax({
                    url: _this.deleteLedURL,
                    type: 'POST',
                    dataType: 'json',
                    data: {"data": _this.multipleSelection},
                    success: function (data) {
                        _this.isError = data.status == 0;
                        if (!_this.isError) {
                            showMessage(_this, '删除成功！', 1);
                            _this.deleteConfirmVisible = false;
                            _this.fetchCSLed();
                        } else {
                            showMessage(_this, '删除失败！', 0);
                        }
                    },
                    error: function (info) {
                        showMessage(_this, '服务器访问出错！', 0);
                    }
                })
            },

		    onEdit(item) {
			    this.editLEDVisible = true;
			    this.submitData = copyObject(item);
		    },

            previewLED(item) {
              this.sendingData = this.sendingData.splice(0, this.sendingData);//clear data
              this.sendingData.push(item);
              this.onSendData();
            },

            sendAllLED() {
              this.sendingData = this.sendingData.splice(0, this.sendingData);//clear data
              for(var i=0; i<this.ledInfo.length; i++ ) {
                if(parseInt(this.ledInfo[i].display)) {
                  this.sendingData.push(this.ledInfo[i]);
                }
              }
              this.onSendData();
            },

		    onEditSave() {
			    this.submitData.department_no = _this.currentDepartmentStr;
			    $.ajax({
				    url: _this.modifyLedURL,
				    type: 'POST',
				    dataType: 'json',
				    data: _this.submitData,
				    success: function (data) {
					    _this.isError = data.status == 0;
					    if (!_this.isError) {
						    showMessage(_this, '编辑LED显示成功！', 1);
						    _this.editLEDVisible = false;
						    _this.fetchCSLed();
					    } else {
						    showMessage(_this, '编辑LED显示失败！', 0);
					    }
				    },
				    error: function (info) {
					    showMessage(_this, '服务器访问出错！', 0);
				    }
			    })
		    },

		    addLED() {

			    this.submitData={
				    "id": "",
				    "content": "",
				    "font": "",
				    "color": "",
				    "display": ""
			    };
			    this.addLEDVisible = true
		    },
		    onConfirmAddLED() {
			    this.submitData.department_no = _this.currentDepartmentStr;
			    $.ajax({
				    url: _this.addLedURL,
				    type: 'POST',
				    dataType: 'json',
				    data: _this.submitData,
				    success: function (data) {
					    _this.isError = data.status == 0;
					    if (!_this.isError) {
						    showMessage(_this, '添加LED显示成功！', 1);
						    _this.addLEDVisible = false;
						    _this.fetchCSLed();
					    } else {
						    showMessage(_this, '添加LED显示失败！', 0);
					    }
				    },
				    error: function (info) {
					    showMessage(_this, '服务器访问出错！', 0);
				    }
			    })
		    },
		    fetchCSLed() {
			    $.ajax({
				    url: _this.fetchLedURL,
				    type: 'POST',
				    dataType: 'json',
				    data: {"department_no": _this.currentDepartmentStr},
				    success: function (data) {
					    _this.isError = data.status == 0;
					    if (!_this.isError) {
						    _this.ledInfo = data.info;
						    _this.oldLedInfo = _this.ledInfo.slice(0);
					    } else {
						    showMessage(_this, '获取作业屏内容失败！', 0);
					    }
				    },
				    error: function (info) {
					    showMessage(_this, '服务器访问出错！', 0);
				    }
			    })
		    },
		    onSendData()
		    {
		    	//Refer to 'config/SocketConvention' for the data format
			    var sendContent = {
				    TYPE: 'LED',
				    IP: LED_IP,
				    PORT: LED_PORT,
				    LEDDATA: [],
			    };

			    var data = new Array();
			    for (var i = 0; i < this.sendingData.length; i++) {
				    var item = this.sendingData[i];
				    //if (parseInt(item.display) > 0) {
					    data.push(item.font + "&&" + item.color + "&&" + item.content);
				    //}
			    }

			    if (data.length > 0) {
				    sendContent.LEDDATA = data;
                    //alert(JSON.stringify(sendContent))
				    SendData(sendContent);
			    }
		    },
		    displayName(value) {
			    if (parseInt(value)) {
				    return "是"
			    } else {
				    return "否"
			    }
		    }
	    },

	    computed: {
		    currentDepartmentStr(){
			    let $res = "";

			    if (this.userInfo.department_no == "001") {
				    $res = "";//返回全部
			    } else {
				    $res = this.userInfo.department_no;
			    }
			    return $res;
		    },
   	        cancelBtnStatus() {
                if(this.multipleSelection.length > 0) {
                    return false;
                } else {
                    return true;
                }
            },
            sendBtnStatus() {
                var result = true;
                for(var i=0; i<this.ledInfo.length && result; i++ ) {
                    if(parseInt(this.ledInfo[i].display)) {
                        result = false;
                        break;
                    }
                }
                return result;
            }
        },

	    created: function () {
		    this.userInfo = JSON.parse(sessionStorage.getItem('user'));
		    //根据用户获取部分信息
		    if (this.userInfo != null && this.userInfo.department_no != "001") {
			    //非公司管理员
			    this.department.push({
				    "department_no": this.userInfo.department_no,
				    "department_name": this.userInfo.department_name
			    })
		    } else {
			    this.department = JSON.parse(sessionStorage.getItem('departments'));
		    }
		    this.fetchCSLed();
	    },
	    mounted: function () {
		    WebSocketInstance();
	    },
	    destroyed: function () {
		    disposeWebSocket();
		    console.log("timer destroyed");
	    }

    }
    var ws;
    function WebSocketInstance() {
	    try {
		    ws = new WebSocket(SOCKECT_ADDR);
		    ws.onopen = function (event) {
			    console.log("已经与服务器建立了连接\r\n当前连接状态：" + ws.readyState);
		    };
		    ws.onmessage = function (event) {
			    console.log("接收到服务器发送的数据：\r\n" + event.data);
			    var obj = JSON.parse(event.data);
			    if (obj.TYPE == "LED") {
				    if (obj.success == "1") {//report led send error!.
					    showMessage(_this, "发送成功！", 1);
				    } else {
					    showMessage(_this, "发送失败！", 0);
				    }
			    }
		    };
		    ws.onclose = function (event) {
			    console.log("已经与服务器断开连接\r\n当前连接状态：" + ws.readyState);
		    };
		    ws.onerror = function (event) {
			    console.log("WebSocket异常！" + event.toString());
		    };
	    } catch (ex) {
		    console.log(ex.message);
	    }
    }

    function SendData(content) {
	    try {
		    if (ws.readyState == WebSocket.OPEN) {
			    ws.send(JSON.stringify(content));
		    }
	    } catch (ex) {
		    console.log(ex.message);
	    }
    }
    function disposeWebSocket() {
	    ws.close();
    }

</script >
<style lang="scss" scoped >

</style >