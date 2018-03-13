<template xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml">
    <div>
        <el-col :span="24" class="breadcrumb-container">
            <div class="title">作业管理 / 作业操作</div>
        </el-col>

        <el-col class="well well-lg" style="background-color: white;">
            <el-table
                    :data="tableData"
                    border
                    @row-click="rowClick"
                    :row-class-name="tableRowClassName"
                    style="width: 100%">
                <el-table-column
                        width="80"
                        prop="id"
                        label="序号">
                  <template scope="scope">
                    <span >{{scope.$index +1}}</span>
                  </template>
                </el-table-column>
                <el-table-column
                        width="110"
                        prop="task_date"
                        label="作业日期">
                </el-table-column>
                <el-table-column
                        width="110"
                        prop="task_time"
                        label="作业时间">
                </el-table-column>
                <el-table-column
                        width="110"
                        label="车列号">
                    <template scope="scope">
                        <div>
                            {{scope.row.train_column | filterTrainColumnName}}
                        </div>
                    </template>
                </el-table-column>
                <el-table-column
                        width="120"
                        label="车型">
                    <template scope="scope">
                        <div>
                            {{scope.row.train_model| filterTrainModelName}}
                        </div>
                    </template>
                </el-table-column>
                <el-table-column
                        width="110"
                        label="股道">
                    <template scope="scope">
                        <div>
                            {{scope.row.station_track_no | filterStationTrackName}}
                        </div>
                    </template>
                </el-table-column>
                <el-table-column
                        width="110"
                        prop="repair_id"
                        label="修程">
                    <template scope="scope">
                        <div>
                            {{scope.row.repair_id | filterRepairName}}
                        </div>
                    </template>
                </el-table-column>
                <el-table-column
                        width="200"
                        label="修程项目">
                    <template scope="scope">
                        <el-tag
                                href="#" :title="tag" 
                                style="margin-left:2px;"
                                v-for="tag in scope.row.repair_category!=null&&scope.row.repair_category!=''?scope.row.repair_category.split(','):new Array()"
                                :key="tag"
                                :closable="false"
                        >
                            {{tag}}
                        </el-tag>
                    </template>
                </el-table-column>
                <el-table-column
                        width="120"
                        label="车组类型">
                  <template scope="scope">
                    <div>
                      {{scope.row.train_group | filterTrainGroup}}
                    </div>
                  </template>
                </el-table-column>
                <el-table-column
                        min-width="300"
                        prop="task_content_id"
                        label="作业内容">
                    <template scope="scope">
                        <ul style="list-style: none;">
                            <li style="float: left; margin-left: 3px" v-for=" item in scope.row.task_content_list">
                                <el-tag href="#" :title="item | filterTaskContent" >{{item | filterTaskContent}}</el-tag>
                            </li>
                        </ul>
                    </template>
                </el-table-column>
                <el-table-column
                        width="110"
                        label="状态">
                    <template scope="scope">
                        <div :style="{'color': scope.row.state == 1 ? 'red'
                          : scope.row.state == 2 ? 'blue'
                          : scope.row.state == 3 ? 'green'
                          : scope.row.state == 4 ? 'gray' : ''}">
                            {{scope.row.state | filterStatusName}}
                        </div>
                    </template>
                </el-table-column>
                <el-table-column label="操作" width="110">
                    <template scope="scope">
                        <el-button
                                size="small"
                                type="primary"
                                style="margin-left: 2px" 
                                @click="handleEdit(scope.$index, scope.row)">作业操作</el-button>
                                <br/>
                                
                        <el-button
                                size="small"
                                type="danger"
                                style="margin-left: 8px" 
                                @click="handleCancel(scope.$index, scope.row)">取消作业</el-button>
                    </template>
                </el-table-column>

            </el-table>

     <el-dialog title="提示" v-model="cancelConfirmVisible" size="tiny">
                <span>确认要取消序号为[ <b>{{selectedIndex+1}}</b> ]的作业任务吗？</span>
                <span slot="footer" class="dialog-footer">
	            <el-button @click="cancelConfirmVisible = false">取 消</el-button>
	            <el-button type="primary" @click="onConfirmCancel">确 定</el-button>
                </span>
      </el-dialog>


            <div class="block" style="text-align: center; margin-top: 20px">
                <el-pagination
                        @size-change="handleSizeChange"
                        @current-change="handleCurrentChange"
                        :current-page="currentPage"
                        :page-size="pageSize"
                        layout="prev, pager, next, jumper"
                        :total="totalPage">
                </el-pagination>
            </div>

            <div class="title" style="margin-top: 20px; margin-bottom: 10px; margin-left: 5px">作业情况</div>
            <el-table
                    :data="taskContentData"
                    border
                    style="width: 100%">
                <el-table-column
                        prop="id"
                        label="序列"
                        min-width="30">
                    <template scope="scope">
                      <span >{{scope.$index +1}}</span>
                    </template>
                </el-table-column>
                <el-table-column label="作业信息">
                    <el-table-column
                            prop="task_content_id"
                            label="作业内容"
                            min-width="80">
                        <template scope="scope">
                            <div href="#" :title="scope.row.task_content_id | filterTaskContent">
                                {{scope.row.task_content_id | filterTaskContent}}
                            </div>
                        </template>
                    </el-table-column>
                    <el-table-column
                            prop="state"
                            label="作业状态"
                            min-width="60">
                        <template scope="scope">
                            <div :style="{'color': scope.row.state == 1 ? 'red'
                                          : scope.row.state == 2 ? 'blue'
                                          : scope.row.state == 3 ? 'green'
                                          : ''}">
                                {{scope.row.state | filterTaskContentStatusName}}
                            </div>
                        </template>
                    </el-table-column>

                    <el-table-column
                            prop="trouble_maintain_id"
                            label="故障状态"
                            min-width="100">
                      <template scope="scope">
                        <ul style="list-style: none; margin-top: 10px">
                          <li style="margin-left: -40px; margin-top: 3px" v-for=" item in scope.row.trouble_maintain_id">
                            <el-tag type="danger"  href="#" :title="item | filterTroubleName">{{item | filterTroubleName}}</el-tag>
                          </li>
                        </ul>
                      </template>
                    </el-table-column>
                    <el-table-column
                            prop="situation_content_id"
                            label="情况说明"
                            min-width="100">
                      <template scope="scope">
                        <ul style="list-style: none;margin-top: 10px">
                          <li style="margin-left: -40px; margin-top: 3px" v-for=" item in scope.row.situation_content_id">
                            <el-tag type="warning" href="#" :title="item | filterSituationName">{{item | filterSituationName}}</el-tag>
                          </li>
                        </ul>
                      </template>
                    </el-table-column>
                </el-table-column>

                <el-table-column label="作业人员">
                    <el-table-column
                            prop="a_left"
                            :label="portName.a_left"
                            min-width="60">
                      <template scope="scope">
                        <ul style="list-style: none;">
                          <li style="margin-left: -30px" v-for=" item in scope.row.a_left">
                            <el-tag >{{item | filterUserName}}</el-tag>
                          </li>
                        </ul>
                      </template>
                    </el-table-column>
                    <!--el-table-column
                            prop="a_right"
                            :label="portName.a_right"
                            min-width="60">
                      <template scope="scope">
                        <ul style="list-style: none;">
                          <li style="margin-left: -30px" v-for=" item in scope.row.a_right">
                            <el-tag >{{item | filterUserName}}</el-tag>
                          </li>
                        </ul>
                      </template>
                    </el-table-column-->

                    <el-table-column
                            prop="b_left"
                            :label="portName.b_left"
                            min-width="60">
                      <template scope="scope">
                        <ul style="list-style: none;">
                          <li style="margin-left: -30px" v-for=" item in scope.row.b_left">
                            <el-tag>{{item | filterUserName}}</el-tag>
                          </li>
                        </ul>
                      </template>
                    </el-table-column>
                    <!--el-table-column
                            prop="b_right"
                            :label="portName.b_right"
                            min-width="60">
                      <template scope="scope">
                        <ul style="list-style: none;">
                          <li style="margin-left: -30px" v-for=" item in scope.row.b_right">
                            <el-tag >{{item | filterUserName}}</el-tag>
                          </li>
                        </ul>
                      </template>
                    </el-table-column-->
                </el-table-column>

                <el-table-column label="作业组长">
                    <el-table-column
                            prop="a_leader"
                            :label="portName.a_leader"
                            min-width="60">
                      <template scope="scope">
                        <ul style="list-style: none;">
                          <li style="margin-left: -30px" v-for=" item in scope.row.a_leader">
                            <el-tag >{{item | filterUserName}}</el-tag>
                          </li>
                        </ul>
                      </template>
                    </el-table-column>
                    <el-table-column
                            prop="b_leader"
                            :label="portName.b_leader"
                            min-width="60">
                      <template scope="scope">
                        <ul style="list-style: none;">
                          <li style="margin-left: -30px" v-for=" item in scope.row.b_leader">
                            <el-tag >{{item | filterUserName}}</el-tag>
                          </li>
                        </ul>
                      </template>
                    </el-table-column>
                    </el-table-column>
                </el-table-column>


                <el-table-column label="质检人员">
                    <el-table-column
                            prop="a_quality"
                            :label="portName.a_quality"
                            min-width="60">
                      <template scope="scope">
                        <ul style="list-style: none;">
                          <li style="margin-left: -30px" v-for=" item in scope.row.a_quality">
                            <el-tag >{{item | filterUserName}}</el-tag>
                          </li>
                        </ul>
                      </template>
                    </el-table-column>
                    <el-table-column
                            prop="b_quality"
                            :label="portName.b_quality"
                            min-width="60">
                      <template scope="scope">
                        <ul style="list-style: none;">
                          <li style="margin-left: -30px" v-for=" item in scope.row.b_quality">
                            <el-tag >{{item | filterUserName}}</el-tag>
                          </li>
                        </ul>
                      </template>
                    </el-table-column>
                </el-table-column>
            </el-table>
        </el-col>
        <el-dialog title="作业操作" v-model="modifyDialogVisible" size="full" >

          <el-table
                  :data="selectedTaskInfo"
                  border
                  style="width: 100%">
            <el-table-column
                    min-width="110"
                    prop="task_date"
                    label="作业日期">
            </el-table-column>
            <el-table-column
                    min-width="110"
                    prop="task_time"
                    label="作业时间">
            </el-table-column>
            <el-table-column
                    prop="train_column"
                    min-width="110"
                    label="车列号">
              <template scope="scope">
                <div>
                  {{scope.row.train_column | filterTrainColumnName}}
                </div>
              </template>
            </el-table-column>
            <el-table-column
                    prop="train_model"
                    min-width="120"
                    label="车型">
              <template scope="scope">
                <div>
                  {{scope.row.train_model| filterTrainModelName}}
                </div>
              </template>
            </el-table-column>
            <el-table-column
                    prop="station_track_no"
                    min-width="110"
                    label="股道">
              <template scope="scope">
                <div>
                  {{scope.row.station_track_no | filterStationTrackName}}
                </div>
              </template>
            </el-table-column>
            <el-table-column
                    min-width="110"
                    prop="repair_id"
                    label="修程">
              <template scope="scope">
                <div>
                  {{scope.row.repair_id | filterRepairName}}
                </div>
              </template>
            </el-table-column>
              <el-table-column
                      width="200"
                      label="修程项目">
                  <template scope="scope">
                      <el-tag
                              href="#" :title="tag" 
                              style="margin-left:2px;"
                              v-for="tag in scope.row.repair_category!=null&&scope.row.repair_category!=''?scope.row.repair_category.split(','):new Array()"
                              :key="tag"
                              :closable="false"
                      >
                          {{tag}}
                      </el-tag>
                  </template>
              </el-table-column>
            <el-table-column
                    min-width="110"
                    prop="train_group"
                    label="车组类型">
              <template scope="scope">
                <div>
                  {{scope.row.train_group | filterTrainGroup}}
                </div>
              </template>
            </el-table-column>
          </el-table>

          <div style="display: inline">
            <el-button type="primary" @click="startTask" style="margin-left:20px; margin-top: 20px">开始作业</el-button >
            <el-button type="primary" @click="addTrouble" v-show = 'false' style="margin-top: 20px">故障登记</el-button >
            <el-button type="primary" @click="addSituation" v-show = 'false' style="margin-top: 20px">情况说明</el-button >
            <el-button type="primary" @click="endTask" style="margin-top: 20px">结束作业</el-button >
            <el-button type="primary" @click="endTaskPlan" style="margin-top: 20px">车辆出库</el-button >
            <el-button type="primary" @click="cancelTask" style = "margin-top: 20px">取消作业</el-button>
          </div>

        <el-table
                :data="taskContentData"
                border
                style="width: 100%; margin-top: 20px"
                @row-click="contentRowClick"
                @selection-change="handleTaskContentSelectionChange"
                :row-class-name="contentTableRowClassName"
                ref = "tableContent">
          <el-table-column
                  type="selection"
                  width="55">
          </el-table-column>
          <el-table-column
                  prop="id"
                  label="序号"
                  min-width="30">
                  <template scope="scope">
                    <span >{{scope.$index +1}}</span>
                  </template>
          </el-table-column>
          <el-table-column label="作业信息">
            <el-table-column
                    prop="task_content_id"
                    label="作业内容"
                    min-width="70">
              <template scope="scope">
                <div href="#" :title="scope.row.task_content_id | filterTaskContent" >
                  {{scope.row.task_content_id | filterTaskContent}}
                </div>
              </template>
            </el-table-column>
            <el-table-column
                    prop="state"
                    label="作业状态"
                    min-width="60">
              <template scope="scope">
                <div :style="{'color': scope.row.state == 1 ? 'red'
                          : scope.row.state == 2 ? 'blue'
                          : scope.row.state == 3 ? 'green'
                          : ''}">
                  {{scope.row.state | filterTaskContentStatusName}}
                </div>
              </template>
            </el-table-column>

            <el-table-column
                    prop="trouble_maintain_id"
                    label="故障状态"
                    min-width="100">
              <template scope="scope">
                <!-- <el-select :disabled="scope.row.state == '1' || scope.row.state == '3'"
                           v-model="scope.row.trouble_maintain_id" multiple placeholder="选择故障">
                  <el-option
                          v-for="item in troubleList"
                          :label="item.content"
                          :value="item.id">
                  </el-option>
                </el-select> -->
                    <el-input :disabled="scope.row.state == '1' || scope.row.state == '3'"
                     v-show="true" size="small" v-model="scope.row.trouble_maintain_id"></el-input>
                    <!-- <span v-show="!scope.row.edit">{{ scope.row.title }}</span> -->

              </template>
            </el-table-column>
            <el-table-column
                    prop="situation_content_id"
                    label="情况说明"
                    min-width="100">
              <template scope="scope">
                <!-- <el-select :disabled="scope.row.state == '1' || scope.row.state == '3'"
                           v-model="scope.row.situation_content_id" multiple placeholder="选择说明">
                  <el-option
                          v-for="item in situationList"
                          :label="item.situation_content"
                          :value="item.id">
                  </el-option>
                </el-select> -->
                 <el-input :disabled="scope.row.state == '1' || scope.row.state == '3'"
                     v-show="true" size="small" v-model="scope.row.situation_content_id"></el-input>
              </template>
            </el-table-column>
          </el-table-column>

          <el-table-column label="作业人员">

            <el-table-column
                    prop="a_left"
                    :label="portName.a_left"
                    min-width="60">
              <template scope="scope">
                <!--<ul style="list-style: none; text-align: center">-->
                  <!--<li style="margin-left: -40px" v-for=" item in scope.row.a_left">-->
                    <!--<el-tag >{{item}}</el-tag>-->
                  <!--</li>-->
                <!--</ul>-->
                <el-tag style="margin-left: -10px; margin-top: 3px"
                        v-for="(tag,index) in scope.row.a_left"
                        :closable="scope.row.state == '2'"
                        @close="handleALeftClose(scope.row, index)">
                  {{tag | filterUserName}}
                </el-tag>
                <el-button style="margin-left: -10px; margin-top: 3px" :disabled="scope.row.state == '3'"
                           type="primary" size="mini" @click="aLeftAdd(scope.$index)" icon="plus">人员</el-button>
              </template>
            </el-table-column>
            <!--el-table-column
                    prop="a_right"
                    :label="portName.a_right"
                    min-width="60">
              <template scope="scope">
                <el-tag style="margin-left: -10px; margin-top: 3px"
                        v-for="(tag,index) in scope.row.a_right"
                        :closable="scope.row.state == '2'"
                        @close="handleARightClose(scope.row, index)">
                  {{tag | filterUserName}}
                </el-tag>
                <el-button style="margin-left: -10px; margin-top: 3px" :disabled="scope.row.state == '3'"
                           type="primary" size="mini" @click="aRightAdd(scope.$index)" icon="plus">人员</el-button>
              </template>
            </el-table-column-->

            <el-table-column
                    prop="b_left"
                    :label="portName.b_left"
                    min-width="60">
              <template scope="scope">
                <el-tag style="margin-left: -10px; margin-top: 3px"
                        v-for="(tag,index) in scope.row.b_left"
                        :closable="scope.row.state == '2'"
                        @close="handleBLeftClose(scope.row, index)">
                  {{tag | filterUserName}}
                </el-tag>
                <el-button style="margin-left: -10px; margin-top: 3px" :disabled="scope.row.state == '3'"
                           type="primary" size="mini" @click="bLeftAdd(scope.$index)" icon="plus">人员</el-button>
              </template>
            </el-table-column>
            <!--el-table-column
                    prop="b_right"
                    :label="portName.b_right"
                    min-width="60">
              <template scope="scope">
                <el-tag style="margin-left: -10px; margin-top: 3px"
                        v-for="(tag,index) in scope.row.b_right"
                        :closable="scope.row.state == '2'"
                        @close="handleBRightClose(scope.row, index)">
                  {{tag | filterUserName}}
                </el-tag>
                <el-button style=" margin-left: -10px; margin-top: 3px" :disabled="scope.row.state == '3'"
                           type="primary" size="mini" @click="bRightAdd(scope.$index)" icon="plus">人员</el-button>
              </template>
            </el-table-column-->
          </el-table-column>

          <el-table-column label="作业组长">
            <el-table-column
                    prop="a_leader"
                    :label="portName.a_leader"
                    min-width="60">
              <template scope="scope">
                <el-tag style="margin-left: -10px; margin-top: 3px"
                        v-for="(tag,index) in scope.row.a_leader"
                        :closable="scope.row.state == '2'"
                        @close="handleALeaderClose(scope.row, index)">
                  {{tag | filterUserName}}
                </el-tag>
                <el-button style="margin-left: -10px; margin-top: 3px" :disabled=" scope.row.state == '3'"
                           type="primary" size="mini" @click="aLeaderAdd(scope.$index)" icon="plus">组长</el-button>
              </template>
            </el-table-column>
            <el-table-column
                    prop="b_leader"
                    :label="portName.b_leader"
                    min-width="60">
              <template scope="scope">
                <el-tag style="margin-left: -10px; margin-top: 3px"
                        v-for="(tag,index) in scope.row.b_leader"
                        :closable="scope.row.state == '2'"
                        @close="handleBLeaderClose(scope.row, index)">
                  {{tag | filterUserName}}
                </el-tag>
                <el-button style="margin-left: -10px; margin-top: 3px" :disabled="scope.row.state == '3'"
                           type="primary" size="mini" @click="bLeaderAdd(scope.$index)" icon="plus">组长</el-button>
              </template>
            </el-table-column>
          </el-table-column>


          <el-table-column label="质检人员">
            <el-table-column
                    prop="a_quality"
                    :label="portName.a_quality"
                    min-width="60">
              <template scope="scope">
                <el-tag style="margin-left: -10px; margin-top: 3px"
                        v-for="(tag,index) in scope.row.a_quality"
                        :closable="scope.row.state == '2'"
                        @close="handleAQualityClose(scope.row, index)">
                  {{tag | filterUserName}}
                </el-tag>
                <el-button style="margin-left: -10px; margin-top: 3px" :disabled="scope.row.state == '3'"
                           type="primary" size="mini" @click="aQualityAdd(scope.$index)" icon="plus">质检</el-button>
              </template>
            </el-table-column>
            <el-table-column
                    prop="b_quality"
                    :label="portName.b_quality"
                    min-width="60">
              <template scope="scope">
                <el-tag style="margin-left: -10px; margin-top: 3px"
                        v-for="(tag,index) in scope.row.b_quality"
                        :closable="scope.row.state == '2'"
                        @close="handleBQualityClose(scope.row, index)">
                  {{tag | filterUserName}}
                </el-tag>
                <el-button style="margin-left: -10px; margin-top: 3px" :disabled=" scope.row.state == '3'"
                           type="primary" size="mini" @click="bQualityAdd(scope.$index)" icon="plus">质检</el-button>
              </template>
            </el-table-column>
          </el-table-column>
        </el-table>

        <div slot="footer" class="dialog-footer" style="margin-bottom: 20px; margin-right: 130px" >
          <el-button @click="discardModify" >返 回</el-button >
          <el-button type="primary" @click="confirmModify" >保 存</el-button >
        </div >
      </el-dialog >
      
      <el-dialog title="增加故障维护" v-model="addTroubleDialogVisible" size="tiny">
          <el-form :model="troubleForm">
            <el-form-item label="故障维护：" :label-width="formLabelWidth">
              <el-input v-model="troubleForm.content" auto-complete="off"></el-input>
            </el-form-item>

            <el-form-item label="部门：" :label-width="formLabelWidth">
              <el-select v-model="troubleForm.department_no" style="width: 100%">
                <el-option
                        v-for="item in department"
                        v-bind:value="item.department_no"
                        v-bind:label="item.department_name">
                </el-option>
              </el-select>
            </el-form-item>

            <el-form-item label="备注：" :label-width="formLabelWidth">
              <el-input v-model="troubleForm.comment" auto-complete="off"></el-input>
            </el-form-item>

            <el-form-item label="颜色：" :label-width="formLabelWidth">

            </el-form-item>
            <div class="block" style="margin-top: -60px;margin-left:60px; " >
              <el-color-picker v-model="troubleForm.font_color">
              </el-color-picker >
            </div >
          </el-form>
          <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
                    :title="errorMsg"
                    type="error"
                    :closable="false"
                    show-icon >
          </el-alert >
          <div slot="footer" class="dialog-footer">
            <el-button @click="addTroubleDialogVisible = false">取 消</el-button>
            <el-button type="primary" @click="onConfirmTrouble">确 定</el-button>
          </div>
        </el-dialog>
        <!--<el-dialog title="提示" v-model="startConfirmVisible" size="tiny" >-->
          <!--<span v-show="selectedContentInfo != '' ">确认要开始[ <b>{{selectedContentInfo.task_content_id | filterTaskContent}}</b> ]的作业内容吗？</span >-->

          <!--<span slot="footer" class="dialog-footer" >-->
              <!--<el-button @click="startConfirmVisible = false" >取 消</el-button >-->
              <!--<el-button type="primary" @click="onConfirmStart" >确 定</el-button >-->
            <!--</span >-->
        <!--</el-dialog >-->
        <el-dialog title="增加情况说明" v-model="addSituationDialogVisible" size="tiny">
          <el-form :model="troubleForm">
            <el-form-item label="情况说明：" :label-width="formLabelWidth">
              <el-input v-model="situationForm.situation_content" auto-complete="off"></el-input>
            </el-form-item>

            <el-form-item label="部门：" :label-width="formLabelWidth">
              <el-select v-model="situationForm.department_no" style="width: 100%">
                <el-option
                        v-for="item in department"
                        v-bind:value="item.department_no"
                        v-bind:label="item.department_name">
                </el-option>
              </el-select>
            </el-form-item>

            <el-form-item label="颜色：" :label-width="formLabelWidth">

            </el-form-item>
            <div class="block" style="margin-top: -60px;margin-left:60px; " >
              <el-color-picker v-model="situationForm.font_color">
              </el-color-picker >
            </div >
          </el-form>
          <el-alert v-if="isError" style="margin-top: 10px;padding: 5px;background-color: #ff9999"
                    :title="errorMsg"
                    type="error"
                    :closable="false"
                    show-icon >
          </el-alert >
          <div slot="footer" class="dialog-footer">
            <el-button @click="addSituationDialogVisible = false">取 消</el-button>
            <el-button type="primary" @click="onConfirmSituation">确 定</el-button>
          </div>
        </el-dialog>
        <el-dialog title="提示" v-model="startConfirmVisible" size="tiny" >
          <span v-show="selectedContentInfo != '' ">确认要开始选择的作业内容吗？</span >

          <span slot="footer" class="dialog-footer" >
              <el-button @click="startConfirmVisible = false" >取 消</el-button >
              <el-button type="primary" @click="onConfirmStart" >确 定</el-button >
            </span >
        </el-dialog >
        <el-dialog title="提示" v-model="endConfirmVisible" size="tiny" >
          <span v-show="selectedContentInfo != '' ">确认要结束选择的作业内容吗？</span >

          <span slot="footer" class="dialog-footer" >
              <el-button @click="endConfirmVisible = false" >取 消</el-button >
              <el-button type="primary" @click="onConfirmEnd" >确 定</el-button >
            </span >
        </el-dialog >
        <el-dialog title="提示" v-model="endTaskPlanConfirmVisible" size="tiny" >
          <span >确认要<strong>车辆出库</strong>吗？</span >
          <span slot="footer" class="dialog-footer" >
            <el-button @click="endTaskPlanConfirmVisible = false" >取 消</el-button >
            <el-button type="primary" @click="onConfirmEndTaskPlan" >确 定</el-button >
          </span >
        </el-dialog >

        <el-dialog title="提示" v-model="cancelTaskConfirmVisible" size="tiny" >
          <span >确认要<strong>取消作业</strong>吗？</span >
          <span slot="footer" class="dialog-footer" >
            <el-button @click="cancelTaskConfirmVisible = false" >取 消</el-button >
            <el-button type="primary" @click="onConfirmCancelTask" >确 定</el-button >
          </span >
        </el-dialog >

      <el-dialog :title="currentAddIndicator | filterPersonAddTitle" v-model="addPersonDialogVisible" size="large">
          <el-row>
              <el-col :span="3" style="margin-left: 5px;">
                  <div style="margin-bottom: 10px; font-size: 18px; cursor: pointer"
                       v-bind:class="{parentPart: activeIndex == -1}"
                       class="parentPart"
                       v-show="partInfo.isShow"
                       @click="chooseParentPart(partInfo)" >{{partInfo.department_no}} {{partInfo.department_name}}
                  </div >
                  <div v-show="partInfo.sub_parts.length > 0"
                      style="margin-left: 20px;" >
                      <div v-for=" (sub, index) in partInfo.sub_parts"
                           v-show="sub.isShow"
                           style="margin-top: 10px;cursor: pointer;font-size: 16px;"
                           v-bind:class="{subPart: activePartID == sub.department_no}"
                           @click="chooseSubPart(index, sub)" >
                          {{sub.department_no}} {{sub.department_name}}

                          <div v-for="(item, index) in sub.sub_parts"
                               style="margin-top: 5px;margin-left: 20px;font-size: 14px;"
                               v-bind:class="item.work_group_no | filterWorkGroupClass"
                               @click.stop="chooseWorkGroup(index, item)" >
                              {{item.work_group_no}} {{item.work_group_name}}
                          </div >

                          <!-- 作业小组 -->
                          <div v-for="item in taskGroup"
                               style="margin-top: 5px;margin-left: 20px;font-size: 14px;"
                               v-bind:class="item.work_group_no | filterWorkGroupClass"
                               @click.stop="chooseTaskGroup(index, item)" >
                              {{ item.task_group_name}}
                          </div >

                      </div >
                  </div >
              </el-col>
              <el-col :span="20">
                  <el-form :inline="true" :model="personForm" label-width="100px">
                      <el-row>
                          <el-col :span="7">
                              <el-form-item label="账号：">
                                  <el-input v-model="personForm.account" clearable ></el-input>
                              </el-form-item>
                          </el-col>
                          <el-col :span="7">
                              <el-form-item  label="姓名：">
                                  <el-input v-model="personForm.name" clearable ></el-input>
                              </el-form-item>
                          </el-col>
                          <!--<el-col  :span="5">-->
                          <!--<el-form-item  label="班组：">-->
                          <!--<el-select v-model="personForm.work_group_id" clearable placeholder="选择班组">-->
                          <!--<el-option v-for=" item in workGroup" :label="item.work_group_name" :value="item.work_group_no">-->
                          <!--</el-option>-->
                          <!--</el-select>-->
                          <!--</el-form-item>-->
                          <!--</el-col>-->
                          <el-col  :span="7" v-show="currentAddIndicator < 5">
                              <el-form-item  label="作业小组：">
                                  <!--<el-select v-model="personForm.task_group_no" clearable >-->
                                  <!--<el-option v-for=" item in taskGroup" :label="item.task_group_name" :value="item.task_group_no">-->
                                  <!--</el-option>-->
                                  <!--</el-select>-->
                                  <el-input v-model="personForm.task_group_name" clearable ></el-input>
                              </el-form-item>
                          </el-col>

                          <el-col :span="3">
                              <el-button type="primary" icon="search" @click="search" >搜索</el-button>
                          </el-col>
                      </el-row>
                      <el-row>

                      </el-row>

                  </el-form>
                  <el-table
                          :data="searchedPersonData"
                          @selection-change="handleSelectionChange"
                          border
                          style="width: 100%">
                      <el-table-column
                              min-width="65"
                              prop="id"
                              label="序号">
                          <template scope="scope">
                              <span >{{scope.$index +1}}</span>
                          </template>
                      </el-table-column>
                      <el-table-column
                              min-width="100"
                              prop="account"
                              label="账号">
                      </el-table-column>
                      <el-table-column
                              min-width="100"
                              prop="name"
                              label="姓名">
                      </el-table-column>
                      <el-table-column
                              min-width="70"
                              prop="sex"
                              label="性别">
                      </el-table-column>
                      <el-table-column
                              min-width="100"
                              label="部门">
                          <template scope="scope">
                              <div>
                                  {{scope.row.department_no | filterDepartmentName}}
                              </div>
                          </template>
                      </el-table-column>
                      <el-table-column
                              min-width="100"
                              prop="work_group_no"
                              label="班组">
                          <template scope="scope">
                              <div>
                                  {{scope.row.work_group_no | filterWorkGroupName}}
                              </div>
                          </template>
                      </el-table-column>
                      <el-table-column
                              min-width="100"
                              prop="task_group_name"
                              label="作业小组">
                      </el-table-column>
                      <el-table-column
                              min-width="100"
                              prop="work_post"
                              label="职务">
                      </el-table-column>
                      <el-table-column
                              type="selection"
                              width="55">
                      </el-table-column>

                  </el-table>
                  <div class="block" style="text-align: center; margin-top: 20px">
                      <el-pagination
                              @size-change="handleSizeChange"
                              @current-change="handlePersonCurrentChange"
                              :current-page="currentPagePerson"
                              :page-size="pageSizePerson"
                              layout="prev, pager, next, jumper"
                              :total="totalPagePerson">
                      </el-pagination>
                  </div>
              </el-col>
          </el-row>
            <span slot="footer" class="dialog-footer" >
                <el-button @click="addPersonDialogVisible = false" >取 消</el-button >
                <el-button type="primary" @click="onConfirmAddPerson" >确 定</el-button >
            </span >
     </el-dialog>        
    </div>
