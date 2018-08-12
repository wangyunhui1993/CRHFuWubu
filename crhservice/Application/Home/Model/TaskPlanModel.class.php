<?php
/**
 * Created by PhpStorm.
 * User: PC-LHF
 * Date: 2017-03-03
 * Time: 10:27
 */

namespace Home\Model;

use Org\Util\Date;
use Think\Model;

class TaskPlanModel extends Model
{
    public function getRecords($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            if (isset($condition['task_date'])&&$condition['task_date']!='') {
                $beginStr = $condition['task_date'][0];
                $endStr = $condition['task_date'][1];
                if ($beginStr == $endStr) {
                    $date = date("Y-m-d", strtotime($endStr . "+1 day"));
                    $endStr = $date;
                    $data .= " AND tp.task_date>='$beginStr' AND tp.task_date<='$endStr'";
                    $data .= " AND IF(tp.task_date='$beginStr', tp.task_time>='08:00:00', tp.task_time<='08:00:00')";
                } else {
                    $data .= " AND tp.task_date>='$beginStr' AND tp.task_date<='$endStr'";
                }
            }
            if (isset($condition['train_column'])&&$condition['train_column']!='') {
                $str = $condition['train_column'];
                $data .= " AND tp.train_column='$str' ";
            }
            if (isset($condition['station_track_no'])&&$condition['station_track_no']!='') {
                $str = $condition['station_track_no'];
                $data .= " AND tp.station_track_no='$str' ";
            }
            if (isset($condition['repair_id'])&&$condition['repair_id']!='') {
                $str = $condition['repair_id'];
                $data .= " AND tp.repair_id='$str' ";
            }
            if (isset($condition['state'])&&$condition['state']!='') {
                $str = $condition['state'];
                $data .= " AND tp.state='$str' ";
            }
            if (isset($condition['department_no'])&&$condition['department_no']!='') {
                $str = $condition['department_no'];
                $data .= " AND tc.department_no='$str' ";
            }

            if (isset($condition['taskContentlist'][0])) {

                $taskObjList = $condition['taskContentlist'];                
                $objStr=$objStr.'And tpd.task_content_id IN (-1';

                for ($i = 0; $i < sizeof($taskObjList); $i++) {
                    $objStr = $objStr.','.$taskObjList[$i];
                }

                $objStr=$objStr.')';

                $data .= $objStr;
            }
        }

        $list = M('task_plan')
            ->alias("tp")
            ->join("LEFT JOIN train_column AS tc ON(tc.id=tp.train_column) 
                    LEFT JOIN task_plan_detail tpd ON (tp.task_number = tpd.task_number)")
            ->where($data)
            ->field("tp.*,GROUP_CONCAT(tpd.task_content_id) as task_content_list")
            ->limit($condition['start_record'], $condition['page_size'])
            ->group("tp.task_number")
            ->select();
        for ($i = 0; $i < sizeof($list); $i++) {
            if ($list[$i]['task_content_list'] != null) {
                $list[$i]['task_content_list'] = explode(',', $list[$i]['task_content_list']);
            }
        }

        return $list;

    }

    public function fetchDepartRelInfo($condition = null)
    {
        $list['station_stack'] = D("StationTrack")->getRecords($condition);
        $list['work_group'] = D("WorkGroup")->getRecords($condition);
        $list['task_group'] = D("TaskGroup")->getRecords($condition);
        $list['task_content'] = D("TaskContent")->getRecords($condition);
        $list['train_column'] = D("TrainColumn")->getRecords($condition);
        $list['train_model'] = D("TrainModel")->getRecords($condition);
        return $list;

    }

    public function getRecordsCount($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['task_date']) {
                $beginStr = $condition['task_date'][0];
                $endStr = $condition['task_date'][1];
                if ($beginStr == $endStr) {
                    $date = date("Y-m-d", strtotime($endStr . "+1 day"));
                    $endStr = $date;
                    $data .= " AND tp.task_date>='$beginStr' AND tp.task_date<='$endStr'";
                    $data .= " AND IF(tp.task_date='$beginStr', tp.task_time>='08:00:00', tp.task_time<='08:00:00')";
                } else {
                    $data .= " AND tp.task_date>='$beginStr' AND tp.task_date<='$endStr'";
                }
            }
            if ($condition['train_column']) {
                $str = $condition['train_column'];
                $data .= " AND tp.train_column='$str' ";
            }
            if ($condition['station_track_no']) {
                $str = $condition['station_track_no'];
                $data .= " AND tp.station_track_no='$str' ";
            }
            if ($condition['repair_id']) {
                $str = $condition['repair_id'];
                $data .= " AND tp.repair_id='$str' ";
            }
            if ($condition['state']) {
                $str = $condition['state'];
                $data .= " AND tp.state='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND tc.department_no='$str' ";
            }

