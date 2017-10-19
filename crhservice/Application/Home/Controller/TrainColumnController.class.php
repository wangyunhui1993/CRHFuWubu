<?php
/**
 * Created by PhpStorm.
 * User: el
 * Date: 2017/3/5
 * Time: 10:51
 */

namespace Home\Controller;
header("Access-Control-Allow-Origin: *");
use Think\Controller;

class TrainColumnController extends Controller
{
    public function getRecordsCount()
    {
        $result = D("train_column")->getRecordsCount($_POST);
        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function getRecords()
    {
        $result = D("train_column")->getRecords($_POST);
        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function addData()
    {
        $result = null;
        $result = D('train_column')->addData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function deleteData()
    {
        $result = null;
        $result = D('train_column')->deleteData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function modifyData()
    {
        $result = null;
        $result = D('train_column')->modifyData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }
}