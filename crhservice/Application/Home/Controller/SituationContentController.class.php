<?php
/**
 * Created by PhpStorm.
 * User: PC-LHF
 * Date: 2017-03-03
 * Time: 10:59
 */

namespace Home\Controller;

header("Access-Control-Allow-Origin: *");
use Think\Controller;



class SituationContentController extends Controller
{
    public function getRecordsCount()
    {
        $result = D("SituationContent")->getRecordsCount($_POST);
        $this->success($result, null, true);
    }

    public function getRecords()
    {
        $result = D("SituationContent")->getRecords($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function addData()
    {
        $result = null;
        $result = D('SituationContent')->addData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function deleteData()
    {
        $result = null;
        $result = D('SituationContent')->deleteData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function modifyData()
    {
        $result = null;
        $result = D('SituationContent')->modifyData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

}