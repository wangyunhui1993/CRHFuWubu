<?php
/**
 * Created by PhpStorm.
 * User: el
 * Date: 2017/3/5
 * Time: 10:35
 */

namespace Home\Model;
use Think\Model;
use Home\Common\Util;

class TrainModelModel extends Model
{
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
        }
        $list = M('train_model')
            ->where($data)
            ->count();
        return $list;
    }

    public function getRecords($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $data .= " AND s.id='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND s.department_no='$str' ";
            }
        }

        if(isset($condition['start_record'])&&$condition['start_record'] != ''&& isset($condition['page_size'])
        &&$condition['page_size'] != '')
        {
            $list = M('train_model')
            ->alias("s")
            ->join("LEFT JOIN department_info AS d on d.department_no=s.department_no")
            ->where($data)
            ->field("s.*,d.department_name")
            ->limit($condition['start_record'],$condition['page_size'])
            ->select();
        }
        else
        {
            $list = M('train_model')
            ->alias("s")
            ->join("LEFT JOIN department_info AS d on d.department_no=s.department_no")
            ->where($data)
            ->field("s.*,d.department_name")
            ->select();
        }

        return $list;
    }

    public function addData($info)
    {
        $data['train_model'] = $info['train_model'];
        $data['rubbish_box'] = $info['rubbish_box'];
        $data['department_no'] = $info['department_no'];
        $data['font_color'] = $info['font_color'];
        $data['parent_type'] = $info['parent_type'];
        $result = M('train_model')->data($data)->add();
        return $result;
    }

    public function deleteData($condition)
    {
        $data['id'] = $condition['id'];
        $result = M('train_model')->where($data)->delete();
        return $result;
    }

    public function modifyData($info)
    {
        if ($info['id']) {
            $data['id'] = $info['id'];
        }

        if (isset($info['train_model'])) {
            $data['train_model'] = $info['train_model'];
        }
        if (isset($info['rubbish_box'])) {
            $data['rubbish_box'] = $info['rubbish_box'];
        }
        if (isset($info['department_no'])) {
            $data['department_no'] = $info['department_no'];
        }
        if (isset($info['font_color'])) {
            $data['font_color'] = $info['font_color'];
        }
        if (isset($info['parent_type'])) {
            $data['parent_type'] = $info['parent_type'];
        }
        $result = M('train_model')->data($data)->save();
        return $result;
    }
}