            if ($condition['taskContentlist'][0]) {

                $taskObjList = $condition['taskContentlist'];                
                $objStr=$objStr.'And tpd.task_content_id IN (-1';

                for ($i = 0; $i < sizeof($taskObjList); $i++) {
                    $objStr = $objStr.','.$taskObjList[$i];
                }

                $objStr=$objStr.')';

                $data .= $objStr;
            }
        }
        $list = M('task_plan')
            ->alias("tp")
            //->join("LEFT JOIN train_column AS tc ON(tc.id=tp.train_column)")
            ->join("LEFT JOIN train_column AS tc ON(tc.id=tp.train_column) 
                    LEFT JOIN task_plan_detail tpd ON (tp.task_number = tpd.task_number)")
            ->where($data)
            ->group("tp.task_number")
            ->field("tp.task_number")
            ->select();
            //->count();

       $count =  count($list);

        return $count;
    }

    public function getNotCompletedRecordsCount($condition)
    {

        //返回未开始和进行中的作业计划数目
        $str = "";
        if ($condition['department_no']) {
            $str = " AND tc.department_no = " . $condition['department_no'];
        }
        $list = M('task_plan')
            ->alias("tp")
            ->join("LEFT JOIN train_column AS tc ON(tc.id=tp.train_column)")
            ->where("(tp.state = 1 OR tp.state = 2) " . $str)
            ->count();
        return $list;
    }

    public function getNotCompletedRecords($condition)
    {
        //返回未开始和进行中的作业计划
        $str = "";
        if ($condition['department_no']) {
            $str = " AND tc.department_no = " . $condition['department_no'];
        }

        $list = M('task_plan')
            ->alias("tp")
            ->join("LEFT JOIN train_column AS tc ON(tc.id=tp.train_column) 
                    LEFT JOIN task_plan_detail tpd ON (tp.task_number = tpd.task_number)")
            ->where("(tp.state = 1 OR tp.state = 2)" . $str)
            ->field("tp.*,GROUP_CONCAT(tpd.task_content_id) as task_content_list")
            ->limit($condition['start_record'], $condition['page_size'])
            ->group("tp.task_number")
            ->select();
        for ($i = 0; $i < sizeof($list); $i++) {
            if ($list[$i]['task_content_list'] != null) {
                $list[$i]['task_content_list'] = explode(',', $list[$i]['task_content_list']);
            }
        }
        return $list;
    }

    public function addData($info)
    {
        $tran_result = true;
        $trans = M("task_plan");
        $transDetail = M("task_plan_detail");
        $maxNum = $trans->max('task_number') > $transDetail->max('task_number') ? $trans->max('task_number') : $transDetail->max('task_number');
        if ($maxNum == null || $maxNum == 0) {
            $startNum = 1;//第一次
        } else {
            $startNum = $maxNum + 1;//找到当前最大值，然后加1
        }
        //print_r($startNum);
        //多表操作而且数据互相依赖，必须用事务来处理，必须用InnoDB,不用MyISAM
        $trans->startTrans();
        $transDetail->startTrans();
        for ($i = 0; $i < sizeof($info['choosed_content']) && $tran_result; $i++) {
 
            $dataDetail['task_content_id'] = $info['choosed_content'][$i]['id'];
            $dataDetail['task_number'] = $startNum;
            $dataDetail['state'] = "1";//等待作业
            if(isset($info['choosed_content'][$i]['piecework']))
            {
                $dataDetail['piecework'] = $info['choosed_content'][$i]['piecework'];//计件数
            }
            
            $tran_result = $transDetail->data($dataDetail)->add();
            //$tran_result = false;测试事务成功与否
        }
        if ($tran_result) {
            //$data['task_content_id'] = $info['choosed_content'];
            $data['task_number'] = $startNum;
            $data['work_group_no'] = $info['work_group_no'];
            $data['repair_id'] = $info['repair_id'];
            $data['repair_category'] = $info['repair_category'];
            $data['station_track_no'] = $info['station_track_no'];
            $data['train_model'] = $info['train_model'];
            $data['train_group'] = $info['train_group'];
            $data['train_number'] = $info['train_number'];
            $data['train_column'] = $info['train_column'];
            $data['task_date'] = $info['task_date'];
            $data['task_time'] = $info['task_time'];
            $data['state'] = 1;//未开始
            $tran_result = $trans->data($data)->add();
        }

        if (!$tran_result) {
            $transDetail->rollback();
            $trans->rollback();
        } else {
            $transDetail->commit();
            $trans->commit();
        }
        return $tran_result;
    }

    public function deleteData($condition)
    {
        $result = true;
        $trans= M('task_plan');
        $transDetail = M('task_plan_detail');

        $data['id'] = $condition['id'];
        $result = $trans->where($data)->delete();
        if($result) {
            $map['task_number'] = $condition['task_number'];
            $result = $transDetail->where($map)->delete();
        }
        if($result) {
            $trans->commit();
            $transDetail->commit();
        } else {
            $trans->rollback();
            $transDetail->rollback();
        }
        return $result;
    }

    public function modifyData($info)
    {
        $trans = M("task_plan");
        $trans->startTrans();
        $transDetail = M("task_plan_detail");
        $transDetail->startTrans();
        $transResult = true;
        $data = array();
        if ($info['id']) {
            $data['id'] = $info['id'];
        }
        if (isset($info['work_group_no'])) {
            $data['work_group_no'] = $info['work_group_no'];
        }
        if (isset($info['repair_id'])) {
            $data['repair_id'] = $info['repair_id'];
        }
        if (isset($info['repair_id'])) {
            $data['repair_category'] = $info['repair_category'];
        }
        if (isset($info['station_track_no'])) {
            $data['station_track_no'] = $info['station_track_no'];
        }
        if (isset($info['train_model'])) {
            $data['train_model'] = $info['train_model'];
        }
        if (isset($info['train_number'])) {
            $data['train_number'] = $info['train_number'];
        }
        if (isset($info['train_column'])) {
            $data['train_column'] = $info['train_column'];
        }
        if (isset($info['task_date'])) {
            $data['task_date'] = $info['task_date'];
        }
        if (isset($info['task_time'])) {
            $data['task_time'] = $info['task_time'];
        }
        if (isset($info['state'])) {
            $data['state'] = $info['state'];
        }
        if (isset($info['state'])) {
            $data['state'] = $info['state'];
        }

        //task plan detail相关
        if ($info['task_content_list']) {
//            $transResult = $transDetail->where("task_number=" . $info['task_number'])->delete();
            $map["task_number"] = $info['task_number'];
            $taskDetails = $transDetail->where($map)->select();

            for ($k = 0; $k < sizeof($taskDetails); $k++) {
                //判断是否在新的task content列表中
                if (!in_array($taskDetails[$k]["task_content_id"], $info['task_content_list'])) {
                    $transResult = $transDetail->data($taskDetails[$k])->delete();
                }
            }
            for ($i = 0; $i < sizeof($info['task_content_list']) && $transResult; $i++) {
                $found = false;
                for ($j = 0; $j < sizeof($taskDetails) && !$found; $j++) {
                    if ($taskDetails[$j]['task_content_id'] == $info['task_content_list'][$i]) {
                        $found = true;
                    }
                }
                if (!$found) {
                    $map2['task_number'] = $info['task_number'];
                    $map2['task_content_id'] = $info['task_content_list'][$i];
                    $map2['state'] = "1";//等待作业
                    $transResult = $transDetail->data($map2)->add();
                }
                //$tran_result = false;测试事务成功与否
            }
        } else {
            //没有作业内容，清除该task_number下面所有的task content detail
            //修复作业无法被取消的bug --start
            if ($info['task_number']) {
                $map3['task_number'] = $info['task_number'];
                $transResult = $transDetail->data($map3)->delete();
            }
            //修复作业无法被取消的bug --end
        }
        //task plan 相关
        if ($transResult) {
            $count = $trans->data($data)->save();
            if ($count >= 0) {
                $transResult = true;
            }
        }
        if ($transResult) {
            $trans->commit();
            $transDetail->commit();
        } else {
            $trans->rollback();
            $transDetail->rollback();
        }

        return $transResult;
    }

    public function endTaskPlan($info)
    {
        $result = true;
        if ($info['task_number']) {
            $map['task_number'] = $info['task_number'];
            $item = M("task_plan")->where($map)->find();
            if ($item) {
                $item['state'] = "3";
                $result = M("task_plan")->data($item)->save();
            } else {
                $result = false;
            }
        } else {
            $result = false;
        }
        return $result;
    }

    public function getGroupsNotFinished($condition)
    {
        $department_no = null;
        if ($condition['department_no']) {
            $department_no = $condition['department_no'];
        }
        if ($department_no != null) {
            $sql = "SELECT DISTINCT tp.work_group_no, wg.work_group_name FROM task_plan AS tp 
                    LEFT JOIN work_group AS wg ON (wg.work_group_no = tp.work_group_no) 
                    WHERE tp.state < 3 AND wg.department_no = '$department_no'";
        } else {
            $sql = "SELECT DISTINCT tp.work_group_no, wg.work_group_name FROM task_plan AS tp 
                    LEFT JOIN work_group AS wg ON (wg.work_group_no = tp.work_group_no)
                    WHERE tp.state < 3";
        }
        $list = $this->db->query($sql);
        return $list;

    }

    #region #clean summary
    public function getTaskSummary($condition)
    {
        $whereSql = ' WHERE 1 ';
        $whereSql .= " AND is_statistics!='0' ";//作业内容标记为统计的才能统计查询
        $whereSql .= " AND task_state='3' ";//任务已完成的才能统计查询
        $groupby = 'department_no,task_content_id';
        if ($condition) {
            if ($condition['isTotally'] && !($condition['department_no'])) {
                $groupby = 'task_content_id';
            }
            if ($condition['id']) {
                $str = $condition['id'];
                $whereSql .= " AND id='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $whereSql .= " AND department_no='$str' ";
            }
            if ($condition['work_group_no']) {
                $str = $condition['work_group_no'];
                $whereSql .= " AND work_group_no='$str' ";
            }
            if ($condition['train_model']) {
                $str = $condition['train_model'];
                $whereSql .= " AND train_model='$str' ";
            }

            if ($condition['dateStart'] && $condition['dateEnd']) {
                $beginStr = $condition['dateStart'];
                $endStr = $condition['dateEnd'];
                $whereSql .= " AND (
                                    CONCAT(DATE_FORMAT(`task_date`,'%Y-%m-%d'),' ',TIME_FORMAT(`task_time`,'%H:%i:%s'))
                                    BETWEEN '$beginStr' AND '$endStr'
                                   )";
            }
        }
        $sql = "
                SELECT * FROM
                ((SELECT *, SUM(train_task_count) AS task_count 
                  FROM task_plan_detail_view $whereSql GROUP BY $groupby
                ) AS tcv) 
              ";
        if (isset($condition['start_record']) && $condition['page_size']) {
            $start = $condition['start_record'];
            $size = $condition['page_size'];
            $sql .= " limit $start,$size";
        }

        $list = $this->db->query($sql);
//            $list = M('task_plan_content_view')
//            ->where($data)
//            ->field("*, COUNT(*) as task_count")
//            ->group('id')
//            ->limit($condition['start_record'],$condition['page_size'])
//            ->select();
        return $list;

    }

    public function getTaskSummaryCount($condition)
    {
        $whereSql = ' WHERE 1 ';
        $whereSql .= " AND is_statistics!='0' ";//作业内容标记为统计的才能统计查询
        $whereSql .= " AND task_state='3' ";//任务已完成的才能统计查询
        $groupby = 'department_no,task_content_id';
        if ($condition) {
            if ($condition['isTotally'] && !($condition['department_no'])) {
                $groupby = 'task_content_id';
            }
            if ($condition['id']) {
                $str = $condition['id'];
                $whereSql .= " AND id='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $whereSql .= " AND department_no='$str' ";
            }
            if ($condition['work_group_no']) {
                $str = $condition['work_group_no'];
                $whereSql .= " AND work_group_no='$str' ";
            }
            if ($condition['train_model']) {
                $str = $condition['train_model'];
                $whereSql .= " AND train_model='$str' ";
            }
            if ($condition['dateStart'] && $condition['dateEnd']) {
                $beginStr = $condition['dateStart'];
                $endStr = $condition['dateEnd'];
                $whereSql .= " AND (
                                    CONCAT(DATE_FORMAT(`task_date`,'%Y-%m-%d'),' ',TIME_FORMAT(`task_time`,'%H:%i:%s'))
                                    BETWEEN '$beginStr' AND '$endStr'
                                   )";
            }
        }
        $sql = "
                SELECT count(*) AS totalrecords
                FROM
                (
               (SELECT *, SUM(train_task_count) AS task_count 
                  FROM task_plan_detail_view $whereSql GROUP BY $groupby
                ) AS tcv
                ) 
              ";


        $list = $this->db->query($sql);
        return $list[0];

    }
    #endregion

    #region #clean query
    public function getTaskQuery($condition)
    {
        $whereSql = ' WHERE 1 ';
        $whereSql .= " AND is_statistics!='0' ";//作业内容标记为统计的才能统计查询
        $whereSql .= " AND task_state='3' ";//任务已完成的才能统计查询
        $groupby = 'train_column';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $whereSql .= " AND id='$str' ";
            }
            if ($condition['task_content_id']) {
                $str = $condition['task_content_id'];
                $whereSql .= " AND task_content_id='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $whereSql .= " AND department_no='$str' ";
            }
            if ($condition['work_group_no']) {
                $str = $condition['work_group_no'];
                $whereSql .= " AND work_group_no='$str' ";
            }
            if ($condition['train_model']) {
                $str = $condition['train_model'];
                $whereSql .= " AND train_model='$str' ";
            }
            if ($condition['keywords']) {
                $str = $condition['keywords'];
                $whereSql .= " AND (train_column like '%$str%' OR train_column_name like '%$str%') ";
            }
            if ($condition['dateStart'] && $condition['dateEnd']) {
                $beginStr = $condition['dateStart'];
                $endStr = $condition['dateEnd'];
                $whereSql .= " AND (
                                    CONCAT(DATE_FORMAT(`task_date`,'%Y-%m-%d'),' ',TIME_FORMAT(`task_time`,'%H:%i:%s'))
                                    BETWEEN '$beginStr' AND '$endStr'
                                   )";
            }
        }
        $sql = "
                SELECT * FROM
                ((SELECT *, SUM(train_task_count) AS task_count 
                  FROM task_plan_detail_view $whereSql GROUP BY $groupby
                ) AS tcv) 
              ";
        if (isset($condition['start_record']) && $condition['page_size']) {
            $start = $condition['start_record'];
            $size = $condition['page_size'];
            $sql .= " limit $start,$size";
        }

        $list = $this->db->query($sql);
