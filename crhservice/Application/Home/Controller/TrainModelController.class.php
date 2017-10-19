<?php
/**
 * Created by PhpStorm.
 * User: el
 * Date: 2017/3/5
 * Time: 10:33
 */

namespace Home\Controller;
header("Access-Control-Allow-Origin: *");
use Think\Controller;

class TrainModelController extends Controller
{
    public function getRecordsCount()
    {
        $result = D("train_model")->getRecordsCount($_POST);
        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function getRecords()
    {
        $result = D("train_model")->getRecords($_POST);
        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function addData()
    {
        $result = null;
        $result = D('train_model')->addData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function deleteData()
    {
        $result = null;
        $result = D('train_model')->deleteData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function modifyData()
    {
        $result = null;
        $result = D('train_model')->modifyData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }
}