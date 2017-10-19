<?php
/**
 * Created by PhpStorm.
 * User: PC-HT
 * Date: 2017-03-03
 * Time: 10:42
 */

namespace Home\Model;
use Think\Model;


class TaskPortModel extends Model
{
    public function getRecords($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND department_no='$str' ";
            }
        }
        $list = M('task_port')
            ->where($data)
            ->select();
        return $list[0];

    }

    public function isExistRecord($condition)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND department_no='$str' ";
            }
            $count = M('task_port')
                ->where($data)
                ->count();
            return $count > 0;
        }
        return false;
    }

    public function addData($info)
    {
        $data['department_no'] = $info['department_no'];
        $data['a_left'] = $info['a_left'];
        $data['a_right'] = $info['a_right'];
        $data['b_left'] = $info['b_left'];
        $data['b_right'] = $info['b_right'];
        $data['a_leader'] = $info['a_leader'];
        $data['b_leader'] = $info['b_leader'];
        $data['a_quality'] = $info['a_quality'];
        $data['b_quality'] = $info['b_quality'];
        $result = M('task_port')->data($data)->add();
        return $result;
    }

    public function modifyData($info)
    {
        if($this->isExistRecord($info['department_no'])){

            //修改必须带上主键
            if (isset($info['id'])) {
                $data['id'] = $info['id'];
            }

            if (isset($info['department_no'])) {
                $data['department_no'] = $info['department_no'];
            }
            if (isset($info['a_left'])) {
                $data['a_left'] = $info['a_left'];
            }
            if (isset($info['a_right'])) {
                $data['a_right'] = $info['a_right'];
            }
            if (isset($info['b_left'])) {
                $data['b_left'] = $info['b_left'];
            }
            if (isset($info['b_right'])) {
                $data['b_right'] = $info['b_right'];
            }
            if (isset($info['a_leader'])) {
                $data['a_leader'] = $info['a_leader'];
            }
            if (isset($info['b_leader'])) {
                $data['b_leader'] = $info['b_leader'];
            }
            if (isset($info['a_quality'])) {
                $data['a_quality'] = $info['a_quality'];
            }
            if (isset($info['b_quality'])) {
                $data['b_quality'] = $info['b_quality'];
            }


            $result = M('task_port')->data($data)->save();
        } else {
            $result = $this->addData($info);
        }

        return $result;
    }
}