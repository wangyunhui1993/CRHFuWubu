<?php
/**
 * Created by PhpStorm.
 * User: PC-LHF
 * Date: 2017-03-03
 * Time: 10:42
 */

namespace Home\Model;
use Think\Model;


class TaskGroupModel extends Model
{
    public function getRecords($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $data .= " AND id='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND department_no='$str' ";
            }
            if ($condition['task_group_name']) {
                $str = $condition['task_group_name'];
                $data .= " AND task_group_name='$str' ";
            }
        }
        $list = M('task_group')
            ->where($data)
            ->limit($condition['start_record'],$condition['page_size'])
            ->select();
        for($i=0; $i<sizeof($list); $i++) {
            if($list[$i]['group_member'] != null) {
                $list[$i]['group_member'] = explode(',',$list[$i]['group_member']);
            }
        }
        return $list;

    }

    public function getGroupNames($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $data .= " AND id='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND department_no='$str' ";
            }
            if ($condition['task_group_name']) {
                $str = $condition['task_group_name'];
                $data .= " AND task_group_name='$str' ";
            }
        }

        $list = M('task_group')
            ->where($data)
            ->select();
        return $list;

    }

    public function isExistRecord($condition)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $data .= " AND id='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND department_no='$str' ";
            }
            if ($condition['task_group_name']) {
                $str = $condition['task_group_name'];
                $data .= " AND task_group_name='$str' ";
            }
            $count = M('task_group')
                ->where($data)
                ->count();
            return $count > 0;
        }
        return false;
    }

    public function getRecordsCount($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $data .= " AND id='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND department_no='$str' ";
            }
            if ($condition['task_group_name']) {
                $str = $condition['task_group_name'];
                $data .= " AND task_group_name='$str' ";
            }
        }
        $list = M('task_group')
            ->where($data)
            ->count();
        return $list;

    }

    public function addData($info)
    {
        //$data['task_group_no'] = $info['task_group_no'];
        $data['task_group_name'] = $info['task_group_name'];
        //添加时，group number自动产生，在原来最大值基础上加1
        $data['department_no'] = $info['department_no'];
        //传入的group member是数组对象，转化成string,通过逗号连接
        for($i=0; $i<sizeof($info['group_member']); $i++) {
            if($i != sizeof($info['group_member'])-1) {
                $data['group_member'] = $data['group_member'] . $info['group_member'][$i] . ",";
            } else {
                $data['group_member'] = $data['group_member'] . $info['group_member'][$i];
            }
        }
        $data['group_member'] = $info['group_member'];
        $data['comment'] = $info['comment'];
        $result = M('task_group')->data($data)->add();
        return $result;
    }

    public function deleteData($condition)
    {
        $data['id'] = $condition['id'];
        $result = M('task_group')->where($data)->delete();
        return $result;
    }

    public function modifyData($info)
    {
        if (isset($info['id'])) {
            $data['id'] = $info['id'];
        }
        if (isset($info['task_group_name'])) {
            $data['task_group_name'] = $info['task_group_name'];
        }
        if (isset($info['group_member'])) {
            $temp= null;
            //把数组转成String,通过","连接
            for ($i=0; $i<sizeof($info['group_member']); $i++){
                if($i != sizeof($info['group_member'])-1) {
                    $temp .= $info['group_member'][$i] . ",";
                } else {
                    $temp .= $info['group_member'][$i];
                }
            }
            if($temp == null) {
                $data['group_member'] = "";
            } else {
                $data['group_member'] = $temp;
            }
        } else {
            //修复client端在group_member(数组)为空时，该项不会被作为post中的一部分，所以为null
            $data['group_member'] = "";
        }
        if (isset($info['department_no'])) {
            $data['department_no'] = $info['department_no'];
        }
        if (isset($info['comment'])) {
            $data['comment'] = $info['comment'];
        }
//        $sql = M('task_group')->fetchSql(true)->data($data)->add();
//        echo $sql;
        $result = M('task_group')->data($data)->save();
        return $result;
    }
}