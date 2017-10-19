<template >
    <div class="bg_task_solid_layout" >
       <table style="width: 100%;height: 100%;text-align: center;" @click="onClickTable" >
           <tr style="vertical-align: text-top;" >
               <td colspan="3" >
                   <div class="titleDiv" >
                   {{titleName}}作业立体图
                   </div >
                   <table class="smallTable" @click="onClickSmallTable" >
                        <tr >
                            <td v-for="(item, index) in trainTasks" :class="item.isSelected|convertSelected" >
                                <div @click="onTaskDetail(index,item)" style="cursor: pointer; margin-left: 5px;" >
                                    <div class="col-sm-1" >
                                        <div style="background-color: yellow; width: 70px;margin-left: -5px;" >
                                            <div style="text-align: center;font-size: 20px;font-weight: bold;margin: 10px;" >
                                                   {{item.trainName}}
                                            </div >
                                        </div >
                                        <div :class="item.isElectric|converterElectricClass"
                                             style="zoom: 60%;margin-left: 20px;" ></div >
                                        <div style="text-align: center;font-size: 20px;font-weight: bold;width: 50px;" >
                                           {{item.isElectric|converterElectricState}}
                                        </div >
                                        <div style="margin-top: 5px;margin-bottom: 5px;" >
                                           <!--<img src="../assets/img/gudao_v.png" style="zoom: 80%;margin-left: 15px;" >-->
                                              <img v-if="item.isWorking" src="../assets/img/train_v.png" style="zoom: 80%;margin-left: 15px;" >
                                              <img v-else src="../assets/img/gudao_v.png" style="zoom: 80%;margin-left: 15px;" >
                                        </div >
                                   </div >
                               </div >
                            </td >
                        </tr >
                   </table >

               </td >

           </tr >
           <tr style="height:50%;" >
               <td style="width: 80px;" >
                   <div style="background-color: yellow; width: 85px;margin-left: 20px;" >
                       <div style="text-align: center;font-size: 30px;font-weight: bold;margin: 10px;" >
                           {{trainInfo.trainName}}
                       </div >
                       <div style="text-align: center;font-size: 20px;font-weight: bold;margin: 10px;" >
                           {{trainInfo.trainName | filterTrainColumn}}
                       </div >
                       <div style="text-align: center;font-size: 16px;font-weight: bold;margin: 10px;" >
                           {{trainInfo.trainName | filterTaskDate}}
                       </div >
                   </div >
               </td >
               <td >
                <table width="100%;">
                   <tr >
                       <td style="padding-left: 0%">
                           <div v-for="item in trainInfo.leftUp" style="float: left; margin-left: 10px " >
                               <div class="contentContainer" style="float: left" v-for=" itemContent in item.task_content">
                                   <div style="background-color: red ;" >
                                       <div>
                                           <div style="color: white; padding: 3px">{{itemContent}}</div >
                                       </div >
                                   </div >
                                   <div style="min-height:80px">
                                       <div
                                           v-for=" itemPerson in item.person" >
                                           <div style="color:white; font-weight: bold; padding: 2px">{{itemPerson | filterUserName}}</div >
                                       </div>
                                   </div >
                               </div>
                           </div >
                       </td >
                       <td  style="padding-right: 0%">
                           <div v-for="item in trainInfo.rightUp" style="display: inline;float: right" >
                               <div class="contentContainer"  style="display: inline;float: right" v-for=" itemContent in item.task_content" >
                                   <div style="background-color: red ;" >
                                       <div>
                                           <div style="color: white; padding: 3px">{{itemContent}}</div >
                                       </div >
                                   </div >
                                   <div style="min-height: 80px">
                                       <div
                                               v-for=" itemPerson in item.person" >
                                           <div style="color:white; font-weight: bold; padding: 2px">{{itemPerson | filterUserName}}</div >
                                       </div>
                                   </div >
                               </div>
                           </div >
                       </td >
                   </tr >
                   <tr>
                       <td colspan="3" >
                           <div style="margin-left: 40px;margin-right: 40px;" >
                               <!--<img src="../assets/img/gudao_h.png" style="width: 100%;" >-->
                                <img v-if="trainInfo.isWorking" src="../assets/img/train_h.png" style="zoom:160%">
                                <img v-else src="../assets/img/gudao_h.png" style="width: 100%;" >
                           </div >
                       </td >
                   </tr>
                   <tr >
                       <td style="padding-left: 0%">
                           <div v-for="item in trainInfo.leftDown" style="float: left;margin-left: 10px " >
                               <div class="contentContainer" style="float: left"  v-for=" itemContent in item.task_content" >
                                   <div style="background-color: red ;" >
                                       <div>
                                           <div style="color: white; padding: 3px">{{itemContent}}</div >
                                       </div >
                                   </div >
                                   <div style="min-height: 80px">
                                       <div
                                               v-for=" itemPerson in item.person" >
                                           <div style="color:white; font-weight: bold; padding: 2px">{{itemPerson | filterUserName}}</div >
                                       </div>
                                   </div >
                               </div>
                           </div >
                       </td >
                       <td style="padding-right: 0%">
                           <div v-for="item in trainInfo.rightDown" style="float: right" >
                               <div class="contentContainer"  style="display: inline;float: right" v-for=" itemContent in item.task_content" >
                                   <div style="background-color: red ;" >
                                       <div>
                                           <div style="color: white; padding: 3px">{{itemContent}}</div >
                                       </div >
                                   </div >
                                   <div style="min-height: 80px">
                                       <div
                                               v-for=" itemPerson in item.person" >
                                           <div style="color:white; font-weight: bold; padding: 2px">{{itemPerson | filterUserName}}</div >
                                       </div>
                                   </div >
                               </div>
                           </div >
                       </td >
                   </tr >
                   </table >
               </td >
               <td style="width: 80px;" >
                   <div class="col-sm-2" style="text-align: right;margin-left: 10px;margin-right: 5px;" >
                       <div :class="trainInfo.isElectric|converterElectricClass" ></div >
                       <div style="text-align: center;font-size: 20px;font-weight: bold;width: 50px;" >
                           {{trainInfo.isElectric|converterElectricState}}
                       </div >
                   </div >
               </td >
           </tr >
           <tr style="height:30%" >
               <td colspan="3" style="vertical-align: bottom;" >
                   <div class="col-sm-2" >
                      <div class="trainSide" style="text-align: left;" >
                          {{trainInfo.leftSide}}
                      </div >
                   </div >
                   <div class="col-sm-10" >
                      <div class="trainSide" style="text-align: right;" >
                          {{trainInfo.rightSide}}
                      </div >
                   </div >
               </td >
           </tr >
       </table >
    </div >
