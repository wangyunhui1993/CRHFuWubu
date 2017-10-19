<?php
/**
 * Created by PhpStorm.
 * User: el
 * Date: 2017/3/5
 * Time: 10:42
 */

namespace Home\Model;
use Think\Model;
use Home\Common\Util;

class TrainDataModel extends Model
{
    public function getRecordsCount($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['train_line']) {
                $str = $condition['train_line'];
                $data .= " AND train_line='$str' ";
            }
            if ($condition['gudao']) {
                $str = $condition['gudao'];
                $data .= " AND gudao='$str' ";
            }

            if ($condition['train_group']) {
                $str = $condition['train_group'];
                $data .= " AND train_group='$str' ";
            }
            if ($condition['xiucheng']) {
                $str = $condition['xiucheng'];
                $data .= " AND xiucheng='$str' ";
            }

        }
        $list = M('train_data')
            ->where($data)
            ->count();
        return $list;
    }

    public function getTrainData($condition)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['train_line']) {
                $str = $condition['train_line'];
                $data .= " AND train_line='$str' ";
            }
            if ($condition['gudao']) {
                $str = $condition['gudao'];
                $data .= " AND gudao='$str' ";
            }

            if ($condition['train_group']) {
                $str = $condition['train_group'];
                $data .= " AND train_group='$str' ";
            }
            if ($condition['xiucheng']) {
                $str = $condition['xiucheng'];
                $data .= " AND xiucheng='$str' ";
            }
            // if ($condition['workDate']) {
            //     $str = $condition['train_group'];
            //     $data .= " AND train_group='$str' ";
            // }

            
        }
        $list = M('train_data')
            ->where($data)
            ->select();
        return $list;
    }
    public function getInfoRecords($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $data .= " AND id='$str' ";
            }
        }
        $list = M('work_operate')
            ->where($data)
            ->select();
        return $list;
    }


    public function addData($info)
    {
        $data['name'] = $info['name'];

//        $sql = M('teacher')->fetchSql(true)->data($data)->add();
//        echo $sql;
        $result = M('train_group')->data($data)->add();
        return $result;
    }

    public function deleteData($condition)
    {
        $data['id'] = $condition['id'];
        $result = M('train_group')->where($data)->delete();
        return $result;
    }

    public function modifyData($info)
    {
        if ($info['id']) {
            $data['id'] = $info['id'];
        }

        if ($info['name']) {
            $data['name'] = $info['name'];
        }

        $result = M('train_group')->data($data)->add();
        return $result;
    }
}