<?php
/**
 * Created by PhpStorm.
 * User: PC-LHF
 * Date: 2017-03-03
 * Time: 11:09
 */

namespace Home\Controller;
header("Access-Control-Allow-Origin: *");
use Think\Controller;
use Home\Common\Util;



class CsLedController extends Controller
{
    public function getRecords()
    {
        $result = D("CsLed")->getRecords($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function addData()
    {
        $result = null;

        $result = D('CsLed')->addData($_POST);
        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }

    }

    public function deleteData()
    {
        $result = null;
        $result = D('CsLed')->deleteData($_POST['data']);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function modifyData()
    {
        $result = null;
        $result = D('CsLed')->modifyData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }
}