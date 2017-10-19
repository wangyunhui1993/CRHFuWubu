<?php
/**
 * Created by PhpStorm.
 * User: PC-LHF
 * Date: 2017-03-03
 * Time: 10:42
 */

namespace Home\Model;
use Think\Model;


class WorkGroupModel extends Model
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
            if ($condition['work_group_no']) {
                $str = $condition['work_group_no'];
                $data .= " AND work_group_no='$str' ";
            }
        }
        $list = M('work_group')
            ->where($data)
            ->limit($condition['start_record'],$condition['page_size'])
            ->select();
        return $list;

    }

    public function isExistRecord($condition)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $data .= " AND id != '$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND department_no='$str' ";
            }
            if ($condition['work_group_no']) {
                $str = $condition['work_group_no'];
                $data .= " AND work_group_no='$str' ";
            }
            if ($condition['work_group_name']) {
                $str = $condition['work_group_name'];
                $data .= " AND work_group_name='$str' ";
            }
            $count = M('work_group')
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
            if ($condition['work_group_no']) {
                $str = $condition['work_group_no'];
                $data .= " AND work_group_no='$str' ";
            }
            if ($condition['work_group_name']) {
                $str = $condition['work_group_name'];
                $data .= " AND work_group_name='$str' ";
            }
        }
        $list = M('work_group')
            ->where($data)
            ->count();
        return $list;

    }

    public function addData($info)
    {
        $data['work_group_no'] = $info['work_group_no'];
        $data['work_group_name'] = $info['work_group_name'];
        $data['department_no'] = $info['department_no'];
        $data['comment'] = $info['comment'];
        $result = M('work_group')->data($data)->add();
        return $result;
    }

    public function deleteData($condition)
    {
        $data['id'] = $condition['id'];
        $result = M('work_group')->where($data)->delete();
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
        if (isset($info['work_group_name'])) {
            $data['work_group_name'] = $info['work_group_name'];
        }
        if (isset($info['department_no'])) {
            $data['department_no'] = $info['department_no'];
        }
        if (isset($info['comment'])) {
            $data['comment'] = $info['comment'];
        }
//        $sql = M('work_group')->fetchSql(true)->data($data)->add();
//        echo $sql;
        $result = M('work_group')->data($data)->save();
        return $result;
    }
}