</template >
<script >
  import Vue from 'vue'
  var _this;
  var timerInterval;
  export default {
	  name: "task_solid_layout",
	  components: {},
	  data () {
		  _this = this;
		  return {
			  fetchCSTaskURL: HOME + "CsTask/getRecords",
              fetchUsersUrl: HOME + "User/getRecords",
              getPortsURL: HOME + "TaskPort/getRecords",
              queryDataUrl: HOME + "StationTrack/getRecords",
			  timerInterval: 2, //unit is second
			  userInfo: {},
			  department: [],
			  titleName: '',
			  electricData: [],
			  trainInfo: {
				  id: '1',
				  index: 0,
				  isElectric: false,
				  trainName: 'D3',
				  leftSide: '左端',
				  rightSide: '右端',
				  isSelected: true,
				  leftUp: [],
				  leftDown: [],
				  rightUp: [],
				  rightDown: []

			  },
			  trainTasks: [],
              taskPlans:[],
			  isPauseRefresh: false,
			  isClickSmallTable: false,
			  info: [],
              allUsers:[],
              portName:"",
              stationTracks:{},
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
	  },
	  filters: {
		  converterElectricState: function (isTrue) {
			  return isTrue == true ? "有电" : "无电";
		  },
		  converterElectricClass: function (isTrue) {
			  return isTrue == true ? "has_electric" : "no_electric";
		  },
		  convertSelected: function (isTrue) {
			  return isTrue == true ? "selectedTrain" : "";
		  },
		  convertImage_V: function (isWorking) {
			  return isWorking == true ? '/../assets/img/train_v.png' : '/../assets/img/gudao_v.png';
		  },
		  convertImage_H: function (isWorking) {
			  return isWorking == true ? '../assets/img/train_h.png' : '../assets/img/gudao_h.png';
		  },
          filterUserName(account) {
              let result = '';
              for(let i=0; i< _this.allUsers.length; i++) {
                  if(account == _this.allUsers[i].account) {
                      result = _this.allUsers[i].name;
                      break;
                  }
              }
              return result;
          },
          filterTrainColumn(stationName) {
              for(var i=0; i< _this.taskPlans.length; i++) {
                  if(_this.taskPlans[i].station_track_name = stationName) {
                      return _this.taskPlans[i].train_column_name;
                  }
              }
          },
          filterTaskDate(stationName) {
              for(var i=0; i< _this.taskPlans.length; i++) {
                  if(_this.taskPlans[i].station_track_name = stationName) {
                      return _this.taskPlans[i].task_date;
                  }
              }
		  }
	  },
	  methods: {
          getPorts(){
              $.ajax({
                  url: _this.getPortsURL,
                  type: 'POST',
                  dataType: 'json',
                  data: {"department_no": _this.currentDepartmentStr},
                  success: function (data) {
                      if (data.status) {
                          if(data.info != null && data.info != "") {
                              _this.portName = data.info;
                          }
                      }
                  },
                  error: function (info) {
                      showMessage(_this, '服务器访问出错！', 0);
                  }
              })
          },
		  onTaskDetail: function (index, item) {
			  console.log("onTaskDetail");
			  _this.isPauseRefresh = true;
			  _this.resetIsSelected();
			  _this.trainTasks[index].isSelected = true;
			  _this.trainInfo = copyObject(item);
		  },
		  resetIsSelected: function () {
			  for (var i = 0; i < _this.trainTasks.length; i++) {
				  _this.trainTasks[i].isSelected = false;
			  }
		  },
		  onClickTable: function () {
			  console.log("onClickTable");
			  if (!_this.isClickSmallTable)
				  _this.isPauseRefresh = false;
			  _this.isClickSmallTable = false;

		  },
		  onClickSmallTable: function () {
			  console.log("onClickSmallTable");
			  _this.isClickSmallTable = true;
		  },
		  toDisplay() {
			  for (var i = 0; i < this.info.length; i++) {
				  var item = {
					  index: i,
					  id: i + 1,
					  isElectric: false,
					  trainName: this.info[i].station,
					  leftSide: '左端',
					  rightSide: '右端',
					  isSelected: false,
					  leftUp: this.info[i].leftUp,
					  leftDown: this.info[i].leftDown,
					  rightUp: this.info[i].rightUp,
					  rightDown: this.info[i].rightDown,
				  };
				  item.isElectric = this.electricData[this.info[i].station];
				  item.leftSide = this.portName ? this.portName.a_leader : item.leftSide;
				  item.rightSide = this.portName ? this.portName.b_leader : item.rightSide;
				  item.isWorking = !isEmptyArray(item.leftUp) || !isEmptyArray(item.leftDown) || !isEmptyArray(item.rightUp) || !isEmptyArray(item.rightDown);
				  _this.trainTasks.push(item);
			  }
			  _this.trainTasks[0].isSelected = true;
			  _this.trainInfo = copyObject(_this.trainTasks[0]);
              var defaultTime = 20;
              if(JSON.parse(sessionStorage.getItem('loop_time'))) {
                  defaultTime = JSON.parse(sessionStorage.getItem('loop_time'));
              }
			  timerInterval = setInterval(function refreshDetail() {
				  if (_this.isPauseRefresh == true) {
					  console.log("isPauseRefresh == true")
					  return;
				  }
				  var showIndex = _this.trainInfo.index;
				  showIndex++;
				  if (showIndex == _this.trainTasks.length) {
					  showIndex = 0;
                      if(checkAutoDisplay(location.href)) {
                          _this.$router.go(-2);
                      }
				  }
				  _this.resetIsSelected();
				  _this.trainTasks[showIndex].isSelected = true;
				  _this.trainInfo = copyObject(_this.trainTasks[showIndex]);
				  console.log("timer run");
			  }, defaultTime * 1000);//定时器
		  },

		  prepareData(data) {
			  var taskPlans = [];
			  for (var i = 0; i < data.length; i++) {
				  for (var j = 0; j < data[i].taskPlans.length; j++) {
					  var found = false;
					  for (var k = 0; k < taskPlans.length && !found; k++) {
						  if (taskPlans[k].task_number == data[i].taskPlans[j].task_number) {
							  found = true;
						  }
					  }
					  if (!found) {
						  taskPlans.push(data[i].taskPlans[j]);
					  }

				  }
			  }
			  this.taskPlans = taskPlans;

			  for (var j = 0; j < taskPlans.length; j++) {
				  var found = false;
				  for (var k = 0; k < this.info.length && !found; k++) {
					  if (this.info[k].station == taskPlans[j].station_track_name) {
						  //alert(this.info[k].station + taskPlans[j].station_track_name)
						  var tmpLeft = {
							  "task_content": taskPlans[j].task_content_list,
							  "person": []
						  };
						  var tmpRight = {
							  "task_content": taskPlans[j].task_content_list,
							  "person": []
						  };

						  if (taskPlans[j].a_left) {
							  for (var n = 0; n < taskPlans[j].a_left.length; n++) {
								  if (tmpLeft.person.indexOf(taskPlans[j].a_left[n]) == -1) {
									  tmpLeft.person.push(taskPlans[j].a_left[n])
								  }
							  }
						  }

						  if (taskPlans[j].b_left) {
							  for (var n = 0; n < taskPlans[j].b_left.length; n++) {
								  if (tmpLeft.person.indexOf(taskPlans[j].b_left[n]) == -1) {
									  tmpLeft.person.push(taskPlans[j].b_left[n])
								  }
							  }
						  }

						  if (taskPlans[j].a_leader) {
							  for (var n = 0; n < taskPlans[j].a_leader.length; n++) {
								  if (tmpLeft.person.indexOf(taskPlans[j].a_leader[n]) == -1) {
									  tmpLeft.person.push(taskPlans[j].a_leader[n])
								  }
							  }
						  }

						  if (taskPlans[j].a_quality) {
							  for (var n = 0; n < taskPlans[j].a_quality.length; n++) {
								  if (tmpLeft.person.indexOf(taskPlans[j].a_quality[n]) == -1) {
									  tmpLeft.person.push(taskPlans[j].a_quality[n])
								  }
							  }
						  }

						  if (taskPlans[j].a_right) {
							  for (var n = 0; n < taskPlans[j].a_right.length; n++) {
								  if (tmpRight.person.indexOf(taskPlans[j].a_right[n]) == -1) {
									  tmpRight.person.push(taskPlans[j].a_right[n])
								  }
							  }
						  }
						  //if(data[i].taskPlans[j].a_right ) this.info[k].rightUp.push(data[i].taskPlans[j].a_right);
						  if (taskPlans[j].b_right) {
							  for (var n = 0; n < taskPlans[j].b_right.length; n++) {
								  if (tmpRight.person.indexOf(taskPlans[j].b_right[n]) == -1) {
									  tmpRight.person.push(taskPlans[j].b_right[n])
								  }
							  }
						  }
						  if (taskPlans[j].b_leader) {
							  for (var n = 0; n < taskPlans[j].b_leader.length; n++) {
								  if (tmpRight.person.indexOf(taskPlans[j].b_leader[n]) == -1) {
									  tmpRight.person.push(taskPlans[j].b_leader[n])
								  }
							  }
						  }
						  if (taskPlans[j].b_quality) {
							  for (var n = 0; n < taskPlans[j].b_quality.length; n++) {
								  if (tmpRight.person.indexOf(taskPlans[j].b_quality[n]) == -1) {
									  tmpRight.person.push(taskPlans[j].b_quality[n])
								  }
							  }
						  }
						  if (this.info[k].leftUp.length <= this.info[k].leftDown.length) {
							  this.info[k].leftUp.push(tmpLeft);
						  } else {
							  this.info[k].leftDown.push(tmpLeft);
						  }
						  if (this.info[k].rightUp.length <= this.info[k].rightDown.length) {
							  this.info[k].rightUp.push(tmpRight);
						  } else {
							  this.info[k].rightDown.push(tmpRight);
						  }

						  found = true;
					  }
				  }
				  if (!found) {
					  var temp = {
						  "station": taskPlans[j].station_track_name,
						  "leftUp": [],
						  "leftDown": [],
						  "rightUp": [],
						  "rightDown": []
					  };
//                          if(j%2 == 0) {
					  var tmpLeft = {
						  "task_content": taskPlans[j].task_content_list,
						  "person": []
					  };
					  var tmpRight = {
						  "task_content": taskPlans[j].task_content_list,
						  "person": []
					  };
					  if (taskPlans[j].a_left) {
						  for (var n = 0; n < taskPlans[j].a_left.length; n++) {
							  if (tmpLeft.person.indexOf(taskPlans[j].a_left[n]) == -1) {
								  tmpLeft.person.push(taskPlans[j].a_left[n]);
							  }
						  }
					  }

					  if (taskPlans[j].b_left) {
						  for (var n = 0; n < taskPlans[j].b_left.length; n++) {
							  if (tmpLeft.person.indexOf(taskPlans[j].b_left[n]) == -1) {
								  tmpLeft.person.push(taskPlans[j].b_left[n]);
							  }
						  }
					  }

					  if (taskPlans[j].a_leader) {
						  for (var n = 0; n < taskPlans[j].a_leader.length; n++) {
							  if (tmpLeft.person.indexOf(taskPlans[j].a_leader[n]) == -1) {
								  tmpLeft.person.push(taskPlans[j].a_leader[n]);
							  }
						  }
					  }

					  if (taskPlans[j].a_quality) {
						  for (var n = 0; n < taskPlans[j].a_quality.length; n++) {
							  if (tmpRight.person.indexOf(taskPlans[j].a_quality[n]) == -1) {
								  tmpRight.person.push(taskPlans[j].a_quality[n]);
							  }
						  }
					  }
					  if (taskPlans[j].a_right) {
						  for (var n = 0; n < taskPlans[j].a_right.length; n++) {
							  if (tmpRight.person.indexOf(taskPlans[j].a_right[n]) == -1) {
								  tmpRight.person.push(taskPlans[j].a_right[n]);
							  }
						  }
					  }

					  if (taskPlans[j].b_right) {
						  for (var n = 0; n < taskPlans[j].b_right.length; n++) {
							  if (tmpRight.person.indexOf(taskPlans[j].b_right[n]) == -1) {
								  tmpRight.person.push(taskPlans[j].b_right[n]);
							  }
						  }
					  }

					  if (taskPlans[j].b_leader) {
						  for (var n = 0; n < taskPlans[j].b_leader.length; n++) {
							  if (tmpRight.person.indexOf(taskPlans[j].b_leader[n]) == -1) {
								  tmpRight.person.push(taskPlans[j].b_leader[n]);
							  }
						  }
					  }

					  if (taskPlans[j].b_quality) {
						  for (var n = 0; n < taskPlans[j].b_quality.length; n++) {
							  if (tmpRight.person.indexOf(taskPlans[j].b_quality[n]) == -1) {
								  tmpRight.person.push(taskPlans[j].b_quality[n]);
							  }
						  }
					  }

					  if (temp.leftUp.length <= temp.leftDown.length) {
						  temp.leftUp.push(tmpLeft);
					  } else {
						  temp.leftDown.push(tmpLeft);
					  }
					  if (temp.rightUp.length <= temp.rightDown.length) {
						  if (tmpRight.person.length > 0) {
							  temp.rightUp.push(tmpRight);
						  }
					  } else {
						  if (tmpRight.person.length > 0) {
							  temp.rightDown.push(tmpRight);
						  }
					  }
					  //alert(JSON.stringify(temp))
					  this.info.push(temp)
				  }
			  }
			  for(var p=0; p<this.stationTracks.length; p++) {
			      var found = false;
                  for (var m = 0; m < this.info.length && !found; m++) {
                    if(this.stationTracks[p].station_track_no == this.info[m].station) {
                        found = true;
                    }
                  }
                  if(!found) {
                      var temp = {
                          "station": this.stationTracks[p].station_track_no,
                          "leftUp": [],
                          "leftDown": [],
                          "rightUp": [],
                          "rightDown": []
                      };
                      //alert(JSON.stringify(temp))
                      this.info.push(temp);
                  }
              }
			  //alert(JSON.stringify(this.info));
              this.sortByStationName(this.info);
		  },
          sortByStationName(list) {
              for(var q=0; q< list.length; q++) {
                  for( var l=q+1; l<list.length; l++) {
                      //alert(JSON.stringify(list));

                      if(list[l].station.length <= list[q].station.length && list[l].station < list[q].station) {
                          var temp = list[l];
                          list[l] = list[q];
                          list[q] = temp;
                      }
                  }
              }
          },

          fetchStations(){
              $.ajax({
                  url: _this.queryDataUrl,
                  type: 'POST',
                  dataType: 'json',
                  data: {"department_no": _this.currentDepartmentStr},
                  success: function (data) {
                      if (data.status) {
                          _this.stationTracks = data.info;
                          //alert(JSON.stringify(data.info));
                          _this.fetchCSTask();
                      }
                  }
              })
          },
		  fetchCSTask() {
			  $.ajax({
				  url: _this.fetchCSTaskURL,
				  type: 'POST',
				  dataType: 'json',
				  data: {"department_no": _this.currentDepartmentStr},
				  success: function (data) {
					  _this.isError = data.status == 0;
					  if (!_this.isError) {
						  var temp = data.info;
						  _this.prepareData(temp);
						  _this.toDisplay();
						  _this.trainTasks[_this.trainInfo.index].isSelected = true;
						  WebSocketInstance();

					  } else {
						  showMessage(_this, '获取作业屏内容失败！', 0);
					  }
				  },
				  error: function (info) {
					  showMessage(_this, '服务器访问出错！', 0);
				  }
			  })
		  },
          fetchUsers() {
              $.ajax({
                  url: _this.fetchUsersUrl,
                  type: 'POST',
                  dataType: 'json',
                  data: {"department_no": _this.currentDepartmentStr},
                  success: function (data) {
                      _this.isError = data.status == 0;
                      if (!_this.isError) {
                          _this.allUsers = data.info;
                      } else {
                          showMessage(_this, '获取用户信息失败！', 0);
                      }
                  },
                  error: function (info) {
                      showMessage(_this, '服务器访问出错！', 0);
                  }
              })
          },

	  },

	  created: function () {
		  this.userInfo = JSON.parse(sessionStorage.getItem('user'));
		  _this.titleName = _this.userInfo.department_name;
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
		  this.fetchStations();
          this.fetchUsers();
          this.getPorts();
	  },
	  mounted: function () {

	  },
	  destroyed: function () {

		  var closeQueryPower = {TYPE: "TRACKIDPOWER", ACTION: "close"};
		  SendData(closeQueryPower);
		  clearInterval(timerInterval);
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

			  var startQueryPower = {TYPE: "TRACKIDPOWER", ACTION: "open"};
			  SendData(startQueryPower);

		  };
		  ws.onmessage = function (event) {
			  console.log("接收到服务器发送的数据：\r\n" + event.data);

			  //{"TYPE":"TRACKIDPOWER","id":"9", "power":"0","success":"1"}
			  var obj = JSON.parse(event.data);
              //Refer to 'config/SocketConvention' for the data format
			  if (obj.TYPE == "TRACKIDPOWER") {
				  if (obj.success == "0") {
					  //report quering power status failure
					  showMessage(_this, "串口打开打败，将影响电信号显示。", 0);
				  }
				  else {
					  for (var i = 0; i < _this.trainTasks.length; i++) {
                          //D1,...D9
						  if (_this.trainTasks[i].trainName.endsWith(obj.id)) {
							  _this.trainTasks[i].isElectric = obj.power == 1;
						  }
					  }
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
<style >
    .bg_task_solid_layout {
	    position: absolute;
	    top: 0px;
	    bottom: 0px;
	    width: 100%;
	    background-color: #06A79F;
	    filter: "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale')";
	    -moz-background-size: 100% 100%;
	    background-size: 100% 100%;
	    background-attachment: fixed;
	    -webkit-font-smoothing: antialiased;
    }

    .has_electric {
	    background-color: red;
	    border-bottom-color: black;
	    border-width: 1px;
	    border-style: solid;
	    border-radius: 50%;
	    width: 50px;
	    height: 50px;
    }

    .no_electric {
	    background-color: green;
	    border-bottom-color: black;
	    border-width: 1px;
	    border-style: solid;
	    border-radius: 50%;
	    width: 50px;
	    height: 50px;
    }

    .trainSide {
	    text-align: left;
	    font-size: 22px;
	    font-weight: bold;
	    color: #800000;
	    margin-bottom: 20px;
    }

    .titleDiv {
	    font-family: 'Segoe UI Black';
	    font-weight: bold;
	    font-size: 36px;
	    color: #cccc00;
	    text-align: center;
    }

    .smallTable {
	    zoom: 55%;
	    margin-top: 0px;
	    margin-left: 10px;
	    border-width: 2px;
	    border-style: solid;
	    border-color: #0f0f0f;
    }
    .contentContainer {
        border-width: 2px;
        border-style: solid;
        border-color: darkgray;
    }

    .selectedTrain {
	    background-color: #99ccff;
    }

</style >
</html >