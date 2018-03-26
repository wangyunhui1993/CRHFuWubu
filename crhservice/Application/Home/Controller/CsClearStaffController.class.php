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

class CsClearStaffController extends Controller
{
    public function getRecord()
    {
        $result = D("CsClearStaff")->getRecord($_POST);
        $this->success($result, null, true);
    }

    public function getRecordCount()
    {
        $result = D("CsClearStaff")->getRecordCount($_POST);
        $this->success($result, null, true);
    }

    public function addData()
    {
        $result = null;
        $isExists = D('CsClearStaff')->isExistRecord($_POST);
        if ($isExists) {
            $this->error(Util::errorMsg('姓名不能重复，请重新录入'), null, true);
        } else {
            $result = D('CsClearStaff')->addData($_POST);
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
        $result = D('CsClearStaff')->deleteData($_POST['data']);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function modifyData()
    {
        $result = null;
        $result = D('CsClearStaff')->modifyData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function modifyItems()
    {
        $dataArray = $_POST['data'];
        for ($i = 0; $i < count($dataArray); $i++) {
            $item = $dataArray[$i];
            $item['canvas_width']= $_POST['canvas_width'];
            $item['canvas_height']=$_POST['canvas_height'];
            $item['department_no']=$_POST['department_no'];
            $result = D('CsClearStaff')->modifyData($item);
        }
        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($dataArray, null, true);
        }
    }
}