<?php
/**
 * Created by PhpStorm.
 * User: PC-LHF
 * Date: 2017-03-03
 * Time: 10:23
 */

namespace Home\Controller;
header("Access-Control-Allow-Origin: *");
use Think\Controller;

class TaskPlanDetailController extends Controller
{
    public function getRecordsCount()
    {
        $result = D("TaskPlanDetail")->getRecordsCount($_POST);
        $this->success($result, null, true);
    }

    public function getRecords()
    {
        $result = D("TaskPlanDetail")->getRecords($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function addData()
    {
        $result = null;
        $result = D('TaskPlanDetail')->addData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function getPortName()
    {
        $result = null;
        $result = D('TaskPlanDetail')->getPortName($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function deleteData()
    {
        $result = null;
        $result = D('TaskPlanDetail')->deleteData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function modifyData()
    {
        $result = null;
        $result = D('TaskPlanDetail')->modifyData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function startTask() {
        $result = null;
        //var_dump(json_decode($_POST["content"]));
        if($_POST["content"]) {
            $result = D('TaskPlanDetail')->startTask(json_decode($_POST["content"]));
        }

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }


    public function endTask() {
        $result = null;
        if($_POST["content"]) {
            $result = D('TaskPlanDetail')->endTask(json_decode($_POST["content"]));
        }

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    //批量更新
    public function modifyRecords() {
        $result = null;
        //print_r(json_decode($_POST['data']));
        $result = D('TaskPlanDetail')->modifyRecords($_POST['data']);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }
}