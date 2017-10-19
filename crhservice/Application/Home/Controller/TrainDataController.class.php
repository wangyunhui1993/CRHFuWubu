<?php

namespace Home\Controller;
header("Access-Control-Allow-Origin: *");
use Think\Controller;

class TrainDataController extends Controller
{
    
    
    public function getRecordsCount()
    {
        $result = D("trainData")->getRecordsCount($_POST);
            $this->success($result, null, true);
        
    }

    public function getTrainData()
    {
        $result = D("TrainData")->getTrainData($_POST);
        if (isset($result)) {
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