//            $list = M('task_plan_content_view')
//            ->where($data)
//            ->group('id')
//            ->limit($condition['start_record'],$condition['page_size'])
//            ->select();
        return $list;

    }

    public function getTaskQueryCount($condition)
    {
        $whereSql = ' WHERE 1 ';
        $whereSql .= " AND is_statistics!='0' ";//作业内容标记为统计的才能统计查询
        $whereSql .= " AND task_state='3' ";//任务已完成的才能统计查询
        $groupby = 'train_column';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $whereSql .= " AND id='$str' ";
            }
            if ($condition['task_content_id']) {
                $str = $condition['task_content_id'];
                $whereSql .= " AND task_content_id='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $whereSql .= " AND department_no='$str' ";
            }
            if ($condition['work_group_no']) {
                $str = $condition['work_group_no'];
                $whereSql .= " AND work_group_no='$str' ";
            }
            if ($condition['train_model']) {
                $str = $condition['train_model'];
                $whereSql .= " AND train_model='$str' ";
            }
            if ($condition['keywords']) {
                $str = $condition['keywords'];
                $whereSql .= " AND (train_column like '%$str%' OR train_column_name like '%$str%') ";

            }
            if ($condition['dateStart'] && $condition['dateEnd']) {
                $beginStr = $condition['dateStart'];
                $endStr = $condition['dateEnd'];
                $whereSql .= " AND (
                                    CONCAT(DATE_FORMAT(`task_date`,'%Y-%m-%d'),' ',TIME_FORMAT(`task_time`,'%H:%i:%s'))
                                    BETWEEN '$beginStr' AND '$endStr'
                                   )";
            }
        }
        $sql = "
                SELECT count(*) AS totalrecords
                FROM
                (
               (SELECT *, SUM(train_task_count) AS task_count 
                  FROM task_plan_detail_view $whereSql GROUP BY $groupby
                ) AS tcv
                ) 
              ";


        $list = $this->db->query($sql);
        return $list[0];

    }
    #endregion

    #region #task statistics
    public function getTaskStatistics($condition)
    {
        $whereSql = ' WHERE 1 ';
        $whereSql .= " AND is_statistics!='0' ";//作业内容标记为统计的才能统计查询
        $whereSql .= " AND task_state='3' ";//任务已完成的才能统计查询
        $groupby = 'task_date';
        if ($condition) {
            if ($condition['is_group_train']) {
                $groupby = 'train_model';
            }
            if ($condition['id']) {
                $str = $condition['id'];
                $whereSql .= " AND id='$str' ";
            }
            if ($condition['task_content_id']) {
                $str = $condition['task_content_id'];
                $whereSql .= " AND task_content_id='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $whereSql .= " AND department_no='$str' ";
            }
            if ($condition['work_group_no']) {
                $str = $condition['work_group_no'];
                $whereSql .= " AND work_group_no='$str' ";
            }
            if ($condition['train_model']) {
                $str = $condition['train_model'];
                $whereSql .= " AND train_model='$str' ";
            }
            if ($condition['keywords']) {
                $str = $condition['keywords'];
                $whereSql .= " AND (train_model like '%$str%' OR train_model_name like '%$str%') ";

            }

            if ($condition['dateStart'] && $condition['dateEnd']) {
                $beginStr = $condition['dateStart'];
                $endStr = $condition['dateEnd'];
                $whereSql .= " AND (
                                    CONCAT(DATE_FORMAT(`task_date`,'%Y-%m-%d'),' ',TIME_FORMAT(`task_time`,'%H:%i:%s'))
                                    BETWEEN '$beginStr' AND '$endStr'
                                   )";
            }
        }
        $sql = "
                SELECT * FROM
                ((SELECT *, SUM(train_task_count) AS task_count 
                  FROM task_plan_detail_view $whereSql GROUP BY $groupby
                ) AS tcv) 
              ";
