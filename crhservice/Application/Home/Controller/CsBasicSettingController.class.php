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


class CsBasicSettingController extends Controller
{
    public function getRecord()
    {
        $isExists = D('CsBasicSetting')->isExistRecord($_POST);
        if(!$isExists) {
            $this->success([], null, true);
        } else {
            $result = D("CsBasicSetting")->getRecord($_POST);
            if (isset($result)) {
                $this->success($result, null, true);
            } else {
                $this->error($_POST, null, true);
            }
        }
    }

    public function addData()
    {
        $result = null;
        $isExists = D('CsBasicSetting')->isExistRecord($_POST);
        if ($isExists) {
            $this->modifyData();
        } else {
            $result = D('CsBasicSetting')->addData($_POST);
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
        $result = D('CsBasicSetting')->deleteData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function modifyData()
    {
        $result = null;
        $result = D('CsBasicSetting')->modifyData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }
}