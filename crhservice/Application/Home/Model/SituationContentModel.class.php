<?php
/**
 * Created by PhpStorm.
 * User: PC-LHF
 * Date: 2017-03-03
 * Time: 11:02
 */

namespace Home\Model;
use Think\Model;

class SituationContentModel extends Model
{
    public function getRecords($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $data .= " AND s.id='$str' ";
            }
            if ($condition['situation_content']) {
                $str = $condition['situation_content'];
                $data .= " AND s.situation_content='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND s.department_no='$str' ";
            }
        }
        $list = M('situation_content')
            ->alias("s")
            ->join("LEFT JOIN department_info AS d on d.department_no=s.department_no")
            ->where($data)
            ->field("s.*,d.department_name")
            ->limit($condition['start_record'],$condition['page_size'])
            ->select();
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
            if ($condition['situation_content']) {
                $str = $condition['situation_content'];
                $data .= " AND situation_content='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND department_no='$str' ";
            }
        }
        $list = M('situation_content')
            ->where($data)
            ->count();
        return $list;

    }

    public function addData($info)
    {
        $data['situation_content'] = $info['situation_content'];
        $data['font_color'] = $info['font_color'];
        $data['department_no'] = $info['department_no'];
        $result = M('situation_content')->data($data)->add();
        return $result;
    }

    public function deleteData($condition)
    {
        $data['id'] = $condition['id'];
        $result = M('situation_content')->where($data)->delete();
        return $result;
    }

    public function modifyData($info)
    {
        if ($info['id']) {
            $data['id'] = $info['id'];
        }
        if ($info['situation_content']) {
            $data['situation_content'] = $info['situation_content'];
        }
        if ($info['font_color']) {
            $data['font_color'] = $info['font_color'];
        }
        if ($info['department_no']) {
            $data['department_no'] = $info['department_no'];
        }
        $result = M('situation_content')->data($data)->save();
        return $result;
    }
}