//        if (isset($condition['start_record']) && $condition['page_size']) {
//            $start = $condition['start_record'];
//            $size = $condition['page_size'];
//            $sql .= " limit $start,$size";
//        }

        $list = $this->db->query($sql);
        return $list;
    }

    public function getTaskStatisticsCount($condition)
    {
        $whereSql = ' WHERE 1 ';
        $whereSql .= " AND is_statistics!='0' ";//作业内容标记为统计的才能统计查询
        $whereSql .= " AND task_state='3' ";//任务已完成的才能统计查询
        $groupby = 'task_date';
        if ($condition) {
            if ($condition['is_group_train']) {
                $groupby = 'train_model';
            }
            if ($condition['id']) {
                $str = $condition['id'];
                $whereSql .= " AND id='$str' ";
            }
            if ($condition['task_content_id']) {
                $str = $condition['task_content_id'];
                $whereSql .= " AND task_content_id='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $whereSql .= " AND department_no='$str' ";
            }
            if ($condition['work_group_no']) {
                $str = $condition['work_group_no'];
                $whereSql .= " AND work_group_no='$str' ";
            }
            if ($condition['train_model']) {
                $str = $condition['train_model'];
                $whereSql .= " AND train_model='$str' ";
            }
            if ($condition['keywords']) {
                $str = $condition['keywords'];
                $whereSql .= " AND (train_model like '%$str%' OR train_model_name like '%$str%') ";

            }

            if ($condition['dateStart'] && $condition['dateEnd']) {
                $beginStr = $condition['dateStart'];
                $endStr = $condition['dateEnd'];
                $whereSql .= " AND (
                                    CONCAT(DATE_FORMAT(`task_date`,'%Y-%m-%d'),' ',TIME_FORMAT(`task_time`,'%H:%i:%s'))
                                    BETWEEN '$beginStr' AND '$endStr'
                                   )";
            }
        }
        $sql = "
                SELECT count(*) AS totalrecords
                FROM
                (
               (SELECT *, SUM(train_task_count) AS task_count 
                  FROM task_plan_detail_view $whereSql GROUP BY $groupby
                ) AS tcv
                ) 
              ";


        $list = $this->db->query($sql);
        return $list[0];

    }

    public function getTaskDetailStatistics($condition)
    {
        $whereSql = ' WHERE 1 ';
        $whereSql .= " AND is_statistics!='0' ";//作业内容标记为统计的才能统计查询
        $whereSql .= " AND task_state='3' ";//任务已完成的才能统计查询
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $whereSql .= " AND id='$str' ";
            }
            if ($condition['task_content_id']) {
                $str = $condition['task_content_id'];
                $whereSql .= " AND task_content_id='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $whereSql .= " AND department_no='$str' ";
            }
            if ($condition['work_group_no']) {
                $str = $condition['work_group_no'];
                $whereSql .= " AND work_group_no='$str' ";
            }
            if ($condition['train_model']) {
                $str = $condition['train_model'];
                $whereSql .= " AND train_model='$str' ";
            }
            if ($condition['keywords']) {
                $str = $condition['keywords'];
                $whereSql .= " AND (train_model like '%$str%' OR train_model_name like '%$str%') ";
            }

