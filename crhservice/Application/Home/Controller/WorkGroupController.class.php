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

class WorkGroupController extends Controller
{
    public function getRecordsCount()
    {
        $result = D("WorkGroup")->getRecordsCount($_POST);
        $this->success($result, null, true);
    }

    public function getRecords()
    {
        $result = D("WorkGroup")->getRecords($_POST);
        $this->success($result, null, true);
    }

    public function addData()
    {
        $result = null;

        $data['work_group_name'] = $_POST['work_group_name'];
        $isExists = D('WorkGroup')->isExistRecord($data);
        if ($isExists) {
            $this->error(Util::errorMsg('班组名不能重复，请重新录入'), null, true);
        }
        unset($data);
        if (!$isExists) {
            //获取当前部门的下面的作业小组的最大ID值，如：00100103,则本次add时ID值为00100104
            $map['department_no'] = $_POST['department_no'];
            $maxID = M('WorkGroup')->field("work_group_no")->where($map)->order('work_group_no desc')->find();
            if ($maxID) {
                $ID = Util::createTaskGroupID($_POST['department_no'], $maxID['work_group_no']);
            } else {
                $ID = $_POST['department_no'] . "01";//第一个小组
            }

            $_POST['work_group_no'] = $ID;
            $result = D('WorkGroup')->addData($_POST);

            if ($result) {
                $this->success($result, null, true);
            } else {
                $this->error($_POST, null, true);
            }
        }
    }

    public function deleteData()
    {
        $result = null;
        $result = D('WorkGroup')->deleteData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function modifyData()
    {
        $result = null;
        $data['id'] = $_POST['id'];
        $data['work_group_name'] = $_POST['work_group_name'];
        $isExists = D('WorkGroup')->isExistRecord($data);
        if ($isExists) {
            $this->error(Util::errorMsg('班组名不能重复，请重新录入'), null, true);
        }
        unset($data);
        if (!$isExists) {
            $result = D('WorkGroup')->modifyData($_POST);
            if ($result) {
                $this->success($result, null, true);
            } else {
                $this->error($_POST, null, true);
            }
        }
    }

}