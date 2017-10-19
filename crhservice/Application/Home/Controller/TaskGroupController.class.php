<?php
/**
 * Created by PhpStorm.
 * User: PC-LHF
 * Date: 2017-03-03
 * Time: 10:39
 */

namespace Home\Controller;
use Think\Controller;
use Home\Common\Util;
header("Access-Control-Allow-Origin: *");

class TaskGroupController extends Controller
{
    public function getRecordsCount()
    {
        $result = D("TaskGroup")->getRecordsCount($_POST);
        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function getRecords()
    {
        $result = D("TaskGroup")->getRecords($_POST);
        if ($result) {
            $this->success($result, null, true);
        } else {
            if(!D("TaskGroup")->isExistRecord($_POST)){
                $this->success("", null, true);//没有记录，设置空值
            }else {
                $this->error($_POST, null, true);
            }
        }
    }

    public function addData()
    {
        $result = null;
        if($_POST['department_no'] == null) {
            $this->error(Util::errorMsg('部门编号为空，请选择！'), null, true);
        }
        if($_POST['task_group_name'] == null) {
            $this->error(Util::errorMsg('作业小组名称为空，请填写！'), null, true);
        }
        //获取当前部门的下面的作业小组的最大ID值，如：00100103,则本次add时ID值为00100104
//        $map['department_no'] = $_POST['department_no'];
//        $maxID = M('TaskGroup')->field("task_group_no")->where($map)->order('task_group_no desc')->find();
//        if($maxID) {
//            $ID = Util::createTaskGroupID($_POST['department_no'], $maxID['task_group_no'] );
//        }else {
//            $ID = $_POST['department_no'] . "01";//第一个小组
//        }

//        if($ID == null) {
//            $this->error(Util::errorMsg('作业小组ID有误！'), null, true);
//        }
//        $_POST['task_group_no'] = $ID;
        $result = D('TaskGroup')->addData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function deleteData()
    {
        $result = null;
        $result = D('TaskGroup')->deleteData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function modifyData()
    {
        $result = null;
        $result = D('TaskGroup')->modifyData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

}