//            if ($condition['dateStart'] && $condition['dateEnd']) {
//                $beginStr = $condition['dateStart'];
//                $endStr = $condition['dateEnd'];
//                $whereSql .= " AND task_date='$beginStr' ";
//            }
            if ($condition['dateStart'] && $condition['dateEnd']) {
                $beginStr = $condition['dateStart'];
                $endStr = $condition['dateEnd'];
                $whereSql .= " AND (
                                    CONCAT(DATE_FORMAT(`task_date`,'%Y-%m-%d'),' ',TIME_FORMAT(`task_time`,'%H:%i:%s'))
                                    BETWEEN '$beginStr' AND '$endStr'
                                   )";
            }
        }
        $sql = "
                SELECT DISTINCT *
                FROM task_plan_detail_view
                $whereSql 
              ";
        if (isset($condition['start_record']) && $condition['page_size']) {
            $start = $condition['start_record'];
            $size = $condition['page_size'];
            $sql .= " limit $start,$size";
        }

        $list = $this->db->query($sql);
        return $list;

    }

    public function exportTaskDetailStatistics($condition)
    {
        $whereSql = ' WHERE 1 ';
        $whereSql .= " AND is_statistics!='0' ";//作业内容标记为统计的才能统计查询
        $whereSql .= " AND task_state='3' ";//任务已完成的才能统计查询
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $whereSql .= " AND id='$str' ";
            }
            if ($condition['task_content_id']) {
                $str = $condition['task_content_id'];
                $whereSql .= " AND task_content_id='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $whereSql .= " AND department_no='$str' ";
            }
            if ($condition['work_group_no']) {
                $str = $condition['work_group_no'];
                $whereSql .= " AND work_group_no='$str' ";
            }
            if ($condition['train_model']) {
                $str = $condition['train_model'];
                $whereSql .= " AND train_model='$str' ";
            }
            if ($condition['keywords']) {
                $str = $condition['keywords'];
                $whereSql .= " AND (train_model like '%$str%' OR train_model_name like '%$str%') ";
            }

