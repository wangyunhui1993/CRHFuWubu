<?php
/**
 * Created by PhpStorm.
 * User: PC-LHF
 * Date: 2017-03-03
 * Time: 11:06
 */

namespace Home\Model;

use Think\Model;

class RepairInfoModel extends Model
{
    public function getRecords($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $data .= " AND id='$str' ";
            }
            if ($condition['name']) {
                $str = $condition['name'];
                $data .= " AND `name`='$str' ";
            }
        }

        if(isset($condition['start_record'])&&$condition['start_record'] != ''&& isset($condition['page_size'])
        &&$condition['page_size'] != '')
        {
            $list = M('repair_info')
            ->where($data)
            ->limit($condition['start_record'], $condition['page_size'])
            ->select();
        }
        else
        {
            $list = M('repair_info')
            ->where($data)
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
            if ($condition['name']) {
                $str = $condition['name'];
                $data .= " AND `name`='$str' ";
            }
        }
        $list = M('repair_info')
            ->where($data)
            ->count();
        return $list;

    }

    public function isExistRecord($condition)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $data .= " AND id!='$str' ";
            }
            if ($condition['name']) {
                $str = $condition['name'];
                $data .= " AND name='$str' ";
            }

            $count = M('repair_info')
                ->where($data)
                ->count();
            return $count > 0;
        }
        return false;
    }

    public function addData($info)
    {
        $data['font_color'] = $info['font_color'];
        $data['name'] = $info['name'];
        $data['category'] = $info['category'];
        $result = M('repair_info')->data($data)->add();
        return $result;
    }

    public function deleteData($condition)
    {
        $data['id'] = $condition['id'];
        $result = M('repair_info')->where($data)->delete();
        return $result;
    }

    public function modifyData($info)
    {
        if ($info['id']) {
            $data['id'] = $info['id'];
        }
        if (isset($info['name'])) {
            $data['name'] = $info['name'];
        }
        if (isset($info['font_color'])) {
            $data['font_color'] = $info['font_color'];
        }
        if (isset($info['category'])) {
            $data['category'] = $info['category'];
        }
        $result = M('repair_info')->data($data)->save();
        return $result;
    }
}