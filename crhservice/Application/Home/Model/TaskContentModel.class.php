<?php
/**
 * Created by PhpStorm.
 * User: PC-LHF
 * Date: 2017-03-03
 * Time: 10:48
 */

namespace Home\Model;

use Think\Model;


class TaskContentModel extends Model
{
    public function getRecords($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $data .= " AND s.id='$str' ";
            }
            if ($condition['task_content']) {
                $str = $condition['task_content'];
                $data .= " AND s.task_content='$str' ";
            }
            if (isset($condition['is_statistics'])) {
                $str = $condition['is_statistics'];
                $data .= " AND s.is_statistics='$str' ";
            }
            //作业内容为所有部门共用，所以不检查部门
//            if ($condition['department_no']) {
//                $str = $condition['department_no'];
//                $data .= " AND s.department_no='$str' ";
//            }
        }

        if(isset($condition['start_record'])&&$condition['start_record'] != ''&& isset($condition['page_size'])
        &&$condition['page_size'] != '')
        {
            $list = M('task_content')
            ->alias("s")
            ->join("LEFT JOIN department_info AS d on d.department_no=s.department_no")
            ->where($data)
            ->field("s.*,d.department_name")
            ->limit($condition['start_record'],$condition['page_size'])
            ->select();
        }
        else
        {
            $list = M('task_content')
            ->alias("s")
            ->join("LEFT JOIN department_info AS d on d.department_no=s.department_no")
            ->where($data)
            ->field("s.*,d.department_name")
            ->select();
        }

        return $list;
    }

    public function getRecordsCount($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $data .= " AND id='$str' ";
            }
            if ($condition['task_content']) {
                $str = $condition['task_content'];
                $data .= " AND task_content='$str' ";
            }
            if ($condition['is_statistics']) {
                $str = $condition['is_statistics'];
                $data .= " AND is_statistics='$str' ";
            }
            //作业内容为所有部门共用，所以不检查部门
//            if ($condition['department_no']) {
//                $str = $condition['department_no'];
//                $data .= " AND department_no='$str' ";
//            }
        }
        $list = M('task_content')
            ->where($data)
            ->count();
        return $list;
    }

    public function addData($info)
    {
        $data['task_content'] = $info['task_content'];
        $data['is_statistics'] = $info['is_statistics'];
        $data['department_no'] = $info['department_no'];
        $data['font_color'] = $info['font_color'];

        $result = M('task_content')->data($data)->add();
        return $result;
    }

    public function deleteData($condition)
    {
        $data['id'] = $condition['id'];
        $result = M('task_content')->where($data)->delete();
        return $result;
    }

    public function modifyData($info)
    {
        if ($info['id']) {
            $data['id'] = $info['id'];
        }
        if ($info['task_content']) {
            $data['task_content'] = $info['task_content'];
        }
        if (isset($info['is_statistics'])) {
            $data['is_statistics'] = (int)($info["is_statistics"]);
        }
        if ($info['department_no']) {
            $data['department_no'] = $info['department_no'];
        }
        if ($info['font_color']) {
            $data['font_color'] = $info['font_color'];
        }
        $result = M('task_content')->data($data)->save();
        return $result;
    }
}