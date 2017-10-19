<?php
/**
 * Created by PhpStorm.
 * User: PC-HT
 * Date: 2017-03-17
 * Time: 22:27
 */

namespace Home\Model;

use Think\Model;

class TaskPlanDetailModel extends Model
{
    public function getRecords($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $data .= " AND id='$str' ";
            }
            if ($condition['task_number']) {
                $str = $condition['task_number'];
                $data .= " AND task_number='$str' ";
            }
            if ($condition['task_content_id']) {
                $str = $condition['task_content_id'];
                $data .= " AND task_content_id='$str' ";
            }
            if ($condition['state']) {
                $str = $condition['state'];
                $data .= " AND state='$str' ";
            }
        }
        $list = M('task_plan_detail')
            ->where($data)
            ->select();

        //故障登记、情况说明、人员相关字段都是通过“,”隔开每个数据，所以返回client前转变成数组
        for($i=0; $i<sizeof($list); $i++) {
            if($list[$i]['trouble_maintain_id'] != null) {
                $list[$i]['trouble_maintain_id'] = explode(',',$list[$i]['trouble_maintain_id']);
            } else {
                $list[$i]['trouble_maintain_id'] = [];
            }
            if($list[$i]['situation_content_id'] != null) {
                $list[$i]['situation_content_id'] = explode(',',$list[$i]['situation_content_id']);
            } else {
                $list[$i]['situation_content_id'] = [];
            }
            if($list[$i]['a_left'] != null) {
                $list[$i]['a_left'] = explode(',',$list[$i]['a_left']);
            } else {
                $list[$i]['a_left'] = [];
            }
            if($list[$i]['a_right'] != null) {
                $list[$i]['a_right'] = explode(',',$list[$i]['a_right']);
            }else {
                $list[$i]['a_right'] = [];
            }
            if($list[$i]['b_left'] != null) {
                $list[$i]['b_left'] = explode(',',$list[$i]['b_left']);
            } else {
                $list[$i]['b_left'] = [];
            }
            if($list[$i]['b_right'] != null) {
                $list[$i]['b_right'] = explode(',',$list[$i]['b_right']);
            } else {
                $list[$i]['b_right'] = [];
            }
            if($list[$i]['a_leader'] != null) {
                $list[$i]['a_leader'] = explode(',',$list[$i]['a_leader']);
            } else {
                $list[$i]['a_leader'] = [];
            }
            if($list[$i]['b_leader'] != null) {
                $list[$i]['b_leader'] = explode(',',$list[$i]['b_leader']);
            } else {
                $list[$i]['b_leader']  = [];
            }
            if($list[$i]['a_quality'] != null) {
                $list[$i]['a_quality'] = explode(',',$list[$i]['a_quality']);
            } else {
                $list[$i]['a_quality'] = [];
            }
            if($list[$i]['b_quality'] != null) {
                $list[$i]['b_quality'] = explode(',',$list[$i]['b_quality']);
            } else {
                $list[$i]['b_quality'] = [];
            }
        }
        return $list;

    }

    public function getPortName($condition = null){
        $data = ' 1 ';

        if ($condition['task_number']) {
            $str = $condition['task_number'];
            $data .= " AND tpd.task_number='$str' ";
            $portName = M('task_plan_detail')
                ->alias("tpd")
                ->join("LEFT JOIN task_plan tp ON(tp.task_number = tpd.task_number) 
                    LEFT JOIN work_group wg ON(tp.work_group_no = wg.work_group_no)
                    LEFT JOIN task_port tpt ON(wg.department_no = tpt.department_no)")
                ->field("tpt.a_left, tpt.a_right, tpt.b_left, tpt.b_right, tpt.a_leader, tpt.b_leader, tpt.a_quality, tpt.b_quality")
                ->where($data)
                ->find();
            return $portName;
        } else {
            return "";
        }
    }

    public function getRecordsCount($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $data .= " AND id='$str' ";
            }
            if ($condition['task_number']) {
                $str = $condition['task_number'];
                $data .= " AND task_number='$str' ";
            }
            if ($condition['task_content_id']) {
                $str = $condition['task_content_id'];
                $data .= " AND task_content_id='$str' ";
            }
            if ($condition['state']) {
                $str = $condition['state'];
                $data .= " AND state='$str' ";
            }
        }
        $count = M('task_plan_detail')->where($data)->count();
        return $count;

    }

    public function addData($info)
    {
        $data['task_number'] = $info['task_number'];
        $data['task_content_id'] = $info['task_content_id'];
        $data['state'] = $info['state'];
        $result = M('task_plan_detail')->data($data)->add();
        return $result;
    }

    public function deleteData($condition)
    {
        $data['id'] = $condition['id'];
        $result = M('task_plan_detail')->where($data)->delete();
        return $result;
    }

    public function modifyData($info)
    {
        if ($info['id']) {
            $data['id'] = $info['id'];
        }
        if ($info['task_number']) {
            $data['task_number'] = $info['task_number'];
        }
        if ($info['state']) {
            $data['state'] = $info['state'];
        }
        if ($info['station_track_no']) {
            $data['station_track_no'] = $info['station_track_no'];
        }
        if ($info['begin_time']) {
            $data['begin_time'] = $info['begin_time'];
        }
        if ($info['end_time']) {
            $data['end_time'] = $info['end_time'];
        }
        if ($info['trouble_maintain_id']) {
            $data['trouble_maintain_id'] = $info['trouble_maintain_id'];
        }
        if ($info['station_content_id']) {
            $data['station_content_id'] = $info['station_content_id'];
        }
        if ($info['a_left']) {
            $data['a_left'] = $info['a_left'];
        }
        if ($info['a_right']) {
            $data['a_right'] = $info['a_right'];
        }
        if ($info['b_left']) {
            $data['b_left'] = $info['b_left'];
        }
        if ($info['b_right']) {
            $data['b_right'] = $info['b_right'];
        }
        if ($info['a_leader']) {
            $data['a_leader'] = $info['a_leader'];
        }
        if ($info['b_leader']) {
            $data['b_leader'] = $info['b_leader'];
        }
        if ($info['a_quality']) {
            $data['a_quality'] = $info['a_quality'];
        }
        if ($info['b_quality']) {
            $data['b_quality'] = $info['b_quality'];
        }

        $result = M('task_plan_detail')->data($data)->save();

        return $result;
    }

    public function startTask($condition)
    {
        $tranResult = true;
        //$data['id'] = $condition['id'];
        $transDetail = M('task_plan_detail');
        $transDetail->startTrans();
        $transPlan = M('task_plan');
        $transPlan->startTrans();
        //功能优化，可以多个作业一起开始  2017-06-14
        if(!is_array($condition)) {
        $data['id'] = $condition['id'];
        $data['state'] = "2";//“正在工作”状态
        $datetime = new \DateTime();
        $data['begin_time'] = $datetime->format("Y-m-d H:i:s");
        $count = $transDetail->data($data)->save();
        //print_r($count);
        if($count < 0) {
            $tranResult = false;
        }
        }else {
            $datetime = new \DateTime();
            for ($i=0; $i<sizeof($condition) && $tranResult; $i++) {
                $data['id'] = $condition[$i]->id;
                $data['state'] = "2";//“正在工作”状态
                $data['begin_time'] = $datetime->format("Y-m-d H:i:s");
                $count = $transDetail->data($data)->save();
                //print_r($count);
                if($count < 0) {
                    $tranResult = false;
                }
            }
        }
        if($tranResult) {
            if(!is_array($condition)) {
            $map['task_number'] =$condition['task_number'] ;
            } else {
                $map['task_number'] =$condition[0]->task_number;
            }
            $temp = $transPlan->where($map)->find();
            if($temp['state']== "1") {
                $temp['state'] = "2";//进行中
                $count = $transPlan->data($temp)->save();
                if($count < 0) {
                    $tranResult = false;
                }
            }
        }
        if($tranResult) {
            $transDetail->commit();
            $transPlan->commit();
        } else {
            $transDetail->rollback();
            $transPlan->rollback();
        }

        return $tranResult;
    }

    public function endTask($condition)
    {
        $tranResult = true;
        //$data['id'] = $condition['id'];
        $transDetail = M('task_plan_detail');
        $transDetail->startTrans();
        if(!is_array($condition)) {
        $data['id'] = $condition['id'];
        $data['state'] = "3";//“工作结束”状态
        $datetime = new \DateTime();
        $data['end_time'] = $datetime->format("Y-m-d H:i:s");
        $count = M('task_plan_detail')->data($data)->save();
        if($count < 0) {
                $tranResult = false;
            }
        } else {
            $datetime = new \DateTime();
            for ($i=0; $i<sizeof($condition) && $tranResult; $i++) {
                $data['id'] = $condition[$i]->id;
                $data['state'] = "3";//“正在工作”状态
                $data['end_time'] = $datetime->format("Y-m-d H:i:s");
                $count = $transDetail->data($data)->save();
                //print_r($count);
                if($count < 0) {
                    $tranResult = false;
                }
            }
        }

        if($tranResult) {
            $transDetail->commit();
        } else {
            $transDetail->rollback();
        }
        return $tranResult;
    }

    public function modifyRecords($info)
    {
        $result = true;
        $info =  json_decode($info, true);
        //print_r($info);
        for($i=0; $i< count($info) && $result; $i++) {
            $data = array();
            if ($info[$i]['id']) {
                $data['id'] = $info[$i]['id'];
            }
            if ($info[$i]['task_number']) {
                $data['task_number'] = $info[$i]['task_number'];
            }
            if ($info[$i]['state']) {
                $data['state'] = $info[$i]['state'];
            }

            if ($info[$i]['begin_time']) {
                $data['begin_time'] = $info[$i]['begin_time'];
            }
            if ($info[$i]['end_time']) {
                $data['end_time'] = $info[$i]['end_time'];
            }
            if (isset($info[$i]['trouble_maintain_id'])) {
                $data['trouble_maintain_id'] = implode(",",$info[$i]['trouble_maintain_id']);
            }
            if (isset($info[$i]['situation_content_id'])) {
                $data['situation_content_id'] = implode(",",$info[$i]['situation_content_id']);
            }
            if (isset($info[$i]['a_left'])) {
                $data['a_left'] = implode(",",$info[$i]['a_left']);
            }
            if (isset($info[$i]['a_right'])) {
                $data['a_right'] = implode(",",$info[$i]['a_right']);
            }
            if (isset($info[$i]['b_left'])) {
                $data['b_left'] = implode(",",$info[$i]['b_left']);
            }
            if (isset($info[$i]['b_right'])) {
                $data['b_right'] = implode(",",$info[$i]['b_right']);
            }
            if (isset($info[$i]['a_leader'])) {
                $data['a_leader'] = implode(",",$info[$i]['a_leader']);
            }
            if (isset($info[$i]['b_leader'])) {
                $data['b_leader'] = implode(",",$info[$i]['b_leader']);
            }
            if (isset($info[$i]['a_quality'])) {
                $data['a_quality'] = implode(",",$info[$i]['a_quality']);
            }
            if (isset($info[$i]['b_quality'])) {
                $data['b_quality'] = implode(",",$info[$i]['b_quality']);
            }

            $count = M('task_plan_detail')->data($data)->save();
            if($count < 0) {
                $result = false;
            }
        }


        return $result;
    }
}