</template>

<script>
    import Vue from 'vue'
    let _this
    export default {
        name:"task_operate",
        components: {},
        data () {
            _this = this;
            return {
                fetchRepairInfoURL:HOME + "RepairInfo/getRecords",
                fetchDepartRelInfoURL:HOME + "TaskPlan/fetchDepartRelInfo",
                fetchNotCompletedTaskURL:HOME + "TaskPlan/getNotCompletedRecords",
                fetchNotCompletedTaskCountURL:HOME + "TaskPlan/getNotCompletedRecordsCount",
                fetchTaskContentDetailURL: HOME + "TaskPlanDetail/getRecords",
                modifyTaskContentDetailURL: HOME + "TaskPlanDetail/modifyRecords",
                fetchPortNameURL:HOME + "TaskPlanDetail/getPortName",
                startTaskURL:HOME + "TaskPlanDetail/startTask",
                endTaskURL:HOME + "TaskPlanDetail/endTask",
                endTaskPlanURL:HOME + "TaskPlan/endTaskPlan",
                addTroubleUrl: HOME + "TroubleMaintain/addData",
                getTroubleUrl: HOME + "TroubleMaintain/getRecords",
                addSituationUrl: HOME + "SituationContent/addData",
                getSituationUrl: HOME + "SituationContent/getRecords",
                getPersonUrl: HOME + "User/searchRecords",
                getPersonCountUrl: HOME + "User/getSearchRecordsCount",
                queryDepartmentUrl: HOME + "DepartmentInfo/getRecords",
                queryWorkGroupUrl: HOME + "WorkGroup/getRecords",
                modifyTaskURL: HOME + "TaskPlan/modifyData",
                //getUserUrl: HOME + "User/searchRecords",
                userInfo:"",
                statusArr:[],
                tableData: [],
                currentColumn:-1,
                currentContentColumn:-1,
                portInfo:{
                    "a_left":"",
                    "a_right":"",
                    "b_left":"",
                    "b_right":"",
                    "a_leader":"",
                    "b_leader":"",
                    "a_quality":"",
                    "b_quality":"",
                },

                selectedTaskInfo:[],
                taskContentData:[],//当前选中的作业计划对应的作业内容
                portName:{'a_left':"","a_right":"","b_left":"","b_right":"",
                            "a_leader":"",'b_leader':"","a_quality":"","b_quality":""},//当前选中的作业计划对应的端名称
                selectedContentInfo:"",
                startConfirmVisible: false,
                endConfirmVisible: false,
                endTaskPlanConfirmVisible: false,
                cancelTaskConfirmVisible: false,
                addPersonDialogVisible: false,
                //故障添加
                troubleList:[],
                troubleForm: {
                    content: "",
                    department_no: "",
                    font_color:"#000000",
                    comment:""
                },
                addTroubleDialogVisible: false,

                //情况说明
                situationList:[],
                situationForm: {
                    situation_content: "",
                    department_no: "",
                    font_color:"#000000",
                },
                addSituationDialogVisible: false,

                //分页
                totalPage: 1,
                pageSize: EveryPageNum,//每一页的num
                currentPage:1,
                startRecord: 0,

                //选择人员的分页
                totalPagePerson: 1,
                pageSizePerson: EveryPageNum,//每一页的num
                currentPagePerson:1,
                startRecordPerson: 0,

                isError: false,
                errorMsg: '',

                cancelConfirmVisible: false,//取消确认
                selectedIndex:-1,
                //
                currentAddIndicator: -1,// 1 -> a_left; 2 ->a_right; 3->b_left; 4->b_right; 5->a_leader; 6->b_leader; 7->a_quality; 8->b_quality
                personForm:{
                  "account":"",
                  "name":"",
                  "task_group_name":"",
                  "department_no":"",
                  "work_group_no":""
                },
                searchedPersonData:[],
                multiPersonSelection:[],
                multipleTaskSelection:[],//选择多个作业内容，开始or结束
                modifyForm:[],
                allWorkGroup: [],
                workGroupList: [],
                activeIndex: -1,
                activePartID: "",
                activeWorkGroupIndex: -1,
                activeWorkGroupID: "",
                allDepartments: [],
                partInfo: {
                    id: '',
                    department_no: '',
                    department_name: '',
                    sub_parts: [],
                    part_belong: {},
                },
                modifyDialogVisible: false,
                formLabelWidth: '100px',

                department:[],//部门
                repairInfo:[],//修程
                stationStack:[],//股道
                taskContent:[],//作業任務
                trainColumn:[],//车列号相关
                trainModel:[],//车型
                workGroup:[],//作业班组
                taskGroup:[],//作业小组
                departmentUsers:[]//部门相关的用户
            }
        },
        methods: {
            tableRowClassName(row, index) {
                //alert(this.currentColumn)
                if (index === this.currentColumn) {
                    return 'positive-row';
                }
                return '';
            },
            contentTableRowClassName(row, index) {
                //alert(this.currentColumn)
//                if (index === this.currentContentColumn) {
//                    return 'positive-row';
//                }
              if (this.multipleTaskSelection.indexOf(row) != -1) {
                    return 'positive-row';
                }
                return '';
            },
            discardModify() {
              this.modifyDialogVisible = false;
              //清空并更新数据
              this.taskContentData.splice(0, this.taskContentData.length)
              this.fetchTaskCount();
            },
            confirmModify() {
              this.modifyDialogVisible = false;
              //清空并更新数据
              //alert(JSON.stringify(this.taskContentData));
              //只有正在作业的状态才可以提交数据
              let postData = [];
              for(let i=0; i< this.taskContentData.length; i++) {
                 postData.push(this.taskContentData[i]);
              }
              $.ajax({
                url: _this.modifyTaskContentDetailURL,
                type: 'POST',
                dataType: 'json',
                data: {"data":JSON.stringify(postData)},
                success: function (data) {
                  _this.isError = data.status == 0;
                  if (!_this.isError) {
                    showMessage(_this, '更新作业内容成功！', 1);
                  } else {
                    showMessage(_this, '更新作业内容失败！', 0);
                  }
                  //清空并更新数据
                  _this.taskContentData.splice(0, _this.taskContentData.length);
                  _this.fetchTaskCount();
                },
                error: function (info) {
                  showMessage(_this, '服务器访问出错！', 0);
                  //清空并更新数据
                  _this.taskContentData.splice(0, _this.taskContentData.length);
                  _this.fetchTaskCount();
                }
              })
            },

            handleSelectionChange(val){
                this.multiPersonSelection = val;
            },

            handleEdit(index, row){              
              this.currentContentColumn = -1;
              this.modifyDialogVisible = true
              this.selectedTaskInfo = []
              this.selectedTaskInfo.push(row);
            },
            handleCancel(index, row){
            
                this.selectedIndex = index;
                this.cancelConfirmVisible = true;
                this.selectedItem = row;
            },

           onConfirmCancel() {
                $.ajax({
                    url: _this.modifyTaskURL,
                    type: 'POST',
                    dataType: 'json',
                    data: {"id": this.selectedItem.id, "state": "4"},
                    success: function (data) {
                        _this.isError = data.status == 0;
                        if (!_this.isError) {
                            _this.cancelConfirmVisible = false;
                            showMessage(_this, '取消作业任务成功！', 1);
                            _this.selectedItem.state = "4";
                             _this.fetchTaskCount();
                             _this.taskContentData = [];

                        } else {
                            showMessage(_this, '取消作业任务失败！', 0);
                        }
                    },
                    error: function (info) {
                        _this.isError = true;
                        _this.errorMsg = '服务器访问出错';
                    }
                })
            },

            rowClick(row, event, column) {
                this.currentColumn = this.tableData.indexOf(row);
                this.getTroubleList();
                this.getSituationList();
                this.fetchPersonCount();
                $.ajax({
                    url: _this.fetchTaskContentDetailURL,
                    type: 'POST',
                    dataType: 'json',
                    data: {"task_number": row.task_number},
                    success: function (data) {
                        _this.isError = data.status == 0;
                        if (!_this.isError) {
                            _this.taskContentData = data.info;
                        } else {
                            showMessage(_this, '获取作业内容失败！', 0);
                        }
                    },
                    error: function (info) {
                        showMessage(_this, '服务器访问出错！', 0);
                    }
                })

                $.ajax({
                    url: _this.fetchPortNameURL,
                    type: 'POST',
                    dataType: 'json',
                    data: {"task_number": row.task_number},
                    success: function (data) {
                        _this.isError = data.status == 0;
                        if (!_this.isError) {
                            _this.portName = data.info;
                        } else {
                            showMessage(_this, '获取作业段名称失败！', 0);
                        }
                    },
                    error: function (info) {
                        showMessage(_this, '服务器访问出错！', 0);
                    }
                })
            },
          handleTaskContentSelectionChange(val) {
            _this.multipleTaskSelection = val;
          },

            contentRowClick(row, event, column) {
                //alert(row.task_number);
                this.currentContentColumn = this.taskContentData.indexOf(row);
                this.selectedContentInfo = row
            },
            handleSizeChange(val) {
//        console.log(`每页 ${val} 条`);
            },

            handleCurrentChange(val) {
                this.currentPage = val;
                this.startRecord = this.pageSize * (this.currentPage -1)
                this.fetchTaskCount();
            },
            handlePersonCurrentChange(val) {
              this.currentPagePerson = val;
              this.startRecordPerson  = this.pageSizePerson * (this.currentPagePerson  -1);
              this.fetchPersonCount();
            },
            handleSelect(id) {

                for(let i=0; i<this.trainColumn.length; i++){
                    if(this.trainColumn[i].id == id) {
                        this.form.train_model = this.trainColumn[i].train_model;
                        this.form.train_group = this.trainColumn[i].train_group;
                        break;
                    }
                }
            },

            fetchRepairInfo() {
                $.ajax({
                    url: _this.fetchRepairInfoURL,
                    type: 'GET',
                    success: function (data) {
                        _this.isError = data.status == 0;
                        if (!_this.isError) {
                            //TODO:
                            _this.repairInfo = data.info
                        } else {
                            showMessage(_this, '获取修程信息失败！', 0);
                        }
                    },
                    error: function (info) {
                        showMessage(_this, '服务器访问出错！', 0);
                    }
                })
            },

            fetchDepartmentRelatedInfo() {
                $.ajax({
                    url: _this.fetchDepartRelInfoURL,
                    type: 'POST',
                    dataType: 'json',
                    data: {"department_no": _this.currentDepartmentStr},
                    success: function (data) {
                        _this.isError = data.status == 0;
                        if (!_this.isError) {
                            _this.stationStack = data.info.station_stack;
                            _this.trainColumn = data.info.train_column;
                            _this.trainModel = data.info.train_model;
                            _this.taskContent = data.info.task_content;
//                            _this.workGroup = data.info.work_group;
                            _this.taskGroup = data.info.task_group;
                        } else {
                            showMessage(_this, '获取部门相关信息失败！', 0);
                        }
                    },
                    error: function (info) {
                        showMessage(_this, '服务器访问出错！', 0);
                    }
                })
            },
            fetchTaskCount(){
                //alert(this.currentDepartment)
                $.ajax({
                    url: _this.fetchNotCompletedTaskCountURL,
                    type: 'POST',
                    dataType: 'json',
                    data: {"department_no":_this.currentDepartmentStr},
                    success: function (data) {
                        _this.isError = data.status == 0;
                        if (!_this.isError) {
                            //TODO:
                            _this.totalPage = parseInt(data.info)
                            _this.fetchTask()
                        } else {
                            _this.isError = true;
                            _this.errorMsg = '获取小组信息失败！'
                        }
                    },
                    error: function (info) {
                        _this.isError = true;
                        _this.errorMsg = '服务器访问出错';
                    }
                })
            },
            fetchTask() {

                $.ajax({
                    url: _this.fetchNotCompletedTaskURL,
                    type: 'POST',
                    dataType: 'json',
                    data: {"department_no":_this.currentDepartmentStr,"start_record":_this.startRecord, "page_size":_this.pageSize},
                    success: function (data) {
                        _this.isError = data.status == 0;
                        if (!_this.isError) {
                            _this.tableData = data.info
                            //showMessage(_this, '获取作业任务成功！', 1);
                        } else {
                            showMessage(_this, '获取作业任务失败！', 0);
                        }
                    },
                    error: function (info) {
                        showMessage(_this, '服务器访问出错！', 0);
                    }
                })
            },

            fetchDepartmentUsers() {
              $.ajax({
                url: _this.getPersonUrl,
                type: 'POST',
                dataType: 'json',
                data: {"department_no":_this.currentDepartmentStr},
                success: function (data) {
                  _this.isError = data.status == 0;
                  if (!_this.isError) {
                    _this.departmentUsers = data.info
                    //alert(JSON.stringify(_this.departmentUsers));
                  } else {
                    showMessage(_this, '获取部门用户失败！', 0);
                  }
                },
                error: function (info) {
                  showMessage(_this, '服务器访问出错！', 0);
                }
              })
            },
            tableRowClass(row, index) {

                //getTaskStatus()
                if (row.state === "1") {
                    return 'not-start-row';
                } else if (row.state === "2") {
                    return 'working-row';
                } else if (row.state === "3") {
                    return 'finished-row';
                }else if (row.state === "4") {
                    return 'canceled-row';
                }
                return '';
            },


            startTask() {
                //alert(JSON.stringify(this.selectedContentInfo))
              //修复无法是开始或者结束多个作业任务的问题 2017-06-14
//                if(this.selectedContentInfo == "") {
//                    showMessage(this, "请先选择作业任务！", 0)
//                } else if(this.selectedContentInfo.state != "1") {
//                    showMessage(this, "作业任务已开始！", 0)
//                } else {
//                    this.startConfirmVisible = true;
//                }
              if(this.multipleTaskSelection.length == 0) {
                    showMessage(this, "请先选择作业任务！", 0)
                } else {
                var ready = true;
                for(var i=0; i< this.multipleTaskSelection.length && ready; i++) {
                  if(_this.multipleTaskSelection[i].state != "1") {
                    ready = false;
                  }
                }
                if(ready) {
                    this.startConfirmVisible = true;
                } else {
                  showMessage(this, "包含已开始或者结束的作业任务！", 0)
                }
              }
            },
            onConfirmStart() {
                this.startConfirmVisible = false;
                //alert(JSON.stringify(_this.multipleTaskSelection));
                $.ajax({
                    url: _this.startTaskURL,
                    type: 'POST',
                    dataType: 'json',
                    data: {"content":JSON.stringify(_this.multipleTaskSelection)},
                    success: function (data) {
                        _this.isError = data.status == 0;
                        if (!_this.isError) {
                            //_this.selectedContentInfo.state = "2";
                            for(var i=0; i<_this.multipleTaskSelection.length;i++) {
                                _this.multipleTaskSelection[i].state = "2";
                            }
                            _this.fetchTask();
                            showMessage(_this, '开始作业内容成功！', 1);
                        } else {
                            showMessage(_this, '开始作业内容失败！', 0);
                        }
                    },
                    error: function (info) {
                        showMessage(_this, '访问服务器出错！', 0);
                    }
                })
            },

            endTask() {
            //alert(JSON.stringify(this.selectedContentInfo))
            if(this.multipleTaskSelection.length == 0) {
              showMessage(this, "请先选择作业任务！", 0)
            } else {
                var ready = true;
                for(var i=0; i< this.multipleTaskSelection.length && ready; i++) {
                    if(_this.multipleTaskSelection[i].state == "3") {
                        ready = false;
                    }
                }
                if(ready) {
              this.endConfirmVisible = true;
                } else {
                    showMessage(this, "包含已结束的作业任务！", 0)
                }
//                if(this.selectedContentInfo.state == "3") {
//                    showMessage(this, "作业任务已结束！", 0)
//                } else if(this.selectedContentInfo.state == "1") {
//                    showMessage(this, "作业任务未开始！", 0)
//                } else {
//                    this.endConfirmVisible = true;
//                }
            }
          },
            onConfirmEnd() {
            this.endConfirmVisible = false;
            $.ajax({
              url: _this.endTaskURL,
              type: 'POST',
              dataType: 'json',
              data: {"content":JSON.stringify(_this.multipleTaskSelection)},
              success: function (data) {
                _this.isError = data.status == 0;
                if (!_this.isError) {
                  //_this.selectedContentInfo.state = "3";
                    for(var i=0; i<_this.multipleTaskSelection.length;i++) {
                        _this.multipleTaskSelection[i].state = "3";
                    }
                  _this.fetchTask();
                  showMessage(_this, '结束作业内容成功！', 1);
                } else {
                  showMessage(_this, '结束作业内容失败！', 0);
                }
              },
              error: function (info) {
                showMessage(_this, '访问服务器出错！', 0);
              }
            })
          },

          cancelTask(){
              if(this.multipleTaskSelection.length == 0){
                  showMessage(this, "未选择作业内容！", 0);
              }else{
                 this.cancelTaskConfirmVisible = true;
              }
            
          },
          onConfirmCancelTask(){
              this.cancelTaskConfirmVisible = false;
              for(let i = 0; i < this.multipleTaskSelection.length; i++){
                  if(this.multipleTaskSelection[i].state == "2"){
                      this.multipleTaskSelection[i].state = "1";
                  }
              }
              this.multipleTaskSelection = [];
              this.$refs.tableContent.clearSelection();
              showMessage(this, "取消作业成功", 1);
          },

          endTaskPlan() {
            let allFinished = true;
            //alert(JSON.stringify(this.selectedContentInfo))
            if(this.taskContentData == "") {
              showMessage(this, "作业内容为空！", 0)
            } else {

              for(let i=0; i < this.taskContentData.length; i++) {
                if(this.taskContentData[i].state != "3") {
                  allFinished = false;
                  showMessage(this, "请结束所有作业内容后再出库！", 0)
                  break;
                }
              }
              if(allFinished) {
                this.endTaskPlanConfirmVisible = true;
              }
            }
          },
            onConfirmEndTaskPlan() {
            this.endTaskPlanConfirmVisible = false;
            $.ajax({
              url: _this.endTaskPlanURL,
              type: 'POST',
              dataType: 'json',
              data: {'task_number': _this.taskContentData[0].task_number },
              success: function (data) {
                _this.isError = data.status == 0;
                if (!_this.isError) {
                  _this.fetchTask();
                  showMessage(_this, '车辆出库成功！', 1);
                } else {
                  showMessage(_this, '车辆出库失败！', 0);
                }
              },
              error: function (info) {
                showMessage(_this, '访问服务器出错！', 0);
              }
            })
          },

            validateTroubleForm(formObj){
                var iserror = false;
                if (isStringEmpty(formObj.content)) {
                    iserror = true;
                    this.errorMsg = '内容不能为空！';
                }
                if(!iserror&&isStringEmpty(formObj.font_color))
                {
                    iserror = true;
                    this.errorMsg = '字体不能为空！';
                }

                if (isStringEmpty(formObj.department_no)) {
                    iserror = true;
                    this.errorMsg = '部门不能为空！';
                }

                return iserror;
            },

            addTrouble() {
                this.isError = false;
                this.addTroubleDialogVisible = true;
            },
            onConfirmTrouble() {
                _this.isError = this.validateTroubleForm(this.troubleForm);
                if (!_this.isError) {
                    $.ajax({
                        url: _this.addTroubleUrl,
                        type: 'POST',
                        dataType: 'json',
                        data: _this.troubleForm,
                        success: function (data) {
                            _this.isError = data.status == 0;
                            if (!_this.isError) {
                                //TODO:更新故障列表
                                _this.addTroubleDialogVisible = false;
                                _this.getTroubleList();
                                showMessage(_this, '添加故障成功', 1);
                            } else {
                                showMessage(_this, '添加故障失败', 0);
                            }
                        },
                        error: function (info) {
                            showMessage(_this, '访问服务器出错！', 0);
                        }
                    })
                }
            },

            validateSituationForm(formObj){
                var iserror = false;
                if (isStringEmpty(formObj.situation_content)) {
                    iserror = true;
                    this.errorMsg = '内容不能为空！';
                }
                if (!iserror && isStringEmpty(formObj.department_no)) {
                    iserror = true;
                    this.errorMsg = '部门不能为空！';
                }
                if (!iserror && isStringEmpty(formObj.font_color)) {
                    iserror = true;
                    this.errorMsg = '字体不能为空！';
                }
                return iserror;
            },
            addSituation() {
                this.isError = false;
                this.addSituationDialogVisible = true;
            },
            onConfirmSituation() {
                _this.isError = this.validateSituationForm(this.situationForm);
                if (!_this.isError) {
                    $.ajax({
                        url: _this.addSituationUrl,
                        type: 'POST',
                        dataType: 'json',
                        data: _this.situationForm,
                        success: function (data) {
                            if (!_this.isError) {
                                //TODO:更新故障列表
                                _this.addSituationDialogVisible = false;
                                //_this.getSituationList();
                                showMessage(_this, '添加情况说明成功', 1);
                            } else {
                                showMessage(_this, '添加情况说明失败', 0);
                            }
                        },
                        error: function (info) {
                            showMessage(_this, '访问服务器出错！', 0);
                        }
                    })
                }
            },

            clearFormData() {
                this.personForm.account = '';
                this.personForm.name = '';
                this.personForm.task_group_name = '';
                this.personForm.department_no = '';
                this.personForm.work_group_no = ""
            },

            aLeftAdd(index){
              this.currentAddIndicator = 1;
              this.multiPersonSelection.splice(0, this.multiPersonSelection.length);
              this.addPersonDialogVisible = true;
            },
            handleALeftClose(item, index){
                this.selectedContentInfo.a_left.splice(index,1);
            },
            aRightAdd(index){
              this.currentAddIndicator = 2;
                this.multiPersonSelection.splice(0, this.multiPersonSelection.length);
              this.addPersonDialogVisible = true;
            },
            handleARightClose(item, index){
                this.selectedContentInfo.a_right.splice(index,1);
            },
            bLeftAdd(index){
              this.currentAddIndicator = 3;
                this.multiPersonSelection.splice(0, this.multiPersonSelection.length);
              this.addPersonDialogVisible = true;
            },
            handleBLeftClose(item, index){
                this.selectedContentInfo.b_left.splice(index,1);
            },
            bRightAdd(index){
              this.currentAddIndicator = 4;
                this.multiPersonSelection.splice(0, this.multiPersonSelection.length);
              this.addPersonDialogVisible = true;
            },
            handleBRightClose(item, index){
                this.selectedContentInfo.b_right.splice(index,1);
            },
            aLeaderAdd(index){
              this.currentAddIndicator = 5;
                this.multiPersonSelection.splice(0, this.multiPersonSelection.length);
              this.addPersonDialogVisible = true;

            },
            handleALeaderClose(item, index){
                this.selectedContentInfo.a_leader.splice(index,1);
            },
            bLeaderAdd(index){
              this.currentAddIndicator = 6;
                this.multiPersonSelection.splice(0, this.multiPersonSelection.length);
              this.addPersonDialogVisible = true;

            },
            handleBLeaderClose(item, index){
                this.selectedContentInfo.b_leader.splice(index,1);
            },
            aQualityAdd(index){
              this.currentAddIndicator = 7;
                this.multiPersonSelection.splice(0, this.multiPersonSelection.length);
              this.addPersonDialogVisible = true;

            },
            handleAQualityClose(item, index){
                this.selectedContentInfo.a_quality.splice(index,1);
            },
            bQualityAdd(index){
              this.currentAddIndicator = 8;
                this.multiPersonSelection.splice(0, this.multiPersonSelection.length);
              this.addPersonDialogVisible = true;
            },
            handleBQualityClose(item, index){
                this.selectedContentInfo.b_quality.splice(index,1);
            },
            onConfirmAddPerson() {
                this.addPersonDialogVisible = false;
                switch (this.currentAddIndicator) {
                    case 1:
                        for(let i=0; i< this.multiPersonSelection.length; i++) {
                            let found = false;
                            for(let j=0; j< this.selectedContentInfo.a_left.length && !found; j++) {
                                if(this.selectedContentInfo.a_left[j] == this.multiPersonSelection[i].account){
                                    found = true;
                                }
                            }
                            if(!found) {
                                this.selectedContentInfo.a_left.push(this.multiPersonSelection[i].account);
                            }
                        }

                        break;
                    case 2:
                        for(let i=0; i< this.multiPersonSelection.length; i++) {
                            let found = false;
                            for(let j=0;  j<this.selectedContentInfo.a_right.length && !found; j++) {
                                if(this.selectedContentInfo.a_right[j] == this.multiPersonSelection[i].account){
                                    found = true;
                                }
                            }
                            if(!found) {
                                this.selectedContentInfo.a_right.push(this.multiPersonSelection[i].account);
                            }
                        }
                        break;
                    case 3:
                        for(let i=0; i< this.multiPersonSelection.length; i++) {
                            let found = false;
                            for(let j=0; j<this.selectedContentInfo.b_left.length && !found; j++) {
                                if(this.selectedContentInfo.b_left[j] == this.multiPersonSelection[i].account){
                                    found = true;
                                }
                            }
                            if(!found) {
                                this.selectedContentInfo.b_left.push(this.multiPersonSelection[i].account);
                            }
                        }
                        break;
                    case 4:
                        for(let i=0; i< this.multiPersonSelection.length; i++) {
                            let found = false;
                            for(let j=0; j<this.selectedContentInfo.b_right.length && !found; j++) {
                                if(this.selectedContentInfo.b_right[j] == this.multiPersonSelection[i].account){
                                    found = true;
                                }
                            }
                            if(!found) {
                                this.selectedContentInfo.b_right.push(this.multiPersonSelection[i].account);
                            }
                        }
                        break;
                    case 5:
                        for(let i=0; i< this.multiPersonSelection.length; i++) {
                            let found = false;
                            for(let j=0; j<this.selectedContentInfo.a_leader.length && !found; j++) {
                                if(this.selectedContentInfo.a_leader[j] == this.multiPersonSelection[i].account){
                                    found = true;
                                }
                            }
                            if(!found) {
                                this.selectedContentInfo.a_leader.push(this.multiPersonSelection[i].account);
                            }
                        }
                        break;
                    case 6:
                        for(let i=0; i< this.multiPersonSelection.length; i++) {
                            let found = false;
                            for(let j=0; j<this.selectedContentInfo.b_leader.length && !found; j++) {
                                if(this.selectedContentInfo.b_leader[j] == this.multiPersonSelection[i].account){
                                    found = true;
                                }
                            }
                            if(!found) {
                                this.selectedContentInfo.b_leader.push(this.multiPersonSelection[i].account);
                            }
                        }
                        break;
                    case 7:
                        for(let i=0; i< this.multiPersonSelection.length; i++) {
                            let found = false;
                            for(let j=0; j<this.selectedContentInfo.a_quality.length && !found; j++) {
                                if(this.selectedContentInfo.a_quality[j] == this.multiPersonSelection[i].account){
                                    found = true;
                                }
                            }
                            if(!found) {
                                this.selectedContentInfo.a_quality.push(this.multiPersonSelection[i].account);
                            }
                        }
                        break;
                    case 8:
                        for(let i=0; i< this.multiPersonSelection.length; i++) {
                            let found = false;
                            for(let j=0; j<this.selectedContentInfo.b_quality.length && !found; j++) {
                                if(this.selectedContentInfo.b_quality[j] == this.multiPersonSelection[i].account){
                                    found = true;
                                }
                            }
                            if(!found) {
                                this.selectedContentInfo.b_quality.push(this.multiPersonSelection[i].account);
                            }
                        }
                        break;
                }
            },

            search() {
              this.fetchPersonCount();
            },
            getTroubleList(){
                $.ajax({
                    url: _this.getTroubleUrl,
                    type: 'POST',
                    dataType: 'json',
                    data: {"department_no": _this.currentDepartmentStr},
                    success: function (data) {
                        if (data.status) {
                            _this.troubleList = data.info;
                        }
                    }
                })
            },
            getSituationList() {
                $.ajax({
                    url: _this.getSituationUrl,
                    type: 'POST',
                    dataType: 'json',
                    data: {"department_no": _this.currentDepartmentStr},
                    success: function (data) {
                        if (data.status) {
                            _this.situationList = data.info;
                        }
                    }
                })
            },
            getPersonList() {
                if(this.activePartID && this.activePartID != "001") {
                    this.personForm.department_no =  this.activePartID
                } else {
                    this.personForm.department_no = this.currentDepartmentStr;
                }
              this.personForm.work_group_no = this.activeWorkGroupID;
              this.personForm.start_record = _this.startRecordPerson;
              this.personForm.page_size = _this.pageSizePerson;
              $.ajax({
                url: _this.getPersonUrl,
                type: 'POST',
                dataType: 'json',
                data: this.personForm,
                success: function (data) {
                  if (data.status) {
                    _this.searchedPersonData = data.info;
                    _this.personForm.task_group_name = "";
                  }
                },
                error: function (info) {
                    _this.personForm.task_group_name = "";
                 }
              })
            },
            fetchPersonCount(){
              //alert(this.currentDepartment)
              if(this.activePartID) {
                  this.personForm.department_no =  this.activePartID
              } else {
                  this.personForm.department_no = this.currentDepartmentStr;
              }
              this.personForm.work_group_no = this.activeWorkGroupID;
              this.personForm.start_record = null;
              $.ajax({
                url: _this.getPersonCountUrl,
                type: 'POST',
                dataType: 'json',
                data: this.personForm,
                success: function (data) {
                  _this.isError = data.status == 0;
                  if (!_this.isError) {
                    //TODO:
                    _this.totalPagePerson = parseInt(data.info)
                    _this.getPersonList()
                  } else {
                    _this.isError = true;
                    _this.errorMsg = '获取用户信息失败！'
                  }
                },
                error: function (info) {
                  _this.isError = true;
                  _this.errorMsg = '服务器访问出错';
                }
              })
            },
           
            chooseTaskGroup(index, taskGp) {


                this.activePartID = taskGp.department_no;
                this.activeWorkGroupID = "";
                this.personForm.task_group_name = taskGp.task_group_name;

                this.fetchPersonCount();
            },

            chooseWorkGroup(index, group) {
                this.activeWorkGroupIndex = index;
                this.activeWorkGroupID = group.work_group_no;
                //清除选择的部门
                this.activeIndex = -1;
                this.activePartID = "";
                this.fetchPersonCount();
                //this.form.department_no = part.department_no;
            },
            chooseSubPart(index, part) {
                this.activeIndex = index;
                this.activePartID = part.department_no;
                //清除之前选择的班组
                this.activeWorkGroupIndex = -1;
                this.activeWorkGroupID = "";
                this.fetchPersonCount();
                //this.form.department_no = part.department_no;
            },
            chooseParentPart(part) {
                this.activeIndex = -1;//-1为"第一级"， "0"开始为第二级
                this.activePartID = part.department_no;
                //清除之前选择的班组
                this.activeWorkGroupIndex = -1;
                this.activeWorkGroupID = "";
                this.fetchPersonCount();
                //this.form.department_no = part.department_no;
            },
            setPartInfo(list) {

                _this.partInfo = copyObject(list[0]);
                _this.partInfo.isShow = this.userInfo.department_no.length == 3;

                _this.partInfo.sub_parts = new Array();
                var subLit = list.slice(1);//remove the first item;
                for (var i in subLit) {
                    if (isNaN(parseInt(i))) {
                        continue;
                    }
                    var item = subLit[i];
                    var obj = {
                        id: item.id,
                        department_no: item.department_no,
                        department_name: item.department_name,
                        comment: item.comment,
                        sub_parts: [],
                        part_belong: {},
                        isShow: _this.partInfo.isShow ? true : _this.userInfo.department_no == item.department_no,
                    };
                    for (var j = 0; j < _this.allWorkGroup.length; j++) {
                        if (obj.department_no == _this.allWorkGroup[j].department_no) {
                            obj.sub_parts.push(
                                {
                                    work_group_no: _this.allWorkGroup[j].work_group_no,
                                    work_group_name: _this.allWorkGroup[j].work_group_name,
                                    department_no: _this.allWorkGroup[j].department_no,
                                });
                        }
                    }

                    obj.part_belong = copyObject(_this.partInfo);
                    _this.partInfo.sub_parts.push(obj);
                }
            },
            initAllDepart(){
                $.ajax({
                    url: _this.queryDepartmentUrl,
                    type: 'POST',
                    dataType: 'json',
                    data: {},
                    success: function (data) {
                        if (data.status) {
                            _this.allDepartments = data.info;
                            _this.setPartInfo(_this.allDepartments);
                        }
                    }
                })
            },
            initWorkGroup()
            {
                $.ajax({
                    url: _this.queryWorkGroupUrl,
                    type: 'POST',
                    dataType: 'json',
                    data: {},
                    success: function (data) {
                        if (data.status) {
                            _this.allWorkGroup = data.info;
                            _this.loadWorkGourpList();
                            _this.initAllDepart();
                        }
                    }
                })
            },

            loadWorkGourpList()
            {
                _this.workGroupList = new Array();
                for (var i = 0; i < _this.allWorkGroup.length; i++) {
                    var item = _this.allWorkGroup[i];
                    if (this.activePartID.length > 3 && item.department_no != this.activePartID) {
                        continue;
                    }
                    _this.workGroupList.push(copyObject(item));
                }
            },

        },
        computed: {
            currentDepartmentStr(){
                let $res = "";

                if(this.userInfo.department_no == "001") {
                    $res = "";//返回全部
                } else{
                    $res = this.userInfo.department_no;
                }
                return $res;
            },
        },
        filters: {
            filterTaskContent(id){
                let result = '';
                for(let i=0; i< _this.taskContent.length; i++) {
                    if(id == _this.taskContent[i].id) {
                        result = _this.taskContent[i].task_content;
                        break;
                    }
                }
                return result;
            },
            filterTrainColumnName(id){
                let result = '';
                for(let i=0; i< _this.trainColumn.length; i++) {
                    if(id == _this.trainColumn[i].id) {
                        result = _this.trainColumn[i].train_column;
                        break;
                    }
                }
                return result;
            },
            filterTrainModelName(id){
                let result = '';
                for(let i=0; i< _this.trainModel.length; i++) {
                    if(id == _this.trainModel[i].id) {
                        result = _this.trainModel[i].train_model;
                        break;
                    }
                }
                return result;
            },
            filterTrainGroup(id) {
              if(id == 1) {
                return 8;
              } else if( id == 2){
                return 16;
              }
            },
            filterStationTrackName(id){
                let result = '';
                for(let i=0; i< _this.stationStack.length; i++) {
                    if(id == _this.stationStack[i].id) {
                        result = _this.stationStack[i].station_track_no;
                        break;
                    }
                }
                return result;
            },
            filterRepairName(id){
                let result = '';
                for(let i=0; i< _this.repairInfo.length; i++) {
                    if(id == _this.repairInfo[i].id) {
                        result = _this.repairInfo[i].name;
                        break;
                    }
                }
                return result;
            },
            filterStatusName(value){
                let result = '';
                for(let i=0; i< getTaskStatus().length; i++) {
                    if(value == getTaskStatus()[i].value) {
                        result = getTaskStatus()[i].name;
                        break;
                    }
                }
                return result;
            },

            filterTaskContentStatusName(value){
                let result = '';
                for(let i=0; i< getTaskContentStatus().length; i++) {
                    if(value == getTaskContentStatus()[i].value) {
                        result = getTaskContentStatus()[i].name;
                        break;
                    }
                }
                return result;
            },
            filterWorkGroupName(no){
                let result = '';
                for(let i=0; i< _this.workGroup.length; i++) {
                    if(no == _this.workGroup[i].work_group_no) {
                        result = _this.workGroup[i].work_group_name;
                        break;
                    }
                }
                return result;
            },
            filterTaskGroupName(no){
              let result = '';
              for(let i=0; i< _this.taskGroup.length; i++) {
                if(no == _this.taskGroup[i].task_group_no) {
                  result = _this.taskGroup[i].task_group_name;
                  break;
                }
              }
              return result;
            },
            filterDepartmentName(id) {
                let result = '';
                for(let i=0; i< _this.department.length; i++) {
                    if(id == _this.department[i].department_no) {
                        result = _this.department[i].department_name;
                        break;
                    }
                }
                return result;
            },
            filterTroubleName(id) {
                let result = '';
                for(let i=0; i< _this.troubleList.length; i++) {
                    if(id == _this.troubleList[i].id) {
                        result = _this.troubleList[i].content;
                        break;
                    }
                }
                return result;
            },

            filterSituationName(id) {
                let result = '';
                for(let i=0; i< _this.situationList.length; i++) {
                    if(id == _this.situationList[i].id) {
                        result = _this.situationList[i].situation_content;
                        break;
                    }
                }
                return result;
            },
          filterUserName(account) {
            let result = '';
            for(let i=0; i< _this.departmentUsers.length; i++) {
              if(account == _this.departmentUsers[i].account) {
                result = _this.departmentUsers[i].name;
                break;
              }
            }
            return result;
          },

          filterPersonAddTitle(id) {
            if(id <=4) {
              return "添加作业人员"
            } else if(id <= 6) {
              return "添加作业组长"
            } else {
              return "添加质检人员"
            }
          },
            filterWorkGroupClass(id) {
                if(_this.activeWorkGroupID == id) {
                    return "subPart"
                }  else {
                    return "subPartNormal"
                }
            },
            filterWorkGroupName(no) {
                let result = '';
                for(let i=0; i< _this.allWorkGroup.length; i++) {
                    if(no == _this.allWorkGroup[i].work_group_no) {
                        result = _this.allWorkGroup[i].work_group_name;
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
                this.department.push({"department_no":this.userInfo.department_no, "department_name":this.userInfo.department_name})
            } else{
                this.department =JSON.parse(sessionStorage.getItem('departments'));
            }

            this.statusArr = getTaskStatus();
            //获取修程信息（与部门无关）
            this.fetchRepairInfo();
            this.fetchDepartmentRelatedInfo();
            this.fetchTaskCount();
            this.fetchDepartmentUsers();
            this.initWorkGroup();
        },
        mounted: function () {
        },
    }

</script>
<style>

    .el-table .positive-row {
        background: #a9e5f5;
    }
    .parentPart {
        width: 200px;
        color: #475669;
        font-size: medium;
        font-weight: bold
    }

    .subPart {
        width: 200px;
        color: #475669;
        font-weight: bold;
    }
    .subPartNormal {
        width: 200px;
        color: #475669;
        font-weight: normal;
    }
</style>

