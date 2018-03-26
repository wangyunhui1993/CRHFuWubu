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



class DepartmentInfoController extends Controller
{
    public function getRecordsCount()
    {
        $result = D("DepartmentInfo")->getRecordsCount($_POST);
        $this->success($result, null, true);
    }

    public function getRecords()
    {
        $result = D("DepartmentInfo")->getRecords($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function addData()
    {
        $result = null;
        $data['department_name'] = $_POST['department_name'];
        $isExists = D('DepartmentInfo')->isExistRecord($data);
        if ($isExists) {
            $this->error(Util::errorMsg('部门名不能重复，请重新录入'), null, true);
        } else {
            $data['department_name'] = null;
            $data['department_no'] = $_POST['department_no'];
            $isExists = D('DepartmentInfo')->isExistRecord($data);
            if ($isExists) {
                $this->error(Util::errorMsg('部门编号不能重复，请重新录入'), null, true);
            }
        }
        if (!$isExists) {
            $result = D('DepartmentInfo')->addData($_POST);
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
        $result = D('DepartmentInfo')->deleteData($_POST);

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
        $data['department_name'] = $_POST['department_name'];
        $isExists = D('DepartmentInfo')->isExistRecord($data);
        if ($isExists) {
            $this->error(Util::errorMsg('部门名不能重复，请重新录入'), null, true);
            return;
        }
        unset($data);
        $data['id'] = $_POST['id'];
        $data['department_no'] = $_POST['department_no'];
        $isExists = D('DepartmentInfo')->isExistRecord($data);
        if ($isExists) {
            $this->error(Util::errorMsg('部门编号不能重复，请重新录入'), null, true);
            return;
        }

        $result = D('DepartmentInfo')->modifyData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }


    //获取所有子部门
    public function fetchSubDepartments(){
        $result = null;
        $result = M('DepartmentInfo')->where("department_no != 001")->select();//这里hard code了

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }

    }
}