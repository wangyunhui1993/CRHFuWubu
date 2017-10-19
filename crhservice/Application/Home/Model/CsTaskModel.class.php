<?php
/**
 * Created by PhpStorm.
 * User: PC-LHF
 * Date: 2017-03-03
 * Time: 11:10
 */

namespace Home\Model;

use Think\Model;
use Home\Common\Util;


class CsTaskModel extends Model
{
    public function getRecords($condition = null)
    {
//        if(isset($condition['department_no']) && $condition['department_no'] != "") {
            $map['department_no'] = $condition['department_no'] ? $condition['department_no'] : "001";
            $items = M('cs_task')->where($map)->select();
//        } else {
//            $items = M('cs_task')->where("department_no =" . "001")->select();
//        }
        $department_no = $map['department_no'];
        $countSql = "SELECT COUNT(screen_num) FROM cs_task WHERE department_no=". $department_no . " GROUP BY screen_num";
        $count = $this->db->query($countSql);
        $result = array();
        for ($i = 0; $i< sizeof($items); $i++) {
            $found = false;
            for ($j=0; $j<sizeof($count) && $j< sizeof($result); $j++) {
                if($items[$i]['screen_num'] ==  $result[$j]['screen_num']) {
                    array_push($result[$j]['workGroups'], $items[$i]);
                    $found = true;
                }
            }
            if(!$found) {
                $data['displayName'] = $items[$i]['title'];
                $data['screen_num'] = $items[$i]['screen_num'];
                $data['workGroups'][0] = $items[$i];//第一个
                $data['taskPlans'] = array();
                array_push($result, $data);
            }

        }
        for ($k=0; $k<sizeof($result); $k++) {
            $groups = array();
            for ($n=0; $n< sizeof($result[$k]['workGroups']); $n++) {
                if(!in_array($result[$k]['workGroups'][$n]['work_group_no'], $groups)) {
                    //not found
                    array_push($groups,$result[$k]['workGroups'][$n]['work_group_no']);
                }
            }
            if(sizeof($groups) > 0) {
                $sub = "work_group_no IN ( " . implode(",", $groups) . " )";
                $sql = "SELECT
                    tpdv.train_column_name,
                    tpdv.train_model_name,
                    tpdv.repair_name,
                    tpdv.station_track_name,
                    tpdv.task_date,
                    tpdv.task_number,
                    tpdv.task_state,
                    group_concat(tpdv.a_left) AS a_left,
                    group_concat(tpdv.a_right) AS a_right,
                    group_concat(tpdv.b_left) AS b_left,
                    group_concat(tpdv.b_right) AS b_right,
                    group_concat(tpdv.a_leader) AS a_leader,
                    group_concat(tpdv.b_leader) AS b_leader,
                    group_concat(tpdv.a_quality) AS a_quality,
                    group_concat(tpdv.b_quality) AS b_quality,
                    group_concat(task_content) AS task_content_list
                FROM
                    task_plan_detail_view tpdv
                WHERE
                    $sub
                AND (task_state = 1 OR task_state = 2)
                GROUP BY
                    task_number";
                $temp = $this->db->query($sql);
                for ($m=0; $m<sizeof($temp); $m++) {
                    $temp[$m]['task_content_list'] = explode(",", $temp[$m]['task_content_list']);
                    $temp[$m]['a_left'] = array_unique($temp[$m]['a_left'] ? explode(",", $temp[$m]['a_left']):$temp[$m]['a_left']);
                    $temp[$m]['a_right'] = array_unique($temp[$m]['a_right'] ?explode(",", $temp[$m]['a_right']) : $temp[$m]['a_right']);
                    $temp[$m]['b_left'] = array_unique($temp[$m]['b_left'] ? explode(",", $temp[$m]['b_left']) : $temp[$m]['b_left']);
                    $temp[$m]['b_right'] = array_unique($temp[$m]['b_right'] ? explode(",", $temp[$m]['b_right']) : $temp[$m]['b_right']);
                    $temp[$m]['a_leader'] = array_unique($temp[$m]['a_leader'] ? explode(",", $temp[$m]['a_leader']) : $temp[$m]['a_leader']);
                    $temp[$m]['b_leader'] = array_unique($temp[$m]['a_leader'] ? explode(",", $temp[$m]['b_leader']) : $temp[$m]['a_leader']);
                    $temp[$m]['a_quality'] = array_unique($temp[$m]['a_quality'] ? explode(",", $temp[$m]['a_quality']) : $temp[$m]['a_quality']);
                    $temp[$m]['b_quality'] = array_unique($temp[$m]['b_quality'] ? explode(",", $temp[$m]['b_quality']) : $temp[$m]['b_quality']);
                }
                $result[$k]['taskPlans'] = $temp;
            }

        }

        //print_r($result);
        return $result;
    }

    public function isExistRecord($condition)
    {
        $data['department_no'] = $condition['department_no'];
        $count = M('cs_task')->where($data)->count();
        return $count > 0;
    }

    public function addData($info)
    {
        $result = true;
        $trans = M('cs_task');
        $trans->startTrans();
        if(isset($info['department_no']) && $info['department_no'] != "") {
            $trans->where("department_no =" .$info['department_no'])->delete();
        } else {
            $trans->where("department_no =" . "001")->delete();
        }
        $data['department_no'] = $info['department_no'] == "" ? "001" : $info['department_no'];
        for ($i = 0; $i < sizeof($info['tasks']) && $result; $i++) {
            $data['title'] = $info['tasks'][$i]['displayName'];
            $data['screen_num'] = $i + 1;
            for ($j = 0; $j < sizeof($info['tasks'][$i]['workGroups']); $j++) {
                $data['work_group_no'] = $info['tasks'][$i]['workGroups'][$j]['work_group_no'];
                $data['manager'] = $info['tasks'][$i]['workGroups'][$j]['manager'];
                $data['watcher'] = $info['tasks'][$i]['workGroups'][$j]['watcher'];
                $data['dispatcher'] = $info['tasks'][$i]['workGroups'][$j]['dispatcher'];
                $data['staff'] = $info['tasks'][$i]['workGroups'][$j]['staff'];
                $result = $trans->data($data)->add();
            }
        }
        if($result) {
            $trans->commit();
        } else {
            $trans->rollback();
        }

        return $result;
    }

    public function deleteData($condition)
    {
        $data['id'] = $condition['id'];
        $result = M('cs_task')->where($data)->delete();
        return $result;
    }

    public function deleteAll($condition)
    {
        $data['department_no'] = $condition['department_no'];
        $result = M('cs_task')->where($data)->delete();
        return $result;
    }

    public function modifyData($info)
    {
        if (isset($info['id'])) {
            $data['id'] = $info['id'];
        }
        if (isset($info['work_group_no'])) {
            $data['work_group_no'] = $info['work_group_no'];
        }
        if (isset($info['manager'])) {
            $data['manager'] = $info['manager'];
        }
        if (isset($info['watcher'])) {
            $data['watcher'] = $info['watcher'];
        }
        if (isset($info['dispatcher'])) {
            $data['dispatcher'] = $info['dispatcher'];
        }
        if (isset($info['staff'])) {
            $data['staff'] = $info['staff'];
        }
        if (isset($info['title'])) {
            $data['title'] = $info['title'];
        }

        if (isset($info['department_no'])) {
            $data['department_no'] = $info['department_no'];
        }
        $result = M('cs_task')->data($data)->save();
        return $result;
    }
}