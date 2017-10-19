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


class CsClearStaffModel extends Model
{
    public function getRecord($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $data .= " AND id='$str' ";
            }
            if ($condition['name']) {
                $str = $condition['name'];
                $data .= " AND name='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND department_no='$str' ";
            }
        }
        $list = M('cs_clear_staff')
            ->where($data)
            ->limit($condition['start_record'], $condition['page_size'])
            ->select();
        return $list;
    }

    public function isExistRecord($condition)
    {
        $data['name'] = $condition['name'];
        $data['department_no'] = $condition['department_no'];
        $count = M('cs_clear_staff')->where($data)->count();
        return $count > 0;
    }

    public function getRecordCount($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $data .= " AND id='$str' ";
            }
            if ($condition['name']) {
                $str = $condition['name'];
                $data .= " AND name='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND department_no='$str' ";
            }
        }
        $list = M('cs_clear_staff')
            ->where($data)
            ->count();
        return $list;
    }

    public function addData($info)
    {
        $data['name'] = $info['name'];
        $data['department_no'] = $info['department_no'];
        $result = M('cs_clear_staff')->data($data)->add();
        return $result;
    }

    public function deleteData($condition)
    {
        $result = null;
        $sql = " DELETE FROM cs_clear_staff WHERE ";
        for ($i = 0; $i < sizeof($condition); $i++) {
            if ($i != sizeof($condition) - 1) {
                $sql .= " id=" . $condition[$i]['id'] . " OR";
            } else {
                $sql .= " id=" . $condition[$i]['id'];
            }
        }
        $result = $this->db->execute($sql);

        return isset($result);
    }

    public function modifyData($info)
    {
        if (isset($info['id'])) {
            $data['id'] = $info['id'];
        }
        if (isset($info['name'])) {
            $data['name'] = $info['name'];
        }
        if (isset($info['department_no'])) {
            $data['department_no'] = $info['department_no'];
        }
        if (isset($info['canvas_width'])) {
            $data['canvas_width'] = $info['canvas_width'];
        }
        if (isset($info['canvas_height'])) {
            $data['canvas_height'] = $info['canvas_height'];
        }
        if (isset($info['point_x'])) {
            $data['point_x'] = $info['point_x'];
        }
        if (isset($info['point_y'])) {
            $data['point_y'] = $info['point_y'];
        }
        $result = M('cs_clear_staff')->data($data)->save();
        return $result;
    }
}