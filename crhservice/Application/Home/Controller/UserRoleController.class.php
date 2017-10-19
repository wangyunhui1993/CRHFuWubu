<?php
/**
 * Created by PhpStorm.
 * User: el
 * Date: 2017/3/3
 * Time: 11:52
 */

namespace Home\Controller;
header("Access-Control-Allow-Origin: *");
use Think\Controller;

class UserRoleController extends Controller
{
    public function getRecordsCount()
    {
        $result = D("UserRole")->getRecordsCount($_POST);
        $this->success($result, null, true);
    }

    public function getRecords()
    {
        $result = D("UserRole")->getRecords($_POST);
        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function addData()
    {
        $result = null;
        $result = D('UserRole')->addData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function deleteData()
    {
        $result = null;
        $result = D('UserRole')->deleteData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function modifyData()
    {
        $result = null;
        $result = D('UserRole')->modifyData($_POST);

        if (is_numeric($result) && intval($result) >= 0) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }
}