//            if ($condition['dateStart'] && $condition['dateEnd']) {
//                $beginStr = $condition['dateStart'];
//                $endStr = $condition['dateEnd'];
//                $whereSql .= " AND task_date='$beginStr' ";
//            }
            if ($condition['dateStart'] && $condition['dateEnd']) {
                $beginStr = $condition['dateStart'];
                $endStr = $condition['dateEnd'];
                $whereSql .= " AND (
                                    CONCAT(DATE_FORMAT(`task_date`,'%Y-%m-%d'),' ',TIME_FORMAT(`task_time`,'%H:%i:%s'))
                                    BETWEEN '$beginStr' AND '$endStr'
                                   )";
            }
        }
        $sql = "
                SELECT DISTINCT *
                FROM task_plan_detail_view
                $whereSql 
              ";

        $list = $this->db->query($sql);
        return $list;

    }

    public function getTaskDetailStatisticsCount($condition)
    {
        $whereSql = ' WHERE 1 ';
        $whereSql .= " AND is_statistics!='0' ";//作业内容标记为统计的才能统计查询
        $whereSql .= " AND task_state='3' ";//任务已完成的才能统计查询
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $whereSql .= " AND id='$str' ";
            }
            if ($condition['task_content_id']) {
                $str = $condition['task_content_id'];
                $whereSql .= " AND task_content_id='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $whereSql .= " AND department_no='$str' ";
            }
            if ($condition['work_group_no']) {
                $str = $condition['work_group_no'];
                $whereSql .= " AND work_group_no='$str' ";
            }
            if ($condition['train_model']) {
                $str = $condition['train_model'];
                $whereSql .= " AND train_model='$str' ";
            }
            if ($condition['keywords']) {
                $str = $condition['keywords'];
                $whereSql .= " AND (train_model like '%$str%' OR train_model_name like '%$str%') ";
            }

