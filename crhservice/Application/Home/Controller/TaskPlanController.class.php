<?php
/**
 * Created by PhpStorm.
 * User: PC-LHF
 * Date: 2017-03-03
 * Time: 10:23
 */

namespace Home\Controller;
header("Access-Control-Allow-Origin: *");
use Think\Controller;
use Home\Common\ExcelOperationHelper;
use Home\Common\ExcelHelper;


class TaskPlanController extends Controller
{
    public function getRecordsCount()
    {
        $result = D("TaskPlan")->getRecordsCount($_POST);
        $this->success($result, null, true);
    }

    public function getNotCompletedRecordsCount()
    {
        $result = D("TaskPlan")->getNotCompletedRecordsCount($_POST);
        $this->success($result, null, true);
    }

    public function getRecords()
    {
        $result = D("TaskPlan")->getRecords($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function getNotCompletedRecords()
    {
        $result = D("TaskPlan")->getNotCompletedRecords($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }


    public function fetchDepartRelInfo()
    {
        $result = D("TaskPlan")->fetchDepartRelInfo($_POST);
        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function addData()
    {
        $result = null;
        $result = D('TaskPlan')->addData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function deleteData()
    {
        $result = null;
        $result = D('TaskPlan')->deleteData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function modifyData()
    {
        $result = null;
        $result = D('TaskPlan')->modifyData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function endTaskPlan()
    {
        $result = null;
        $result = D('TaskPlan')->endTaskPlan($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function getGroupsNotFinished() {
        $result = null;
        $result = D('TaskPlan')->getGroupsNotFinished($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    #region #clean summary
    public function getTaskSummary()
    {
        $taskSummary = D('TaskPlan')->getTaskSummary($_POST);
        $resData['tasksummary'] = $taskSummary;

        $condition['isTotally'] = true;
        $condition = array_merge($condition, $_POST);
        $taskSummaryTotal = D('TaskPlan')->getTaskSummary($condition);
        $resData['taskSummaryTotal'] = $taskSummaryTotal;
        unset($condition);
        if ($resData) {
            $this->success($resData, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function getTaskSummaryCount()
    {
        $result = D('TaskPlan')->getTaskSummaryCount($_POST);
        $this->success($result, null, true);
    }
    #endregion

    #region #clean query
    public function getTaskQuery()
    {
        $resData = D('TaskPlan')->getTaskQuery($_POST);
        if ($resData) {
            $this->success($resData, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function getTaskQueryCount()
    {
        $result = D('TaskPlan')->getTaskQueryCount($_POST);
        $this->success($result, null, true);
    }
    #endregion

    #region #clean query
    public function getTaskStatistics()
    {
        $taskSummary = D('TaskPlan')->getTaskStatistics($_POST);
        $resData['taskStatisticsDate'] = $taskSummary;

        $condition['is_group_train'] = ture;
        $condition = array_merge($condition, $_POST);
        $taskStatisticsTrain = D('TaskPlan')->getTaskStatistics($condition);
        $resData['taskStatisticsTrain'] = $taskStatisticsTrain;
        unset($condition);
        if ($resData) {
            $this->success($resData, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function getTaskStatisticsCount()
    {
        $result = D('TaskPlan')->getTaskStatisticsCount($_POST);
        $this->success($result, null, true);
    }

    public function getTaskDetailStatistics()
    {
        $resData = D('TaskPlan')->getTaskDetailStatistics($_POST);
        if ($resData) {
            $this->success($resData, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function getTaskDetailStatisticsCount()
    {
        $result = D('TaskPlan')->getTaskDetailStatisticsCount($_POST);
        $this->success($result, null, true);
    }

    public function exportTaskStatisticsData()
    {
        $result = D('TaskPlan')->exportTaskDataGroupByDate($_POST);

        $result2 = D('TaskPlan')->exportTaskDataGroupByTrainModeName($_POST);

        $resData = $result;

        $SumNumber = 0;
        for ($i = 0; $i < max(count($result),count($result2)); $i++) {
            $SumNumber = $result[$i]["task_count"] + $SumNumber;

            if($i < count($result))
            {
                $resData[$i]["task_Cumulative"] = $SumNumber;
            }

            $resData[$i]["train_model_name"] = $result2[$i]['train_model_name'];
            $resData[$i]["task_count_model"] = $result2[$i]['task_count'];
        }
        //var_dump( $resData);

        $columnHeader = Array('日期'   => 'task_date','标准组数' => 'task_count',
             '累计标准组数' => 'task_Cumulative',
             '车型' =>'train_model_name',
             '数量' =>'task_count_model'
        );
        $dtNow = new \DateTime('now', new \DateTimeZone('UTC'));
        $str = $dtNow->format('Ymd');
        $fileTemplate = "TaskContent.xlsx";
        $resultFile = "作业内容统计".$str.".xlsx";
        $filname = ExcelOperationHelper::getInstance()->exportToExcel($resData, $columnHeader, $fileTemplate, $resultFile);

        $this->success($filname, null, true);
    }

    public function exportXiWuRelatedTaskDataGroupByDate()
    {
        $result = D('TaskPlan')->exportXiWuRelatedTaskDataGroupByDate($_POST);

        $resultTrainMode = D('TaskPlan')->exportTaskDataGroupByTrainModeName($_POST);

        $resData =  $result;

        $SumTaskNumber = 0;
        $rubbish_box_Cumulative= 0;
        for ($i = 0; $i < max(count($result),count($resultTrainMode)); $i++) {
            $SumTaskNumber = $result[$i]["task_count"] + $SumTaskNumber;
            $rubbish_box_Cumulative   = $result[$i]["rubbish_box_sum"] + $rubbish_box_Cumulative;
            if($i < count($result))
            {
                $resData[$i]["task_Cumulative"] = $SumTaskNumber;
                $resData[$i]["RubbishBox_Cumulative"] = $rubbish_box_Cumulative;
            }

            $resData[$i]["train_model_name"] = $resultTrainMode[$i]['train_model_name'];
            $resData[$i]["task_count_model"] = $resultTrainMode[$i]['task_count'];
        }
        //var_dump( $resData);

        $columnHeader = Array('日期'   => 'task_date','数量' => 'task_count',
            '累计数' => 'task_Cumulative',
            '集便箱只数' =>'rubbish_box_sum',
            '累计只数' =>'RubbishBox_Cumulative',
            '车型' =>'train_model_name',
            '数量 ' =>'task_count_model'
        );
        $dtNow = new \DateTime('now', new \DateTimeZone('UTC'));
        $str = $dtNow->format('Ymd');
        $fileTemplate = "TaskContent_XiWu.xls";
        $resultFile = "作业内容统计（吸污相关）".$str.".xls";
        $filname = ExcelOperationHelper::getInstance()->exportToExcel($resData, $columnHeader, $fileTemplate, $resultFile);

        $this->success($filname, null, true);
    }


    public function exportCleanQueryStatics()
    {
        $result = D('TaskPlan')->exportCleanQueryStatics($_POST);
        $columnHeader = Array('工作内容' => 'task_content', '计划车组号' => 'train_column_name',
            '实际车组号' => 'train_column_nameactual',
            '数量' => 'task_count'
        );

        $dtNow = new \DateTime('now', new \DateTimeZone('UTC'));
        $str = $dtNow->format('Ymd');

        $fileTemplate = "BaoJieXiWu.xlsm";
        $resultFile = "保洁吸污查询".$str.".xlsm";
        $filname = ExcelOperationHelper::getInstance()->exportToExcel($result, $columnHeader, $fileTemplate, $resultFile);

        $this->success($filname, null, true);
    }
    public function exportCleanQuerySummary()
    {

    }

    public function exportYiCheYiDang()
    {
       $result = null;

       try {
                    $yiCheYiDang = $_POST['taskYiCheYiDangForPrint'];
                    $objArray = json_decode($yiCheYiDang);
                    $obj =  $objArray[0];
                    //get execel work sheet
                    $dtNow = new \DateTime('now', new \DateTimeZone('UTC'));
                    $str = $dtNow->format('Ymd');
                    $fileTemplate = "YicheYiDangChaXun.xlsx";
                    $fileres = "一车一档".$str.".xlsx";
                    $sheetNum = 1;
                    $objSheet = ExcelOperationHelper::getInstance()->getWorkSheet($fileTemplate, $Worksheet, $WorkbookThisWorkbook, $excelApplication,$sheetNum);
                    $Worksheet = $objSheet[0];
                    $WorkbookThisWorkbook = $objSheet[1];
                    $excelApplication = $objSheet[2];
            //print 1st part
                    $informationPosition = Array('作业日期'=>'A5','作业时间'=>'C5','车列号'=>'D5','车型'=>'E5','股道'=>'G5',
                    '修程'=>'I5','修程项目'=>'K5','车组类型'=>'O5');
                    
                    $item = $informationPosition["作业日期"];
                    $cell = $Worksheet->Range($item);
                    if( $item != null)
                    {
                        $cell->value =  $obj->task_date;
                    }
                    $item = $informationPosition["作业时间"];
                    $cell = $Worksheet->Range($item);
                    if( $item != null)
                    {
                        $cell->value =  $obj->task_time;
                    }
                    $item = $informationPosition["车列号"];
                    $cell = $Worksheet->Range($item);
                    if( $item != null)
                    {
                        $cell->value = $obj->train_columnName;
                    }
                    $item = $informationPosition["车型"];
                    $cell = $Worksheet->Range($item);
                    if( $item != null)
                    {
                        $cell->value = $obj->train_modelName;
                    }
                    $item = $informationPosition["股道"];
                    $cell = $Worksheet->Range($item);
                    if( $item != null)
                    {
                        $cell->value = $obj->station_TrackName;
                    }
                    $item = $informationPosition["修程"];
                    $cell = $Worksheet->Range($item);
                    if( $item != null)
                    {
                        $cell->value = $obj->RepairName;
                    }
                    $item = $informationPosition["修程项目"];
                    $cell = $Worksheet->Range($item);
                    if( $item != null)
                    {
                        $cell->value =  "\n".str_replace(",",";\n",$obj->RepairItems)."\n";
                        //$cell->EntireRow->AutoFit();
                        //$cell->EntireRow->Font->Strikethrough  = True;
                        //$Worksheet->Rows('5:6')->AutoFit();
                    }
                    $item = $informationPosition["车组类型"];
                    $cell = $Worksheet->Range($item);
                    if( $item != null)
                    {
                        $cell->value =  $obj->train_groupName;
                    }
                    //print 2nd part
                    $taskPosition = Array('序号'=>'A','作业内容'=>'B','开始时间'=>'C','结束时间'=>'D','故障状态'=>'E',
                    '情况说明'=>'G','一列位左'=>'I','一列位右'=>'J','二列位左'=>'K','二列位右'=>'L','作业组长一列位'=>'M',
                    '作业组长二列位'=>'N','质检人员一列位'=>'O','质检人员二列位'=>'P');
                $taskNum['task_number'] = $obj->task_number;
                $taskDetail = D("TaskPlanDetail")->getRecords($taskNum);
                $taskPortName = D('TaskPlanDetail')->getPortName($taskNum);
                //$troublelist =  ;
                $troubleContent = "";
                foreach(D("trouble_maintain")->getRecords() as $trouble)
                {
                        $troubleContent[$trouble['id']]=$trouble['content'];
                }
                //$situationlist =  D("SituationContent")->getRecords();
                $situationContent = "";
                foreach(D("SituationContent")->getRecords() as $situation)
                {
                        $situationContent[$situation['id']]=$situation['situation_content'];
                }
                    //taske details
                    $taskStartNum = 11;
                    $i=0;
                    foreach($taskDetail as $value){
                        //if($value->category!="Start"&&$value->category!="End"){
                            $cell = $Worksheet->Range($taskPosition['序号'].($i+$taskStartNum));
                            $cell->value =  $i+1;
                            $task_contentQuery['id'] = $value['task_content_id'];
                            $TaskContent = D("TaskContent")->getRecords($task_contentQuery);
                            if($TaskContent!= null)
                            {
                                $cell = $Worksheet->Range($taskPosition['作业内容'].($i+$taskStartNum));
                                $cell->value =  $TaskContent[0]['task_content'];
                            }

                            $cell = $Worksheet->Range($taskPosition['开始时间'].($i+$taskStartNum));
                            $cell->value =  str_replace(" ","\n",$value['begin_time']);

                            $cell = $Worksheet->Range($taskPosition['结束时间'].($i+$taskStartNum));
                            $cell->value =  str_replace(" ","\n",$value['end_time']);

                            $cell = $Worksheet->Range($taskPosition['故障状态'].($i+$taskStartNum));
                            $toubleliststring = "\n";
                            foreach($value['trouble_maintain_id'] as $troubleMaitainid)
                            {
                                    $toubleliststring =  $toubleliststring.$troubleContent[$troubleMaitainid].";  \r\n";
                            }                
                            $cell->value =  $toubleliststring;
                            
                            $cell = $Worksheet->Range($taskPosition['情况说明'].($i+$taskStartNum));
                            $situationliststring = "\n";
                            foreach($value['situation_content_id'] as $situationcontentid)
                            {
                                    $situationliststring =  $situationliststring.$situationContent[$situationcontentid].";  \r\n";
                            }
                            $cell->value =  $situationliststring;

                            $users = $value['a_left'];
                            if($users!=null)
                            {
                                $usernameList = "\n";
                                foreach($users as $userID)
                                {
                                    $account['account'] = $userID;
                                    $user = $userInfor = D("UserInfo")->getRecords($account,false);

                                    $usernameList = $usernameList.$user[0]['name']." \n";
                                }

                                $cell = $Worksheet->Range($taskPosition['一列位左'].($i+$taskStartNum));
                                $cell->value =  $usernameList;
                            }              


                            $users = $value['a_right'];
                            if($users!=null)
                            {
                                $usernameList = "\n";
                                foreach($users as $userID)
                                {
                                    $account['account'] = $userID;
                                    $user = $userInfor = D("UserInfo")->getRecords($account,false);

                                    $usernameList = $usernameList.$user[0]['name']." \r\n";
                                }

                                $cell = $Worksheet->Range($taskPosition['一列位右'].($i+$taskStartNum));
                                $cell->value =  $usernameList;
                            }

                            $users = $value['b_left'];
                            if($users!=null)
                            {
                                $usernameList = "\n";
                                foreach($users as $userID)
                                {
                                    $account['account'] = $userID;
                                    $user = $userInfor = D("UserInfo")->getRecords($account,false);

                                    $usernameList = $usernameList.$user[0]['name']." \r\n";
                                }

                                $cell = $Worksheet->Range($taskPosition['二列位左'].($i+$taskStartNum));
                                $cell->value = $usernameList;
                            }


                            $users = $value['b_right'];
                            if($users!=null)
                            {
                                $usernameList = "\n";
                                foreach($users as $userID)
                                {
                                    $account['account'] = $userID;
                                    $user = $userInfor = D("UserInfo")->getRecords($account,false);

                                    $usernameList = $usernameList.$user[0]['name']." \r\n";
                                }

                                $cell = $Worksheet->Range($taskPosition['二列位右'].($i+$taskStartNum));
                                $cell->value =  $usernameList;   
                            }

                            $users = $value['a_leader'];
                            if($users!=null)
                            {
                                $usernameList = "\n";
                                foreach($users as $userID)
                                {
                                    $account['account'] = $userID;
                                    $user = $userInfor = D("UserInfo")->getRecords($account,false);

                                    $usernameList = $usernameList.$user[0]['name']." \r\n";
                                }

                                $cell = $Worksheet->Range($taskPosition['作业组长一列位'].($i+$taskStartNum));
                                $cell->value =  $usernameList;
                            }

                            $users = $value['b_leader'];
                            if($users!=null)
                            {
                                $usernameList = "\n";
                                foreach($users as $userID)
                                {
                                    $account['account'] = $userID;
                                    $user = $userInfor = D("UserInfo")->getRecords($account,false);

                                    $usernameList = $usernameList.$user[0]['name']." \r\n";
                                }

                                $cell = $Worksheet->Range($taskPosition['作业组长二列位'].($i+$taskStartNum));
                                $cell->value =  $usernameList;
                            }

                            $users = $value['a_quality'];
                            if($users!=null)
                            {
                                $usernameList = "\n";
                                foreach($users as $userID)
                                {
                                    $account['account'] = $userID;
                                    $user = $userInfor = D("UserInfo")->getRecords($account,false);

                                    $usernameList = $usernameList.$user[0]['name']." \r\n";
                                }

                                $cell = $Worksheet->Range($taskPosition['质检人员一列位'].($i+$taskStartNum));
                                $cell->value =  $usernameList;
                            }

                            $users = $value['b_quality'];
                            if($users!=null)
                            {
                                $usernameList = "\n";
                                foreach($users as $userID)
                                {
                                    $account['account'] = $userID;
                                    $user = $userInfor = D("UserInfo")->getRecords($account,false);

                                    $usernameList = $usernameList.$user[0]['name']." \r\n";
                                }

                                $ll = $taskPosition['质检人员二列位'].($i+$taskStartNum);

                                $cell = $Worksheet->Range($taskPosition['质检人员二列位'].($i+$taskStartNum));
                                $cell->value =  $usernameList;
                            }

                            //$cell->EntireRow->AutoFit();

                            $i++;
                        //}
                    }

                    //modify the portname:
                    //$taskPortName
                    $portNamePosition = $taskPosition;
                    //Array('一列位左'=>'G10','一列位右'=>'H10','二列位左'=>'I10','二列位右'=>'J10','作业组长一列位'=>'K10',
                    //'作业组长二列位'=>'L10','质检人员一列位'=>'M10','质检人员二列位'=>'N10');

                    if( $taskPortName != null)
                    {
                        $name = $taskPortName["a_left"];
                        $cell = $Worksheet->Range($portNamePosition["一列位左"].($taskStartNum-1));
                        $cell->value =  $name !=null ? $name : "";

                        $cell = $Worksheet->Range($portNamePosition["一列位右"].($taskStartNum-1));
                        $name =  $taskPortName["a_right"];
                        $cell->value =  $name !=null ? $name : "";

                        $cell = $Worksheet->Range($portNamePosition["二列位左"].($taskStartNum-1));
                        $name =  $taskPortName["b_left"];
                        $cell->value =  $name !=null ? $name : "";
                                    
                        $cell = $Worksheet->Range($portNamePosition["二列位右"].($taskStartNum-1));
                        $name =  $taskPortName["b_right"];
                        $cell->value =  $name !=null ? $name : "";

                        $cell = $Worksheet->Range($portNamePosition["作业组长一列位"].($taskStartNum-1));
                        $name =  $taskPortName["a_leader"];
                        $cell->value =  $name !=null ? $name : "";

                        $cell = $Worksheet->Range($portNamePosition["作业组长二列位"].($taskStartNum-1));
                        $name =  $taskPortName["b_leader"];
                        $cell->value =  $name !=null ? $name : "";

                        $cell = $Worksheet->Range($portNamePosition["质检人员一列位"].($taskStartNum-1));
                        $name =  $taskPortName["a_quality"];
                        $cell->value =  $name !=null ? $name : "";

                        $cell = $Worksheet->Range($portNamePosition["质检人员二列位"].($taskStartNum-1));
                        $name =  $taskPortName["b_quality"];
                        $cell->value =  $name !=null ? $name : "";
                    }

                //$Worksheet->Columns($taskPosition['一列位左'].":".$taskPosition["质检人员二列位"])->Font->Strikethrough  = True;
                $Worksheet->Columns($taskPosition['一列位左'].":".$taskPosition["质检人员二列位"])->AutoFit();

                
                //$Worksheet->Columns($taskPosition['作业内容'].":".$taskPosition["结束时间"])->Font->Strikethrough  = True;
                $Worksheet->Columns($taskPosition['作业内容'].":".$taskPosition["结束时间"])->AutoFit();

            //       $Worksheet->Columns($taskPosition['作业内容'])->AutoFit();

            //       $Worksheet->Columns($taskPosition['开始时间'].":".$taskPosition["结束时间"])->Font->Strikethrough  = True;
            //       $Worksheet->Columns($taskPosition['开始时间'])->AutoFit();

            //       $Worksheet->Columns($taskPosition['结束时间'])->Font->Strikethrough  = True;
            //       $Worksheet->Columns($taskPosition['开始时间'].":".$taskPosition["结束时间"])->AutoFit();

                //$Worksheet->Rows("$taskStartNum".":22")->Font->Strikethrough  = True;
                $Worksheet->Rows("$taskStartNum".":22")->AutoFit();

                //$selRange = "A1:".$taskPosition['质检人员二列位'].($i+7);
                $selRange = "A1:".$taskPosition['质检人员二列位']."25";
                //print and close the
                $result = ExcelOperationHelper::getInstance()->closeWorkSheet($WorkbookThisWorkbook,$Worksheet,$excelApplication,$selRange,true,$fileres); 

                $result['status'] = 1;
        }
        catch(Exception $e)
        {
             $result = null;
        }
        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }
    #endregion
}