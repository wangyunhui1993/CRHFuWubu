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


class DepartmentInfoModel extends Model
{
    public function getRecords($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $data .= " AND id='$str' ";
            }
            if ($condition['department_name']) {
                $str = $condition['department_name'];
                $data .= " AND department_name like '%$str%' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND department_no like '%$str%' ";
            }
            $data .= " OR id='001'";

        }
        $list = M('department_info')
            ->where($data)
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
            if ($condition['department_name']) {
                $str = $condition['department_name'];
                $data .= " AND department_name='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND department_no='$str' ";
            }
        }
        $list = M('department_info')
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
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND department_no='$str' ";
            }
            if ($condition['department_name']) {
                $str = $condition['department_name'];
                $data .= " AND department_name='$str' ";
            }

            $count = M('department_info')
                ->where($data)
                ->count();
            return $count > 0;
        }
        return false;
    }

    public function addData($info)
    {
        $data['department_name'] = $info['department_name'];
        $data['comment'] = $info['comment'];
        $data['department_no'] = $info['department_no'];
        $result = M('department_info')->data($data)->add();
        return $result;
    }

    public function deleteData($condition)
    {
        $data['id'] = $condition['id'];
        $result = M('department_info')->where($data)->delete();
        return $result;
    }

    public function modifyData($info)
    {
        if (isset($info['id'])) {
            $data['id'] = $info['id'];
        }
        if (isset($info['department_name'])) {
            $data['department_name'] = $info['department_name'];
        }
        if (isset($info['department_no'])) {
            $data['department_no'] = $info['department_no'];
        }
        if (isset($info['comment'])) {
            $data['comment'] = $info['comment'];
        }
        $result = M('department_info')->data($data)->save();
        return $result;
    }
}