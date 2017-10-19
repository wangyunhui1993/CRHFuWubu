<?php
/**
 * Created by PhpStorm.
 * User: PC-LHF
 * Date: 2017-03-03
 * Time: 11:09
 */

namespace Home\Controller;
use Think\Controller;
use Home\Common\Util;

header("Access-Control-Allow-Origin: *");

class CsTaskController extends Controller
{
    public function getRecords()
    {
//        $isExists = D('CsTask')->isExistRecord($_POST);
//        if(!$isExists) {
//            $this->success([], null, true);
//        } else {
            $result = D("CsTask")->getRecords($_POST);
            if (isset($result)) {
                $this->success($result, null, true);
            } else {
                $this->error($_POST, null, true);
            }
//        }
    }

    public function addData()
    {
        $result = null;
//        $isExists = D('CsTask')->isExistRecord($_POST);
//        if ($isExists) {
//            $this->modifyData();
//        } else {
            $result = D('CsTask')->addData($_POST);
            if ($result) {
                $this->success($result, null, true);
            } else {
                $this->error($_POST, null, true);
            }
//        }

    }

    public function deleteData()
    {
        $result = null;
        $result = D('CsTask')->deleteData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function modifyData()
    {
        $result = null;
        $result = D('CsTask')->modifyData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }
}