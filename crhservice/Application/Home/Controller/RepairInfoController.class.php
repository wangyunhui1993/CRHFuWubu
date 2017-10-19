<?php
/**
 * Created by PhpStorm.
 * User: PC-LHF
 * Date: 2017-03-03
 * Time: 11:04
 */

namespace Home\Controller;

use Think\Controller;
use Home\Common\Util;

header("Access-Control-Allow-Origin: *");

class RepairInfoController extends Controller
{
    public function getRecordsCount()
    {
        $result = D("RepairInfo")->getRecordsCount($_POST);
        $this->success($result, null, true);
    }

    public function getRecords()
    {
        $result = D("RepairInfo")->getRecords($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function addData()
    {
        $result = null;
        $data['name'] = $_POST['name'];
        $isExists = D('RepairInfo')->isExistRecord($data);
        if ($isExists) {
            $this->error(Util::errorMsg('修程不能重复，请重新录入'), null, true);
        } else {
            $result = D('RepairInfo')->addData($_POST);
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
        $result = D('RepairInfo')->deleteData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function modifyData()
    {
        $result = null;
        $data['id'] = $_POST['id'];
        $data['name'] = $_POST['name'];
        $isExists = D('RepairInfo')->isExistRecord($data);
        if ($isExists) {
            $this->error(Util::errorMsg('修程不能重复，请重新录入'), null, true);
        } else {
            $result = D('RepairInfo')->modifyData($_POST);

            if ($result) {
                $this->success($result, null, true);
            } else {
                $this->error($_POST, null, true);
            }
        }
    }
}