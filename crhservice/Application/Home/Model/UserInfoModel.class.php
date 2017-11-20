<?php


namespace Home\Model;

use Think\Model;
use Home\Common\Util;

class UserInfoModel extends Model
{
    public function login($loginData)
    {
        $util = new Util();
        if ($loginData) {
            if ($loginData['password']) {
                $data['password'] = $loginData['password'];// $util->getEncryptCode($loginData['password']);
            }
            if ($loginData['account']) {
                $data['account'] = $loginData['account'];
            }
        }
        if ($data) {
            $list = M('user_info_view')->where($data)->find();
            return $list;
        } else {
            return null;
        }

    }
    
    public function searchRecords($condition) {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['name']) {
                $str = $condition['name'];
                $data .= " AND name like '%$str%' ";
            }
            if ($condition['account']) {
                $str = $condition['account'];
                $data .= " AND account like '%$str%' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND department_no = '$str' ";
            }
            if ($condition['work_group_no']) {
                $str = $condition['work_group_no'];
                $data .= " AND work_group_no = '$str' ";
            }
        }
        if($condition['task_group_name']) {
            $name = "%" . $condition['task_group_name'] . "%";
            $tempList = M("task_group")->where("task_group_name like '$name'")->select();
            $groupMember = "";
            for($i=0; $i< count($tempList); $i++) {
                if($tempList[$i]['group_member']) {
                    if($i != count($tempList) -1) {
                        $groupMember .= $tempList[$i]['group_member'] . "," ;
                    } else {
                        $groupMember .= $tempList[$i]['group_member'];
                    }
                }
            }
        }
        if($condition['task_group_name']) {
            if($condition['start_record'] && $condition['page_size']) {
                $startStr = $condition['start_record'];
                $pageSizeStr = $condition['page_size'];
                $sql = "SELECT * FROM user_info WHERE find_in_set(account,('$groupMember')) AND $data LIMIT $startStr,$pageSizeStr";
            } else {
                $sql = "SELECT * FROM user_info WHERE find_in_set(account,('$groupMember')) AND $data";
            }
        } else {
            if(isset($condition['start_record']) && $condition['page_size']) {
                $startStr = $condition['start_record'];
                $pageSizeStr = $condition['page_size'];
                $sql = "SELECT * FROM user_info WHERE $data LIMIT $startStr,$pageSizeStr";
            } else {
                $sql = "SELECT * FROM user_info WHERE $data";
            }
        }

        $list = $this->db->query($sql);

        //获取全部的小组信息
        $taskGroups = array();
        if($condition['department_no']) {
            $taskGroups = M("task_group")->where("department_no = " .$condition['department_no'])->select();
        } else {
            $taskGroups = M("task_group")->field("*")->select();
        }
        for ($i=0; $i< count($list); $i++) {           
            $strGroupList = "";
            for($j=0; $j< count($taskGroups); $j++) {
                //成功返回非负整型值
                if(is_int(strpos($taskGroups[$j]['group_member'], $list[$i]["account"]))) {
                    $strGroupList = $strGroupList.$taskGroups[$j]['task_group_name']." , ";                    
                }
            }
            $list[$i]["task_group_name"] = $strGroupList;           
        }

        return $list;
    }

    public function getSearchRecordsCount($condition) {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['name']) {
                $str = $condition['name'];
                $data .= " AND name like '%$str%' ";
            }
            if ($condition['account']) {
                $str = $condition['account'];
                $data .= " AND account like '%$str%' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND department_no = '$str' ";
            }
            if ($condition['work_group_no']) {
                $str = $condition['work_group_no'];
                $data .= " AND work_group_no = '$str' ";
            }
        }
        if($condition['task_group_name']) {
            $name = "%" . $condition['task_group_name'] . "%";
            $tempList = M("task_group")->where("task_group_name like '$name'")->select();
            $groupMember = "";
            for($i=0; $i< count($tempList); $i++) {
                if($tempList[$i]['group_member']) {
                    if($i != count($tempList) -1) {
                        $groupMember .= $tempList[$i]['group_member'] . "," ;
                    } else {
                        $groupMember .= $tempList[$i]['group_member'];
                    }
                }
            }
            if(!$groupMember) {
                return 0;//直接返回
            }
        }

        if($condition['task_group_name']) {
            if($condition['start_record'] && $condition['page_size']) {
                $startStr = $condition['start_record'];
                $pageSizeStr = $condition['page_size'];
                $sql = "SELECT * FROM user_info WHERE find_in_set(account,('$groupMember')) AND $data LIMIT '$startStr','$pageSizeStr'";
            } else {
                $sql = "SELECT * FROM user_info WHERE find_in_set(account,('$groupMember')) AND $data";
            }
        } else {
            if($condition['start_record'] && $condition['page_size']) {
                $startStr = $condition['start_record'];
                $pageSizeStr = $condition['page_size'];
                $sql = "SELECT * FROM user_info WHERE $data LIMIT '$startStr','$pageSizeStr'";
            } else {
                $sql = "SELECT * FROM user_info WHERE $data";
            }
        }

        $list = $this->db->query($sql);
        return count($list);
    }


    public function getRecords($condition = null, $isFuzzyQuery)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($isFuzzyQuery) {
                if ($condition['name']) {
                    $str = $condition['name'];
                    $data .= " AND name like '%$str%' ";
                }
                if ($condition['account']) {
                    $str = $condition['account'];
                    $data .= " AND account like '%$str%' ";
                }
            } else {
                if ($condition['account']) {
                    $str = $condition['account'];
                    $data .= " AND account='$str' ";
                }
                if ($condition['name']) {
                    $str = $condition['name'];
                    $data .= " AND name='$str' ";
                }
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND department_no='$str' ";
            }

            if ($condition['work_group_no']) {
                $str = $condition['work_group_no'];
                $data .= " AND work_group_no='$str' ";
            }
        }
        $list = M('user_info_view')
            ->where($data)
            ->limit($condition['start_record'], $condition['page_size'])
            ->select();
        return $list;

    }

    public function getRecordsCount($condition = null, $isFuzzyQuery)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($isFuzzyQuery) {
                if ($condition['name']) {
                    $str = $condition['name'];
                    $data .= " AND name like '%$str%' ";
                }
                if ($condition['account']) {
                    $str = $condition['account'];
                    $data .= " AND account like '%$str%' ";
                }
            } else {
                if ($condition['account']) {
                    $str = $condition['account'];
                    $data .= " AND account='$str' ";
                }
                if ($condition['name']) {
                    $str = $condition['name'];
                    $data .= " AND name='$str' ";
                }
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND department_no='$str' ";
            }

           if ($condition['work_group_no']) {
                $str = $condition['work_group_no'];
                $data .= " AND work_group_no = '$str' ";
            }
        }
        $list = M('user_info_view')
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
            if ($condition['account']) {
                $str = $condition['account'];
                $data .= " AND account='$str' ";
            }
            if ($condition['name']) {
                $str = $condition['name'];
                $data .= " AND name='$str' ";
            }

            $count = M('user_info')
                ->where($data)
                ->count();
            return $count > 0;
        }
        return false;
    }

    public  function addDataWalker($info, $key)
    {
        if( $info['account'] =='' || $info['name'] == '' || $info['department_no'] =='')
        {
            return ;
        }

        //print($info['department_no']."\r\n==>");
        //$department_no =  "000000";
        $department_no  = $info['department_no'];
        $len = strlen($department_no);//1

        $j = 6;
        $placeHolderLen = (($j-$len) > 0 ? ($j-$len) : 0 );

        for($i=0; $i<$placeHolderLen; $i++){
            $department_no = '0'.$department_no;
        }
        $info['department_no'] = $department_no;

        //print("$department_no\r\n");

        if($info['work_group_no'] != null || $info['work_group_no'] != '')
        {
            $work_group_no  = $info['work_group_no'];
            $len = strlen($work_group_no);//1
            $j = 8;
            $placeHolderLen = (($j-$len) > 0 ? ($j-$len) : 0 );

            for($i=0; $i<$placeHolderLen; $i++){
                $work_group_no = '0'.$work_group_no;
            }
            $info['work_group_no'] = $work_group_no;
        }

//        foreach ($info as $key => $value)
//        {
//            print($key ."=".$value ."\r\n");
//        }

        M('user_info')->data($info)->add($info, array(), true);
    }

    public function addArrayData($infoSet)
    {
        array_walk($infoSet,Array($this,"addDataWalker"));
    }

    public function addData($info)
    {
        $data['account'] = $info['account'];
        $data['name'] = $info['name'];
        $data['password'] = $info['password'];
        $data['department_no'] = $info['department_no'];
        $data['work_group_no'] = $info['work_group_no'];
        $data['work_post'] = $info['work_post'];
        $data['sex'] = $info['sex'];
        $data['phone'] = $info['phone'];
        $data['short_number'] = $info['short_number'];
        $data['address'] = $info['address'];
        $data['rolecs_id'] = $info['rolecs_id'];
        $data['rolebs_id'] = $info['rolebs_id'];


//        $sql = M('teacher')->fetchSql(true)->data($data)->add();
//        echo $sql;
        $result = M('user_info')->data($data)->add();
        return $result;
    }

    public function deleteData($condition)
    {
        $data['id'] = $condition['id'];
        $result = M('user_info')->where($data)->delete();
        return $result;
    }

    public function modifyData($info)
    {

        $data['id'] = $info['id'];

        if ($info['account']) {
            $data['account'] = $info['account'];
        }
        if (isset($info['name'])) {
            $data['name'] = $info['name'];
        }
        if (isset($info['password'])) {
            $data['password'] = $info['password'];
        }
        if (isset($info['department_no'])) {
            $data['department_no'] = $info['department_no'];
        }
        if (isset($info['work_group_no'])) {
            $data['work_group_no'] = $info['work_group_no'];
        }
        if (isset($info['work_post'])) {
            $data['work_post'] = $info['work_post'];
        }
        if (isset($info['sex'])) {
            $data['sex'] = $info['sex'];
        }
        if (isset($info['phone'])) {
            $data['phone'] = $info['phone'];
        }
        if (isset($info['short_number'])) {
            $data['short_number'] = $info['short_number'];
        }
        if (isset($info['address'])) {
            $data['address'] = $info['address'];
        }
        if (isset($info['rolecs_id'])) {
            $data['rolecs_id'] = $info['rolecs_id'];
        }
        if (isset($info['rolebs_id'])) {
            $data['rolebs_id'] = $info['rolebs_id'];
        }
//        $sql = M('user_info')->fetchSql(true)->data($data)->add();
//        echo $sql;
        $result = M('user_info')->data($data)->save();
        return $result;
    }

}