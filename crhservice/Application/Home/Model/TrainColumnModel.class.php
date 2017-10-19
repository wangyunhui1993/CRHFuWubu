<?php
/**
 * Created by PhpStorm.
 * User: el
 * Date: 2017/3/5
 * Time: 10:52
 */

namespace Home\Model;

use Think\Model;
use Home\Common\Util;

class TrainColumnModel extends Model
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

        $list = M('train_column')
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
        $list = M('train_column')
            ->alias("s")
            ->join("LEFT JOIN department_info AS d on d.department_no=s.department_no")
            ->where($data)
            ->field("s.*,d.department_name")
            ->limit($condition['start_record'], $condition['page_size'])
            ->select();
        return $list;
    }

    public function addData($info)
    {
        $data['train_column'] = $info['train_column'];
        $data['train_model'] = $info['train_model'];
        $data['train_group'] = $info['train_group'];
        $data['department_no'] = $info['department_no'];
        $data['font_color'] = $info['font_color'];

//        $sql = M('teacher')->fetchSql(true)->data($data)->add();
//        echo $sql;
        $result = M('train_column')->data($data)->add();
        return $result;
    }

    public function deleteData($condition)
    {
        $data['id'] = $condition['id'];
        $result = M('train_column')->where($data)->delete();
        return $result;
    }

    public function modifyData($info)
    {
        if ($info['id']) {
            $data['id'] = $info['id'];
        }

        if ($info['train_column']) {
            $data['train_column'] = $info['train_column'];
        }

        if ($info['train_model']) {
            $data['train_model'] = $info['train_model'];
        }

        if ($info['train_group']) {
            $data['train_group'] = $info['train_group'];
        }

        if ($info['department_no']) {
            $data['department_no'] = $info['department_no'];
        }
        if ($info['font_color']) {
            $data['font_color'] = $info['font_color'];
        }

        $result = M('train_column')->data($data)->save();
        return $result;
    }
}