//            if ($condition['dateStart']) {
//                $beginStr = $condition['dateStart'];
//                $whereSql .= " AND task_date='$beginStr' ";
//            }
            if ($condition['dateStart'] && $condition['dateEnd']) {
                $beginStr = $condition['dateStart'];
                $endStr = $condition['dateEnd'];
                $whereSql .= " AND (
                                    CONCAT(DATE_FORMAT(`task_date`,'%Y-%m-%d'),' ',TIME_FORMAT(`task_time`,'%H:%i:%s'))
                                    BETWEEN '$beginStr' AND '$endStr'
                                   )";
            }
        }
        $sql = "
                SELECT 
                DISTINCT
                COUNT(*) AS totalrecords
                FROM task_plan_detail_view
                $whereSql 
              ";

        $list = $this->db->query($sql);
        return $list[0];

    }

    public function exportTaskDataGroupByDate($condition)
    {
        $whereSql = ' WHERE 1 ';
        $whereSql .= " AND is_statistics!='0' ";//作业内容标记为统计的才能统计查询
        $whereSql .= " AND task_state='3' ";//任务已完成的才能统计查询
        $groupby = 'task_date';

        if ($condition) {
            if ($condition['task_content_id']) {
                $str = $condition['task_content_id'];
                $whereSql .= " AND task_content_id='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $whereSql .= " AND department_no='$str' ";
            }
            if ($condition['train_model']) {
                $str = $condition['train_model'];
                $whereSql .= " AND train_model='$str' ";
            }
            if ($condition['keywords']) {
                $str = $condition['keywords'];
                $whereSql .= " AND (train_model like '%$str%' OR train_model_name like '%$str%') ";
            }
            if ($condition['dateStart'] && $condition['dateEnd']) {
                $beginStr = $condition['dateStart'];
                $endStr = $condition['dateEnd'];
                $whereSql .= " AND (
                                    CONCAT(DATE_FORMAT(`task_date`,'%Y-%m-%d'),' ',TIME_FORMAT(`task_time`,'%H:%i:%s'))
                                    BETWEEN '$beginStr' AND '$endStr'
                                   )";
            }
        }
        $sql = "SELECT task_date,task_count FROM 
                (SELECT *,SUM(train_task_count) AS task_count 
                FROM task_plan_detail_view $whereSql GROUP BY $groupby) AS tcv                                  
                ";
        $list = $this->db->query($sql);

        return $list;
    }

    public function exportXiWuRelatedTaskDataGroupByDate($condition)
    {
        $whereSql = ' WHERE 1 ';
        $whereSql .= " AND is_statistics!='0' ";//作业内容标记为统计的才能统计查询
        $whereSql .= " AND task_state='3' ";//任务已完成的才能统计查询
        $orderBy = 'task_date';

        if ($condition) {
            if ($condition['task_content_id']) {
                $str = $condition['task_content_id'];
                $whereSql .= " AND task_content_id='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $whereSql .= " AND department_no='$str' ";
            }
            if ($condition['train_model']) {
                $str = $condition['train_model'];
                $whereSql .= " AND train_model='$str' ";
            }
            if ($condition['keywords']) {
                $str = $condition['keywords'];
                $whereSql .= " AND (train_model like '%$str%' OR train_model_name like '%$str%') ";
            }
            if ($condition['dateStart'] && $condition['dateEnd']) {
                $beginStr = $condition['dateStart'];
                $endStr = $condition['dateEnd'];
                $whereSql .= " AND (
                                    CONCAT(DATE_FORMAT(`task_date`,'%Y-%m-%d'),' ',TIME_FORMAT(`task_time`,'%H:%i:%s'))
                                    BETWEEN '$beginStr' AND '$endStr'
                                   )";
            }
        }

        $sql = "SELECT task_date, SUM(train_task_count) AS task_count, SUM(rubbish_box) AS rubbish_box_sum FROM 
                task_plan_detail_view $whereSql GROUP BY $orderBy
                ";
        $list = $this->db->query($sql);
        
        return $list;
    }

    public function exportTaskDataGroupByTrainModeName($condition)
    {
        $whereSql = ' WHERE 1 ';
        $whereSql .= " AND is_statistics!='0' ";//作业内容标记为统计的才能统计查询
        $whereSql .= " AND task_state='3' ";//任务已完成的才能统计查询
        $groupby = 'train_model_name';

        if ($condition) {
            if ($condition['task_content_id']) {
                $str = $condition['task_content_id'];
                $whereSql .= " AND task_content_id='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $whereSql .= " AND department_no='$str' ";
            }
            if ($condition['train_model']) {
                $str = $condition['train_model'];
                $whereSql .= " AND train_model='$str' ";
            }
            if ($condition['keywords']) {
                $str = $condition['keywords'];
                $whereSql .= " AND (train_model like '%$str%' OR train_model_name like '%$str%') ";
            }
            if ($condition['dateStart'] && $condition['dateEnd']) {
                $beginStr = $condition['dateStart'];
                $endStr = $condition['dateEnd'];
                $whereSql .= " AND (
                                    CONCAT(DATE_FORMAT(`task_date`,'%Y-%m-%d'),' ',TIME_FORMAT(`task_time`,'%H:%i:%s'))
                                    BETWEEN '$beginStr' AND '$endStr'
                                   )";
            }
        }
        $sql = "
                 SELECT train_model_name, SUM(train_task_count) AS task_count
                 FROM task_plan_detail_view $whereSql GROUP BY $groupby";

        $list = $this->db->query($sql);

        return $list;
    }

    public function exportCleanQueryStatics($condition)
    {
        $whereSql = ' WHERE 1 ';
        $whereSql .= " AND is_statistics!='0' ";//作业内容标记为统计的才能统计查询
        $whereSql .= " AND task_state='3' ";//任务已完成的才能统计查询
        $groupby = 'train_column';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $whereSql .= " AND id='$str' ";
            }
            if ($condition['task_content_id']) {
                $str = $condition['task_content_id'];
                $whereSql .= " AND task_content_id='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $whereSql .= " AND department_no='$str' ";
            }
            if ($condition['work_group_no']) {
                $str = $condition['work_group_no'];
                $whereSql .= " AND work_group_no='$str' ";
            }
            if ($condition['train_model']) {
                $str = $condition['train_model'];
                $whereSql .= " AND train_model='$str' ";
            }
            if ($condition['keywords']) {
                $str = $condition['keywords'];
                $whereSql .= " AND (train_column like '%$str%' OR train_column_name like '%$str%') ";
            }
            if ($condition['dateStart'] && $condition['dateEnd']) {
                $beginStr = $condition['dateStart'];
                $endStr = $condition['dateEnd'];
                $whereSql .= " AND (
                                    CONCAT(DATE_FORMAT(`task_date`,'%Y-%m-%d'),' ',TIME_FORMAT(`task_time`,'%H:%i:%s'))
                                    BETWEEN '$beginStr' AND '$endStr'
                                   )";
            }
        }
        $sql = "
               SELECT task_content,train_column_name,train_column_name as train_column_nameactual, task_count,task_count as task_count_actual FROM
                ((SELECT *, SUM(train_task_count) AS task_count 
                  FROM task_plan_detail_view $whereSql GROUP BY $groupby
                ) AS tcv) 
              ";

        $list = $this->db->query($sql);
        return $list;
    }
    #endregion
}