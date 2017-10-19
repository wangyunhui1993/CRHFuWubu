<?php

namespace Home\Controller;
header("Access-Control-Allow-Origin: *");
use Think\Controller;

class TaskOperateController extends Controller
{
    
    
    public function getAllOperate()
    {
        $result = D("TrainData")->getTrainData($_POST);
        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function getAllWorkinfo()
    {
        $result = D("TaskInfo")->getInfoRecords($_POST);
        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function getOperateRecordsCount()
    {
        $result = D("TrainData")->getRecordsCount($_POST);
        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function getInfoRecordsCount()
    {
        $result = D("TaskInfo")->getInfoRecordsCount($_POST);
        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }
    public function deleteData()
    {
        $result = null;
        $result = D('TaskPlan')->deleteData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function modifyData()
    {
        $result = null;
        $result = D('TaskPlan')->modifyData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

}