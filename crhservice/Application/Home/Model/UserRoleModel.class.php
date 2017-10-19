<?php
/**
 * Created by PhpStorm.
 * User: el
 * Date: 2017/3/3
 * Time: 11:07
 */

namespace Home\Model;

use Think\Model;
use Home\Common\Util;

class UserRoleModel extends Model
{

    public function getRecordsCount($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $data .= " AND id='$str' ";
            }
        }
        $list = M('user_role')
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
                $data .= " AND id='$str' ";
            }
        }
        $list = M('user_role')
            ->where($data)
            ->limit($condition['start_record'],$condition['page_size'])
            ->select();
        return $list;
    }


    public function addData($info)
    {
        $data['role_name'] = $info['role_name'];
        $data['comment'] = $info['comment'];
        $data['sort_id'] = $info['sort_id'];
        $data['status'] = $info['status'];
        //只有BS端会设置权限，这里default为1,给CS的角色“role_type”为0
        $data['role_type'] = 1;
        $data['role_scope'] = $info['role_scope'];

//        $sql = M('teacher')->fetchSql(true)->data($data)->add();
//        echo $sql;
        $result = M('user_role')->data($data)->add();
        return $result;
    }

    public function deleteData($condition)
    {
        $result = false;
        $data['id'] = $condition['id'];
        $sqlWhere = "roleCS_id =" . $condition['id'] . " or roleBS_id =" . $condition['id'];
        if(M('user_info')->where($sqlWhere)->count() > 0) {

        } else {
            $result = M('user_role')->where($data)->delete();
        }
        return $result;
    }

    public function modifyData($info)
    {
        if ($info['id']) {
            $data['id'] = $info['id'];
        }

        if (isset($info['role_type'])) {
            $data['role_type'] = $info['role_type'];
        }
        if ($info['role_name']) {
            $data['role_name'] = $info['role_name'];
        }
        if ($info['comment']) {
            $data['comment'] = $info['comment'];
        }
        if (isset($info['sort_id'])) {
            $data['sort_id'] = $info['sort_id'];
        }
        if (isset($info['status'])) {
            $data['status'] = $info['status'];
        }
        if ($info['role_scope']) {
            $data['role_scope'] = $info['role_scope'];
        }

        $result = M('user_role')->data($data)->save();
        return $result;
    }

}