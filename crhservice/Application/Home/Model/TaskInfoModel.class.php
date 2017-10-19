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

class TaskInfoModel extends Model
{
    public function getInfoRecordsCount($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            
        }
        $list = M('task_info')
            ->where($data)
            ->count();
        return $list;
    }

  
    public function getInfoRecords($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            
        }
        $list = M('task_info')
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