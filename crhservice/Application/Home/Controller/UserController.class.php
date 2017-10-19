<?php
namespace Home\Controller;
header("Access-Control-Allow-Origin: *");
use Think\Controller;
use Home\Common\Util;

use Home\Common\ExcelOperationHelper;


class UserController extends Controller
{
    public function ajaxLogin()
    {
        $result = null;
        $data['password'] = $_POST['checkPass'];
        $data['account'] = $_POST['account'];
        $result = D('UserInfo')->login($data);

        if (isset($result)) {
            $result["password"] = '';
            $_SESSION["user"] = $result;
            $this->success($result, null, true);
        } else {
            $this->error($data, null, true);
        }
    }

    public function ajaxLogout()
    {
        if ($_SESSION["user"] != null) {
            unset($_SESSION["user"]);
        }
        $this->success(true);
    }

    public function getRecordsCount()
    {
        $result = D("UserInfo")->getRecordsCount($_POST);
        $this->success($result, null, true);
    }

    public function queryRecords()
    {
        $result = D("UserInfo")->getRecords($_POST, true);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function queryRecordsCount()
    {
        $result = D("UserInfo")->getRecordsCount($_POST, true);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function getRecords()
    {
        $result = D("UserInfo")->getRecords($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    //包含小组信息, 模糊查找
    public function searchRecords()
    {
        $result = D("UserInfo")->searchRecords($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    //包含小组信息数, 模糊查找
    public function getSearchRecordsCount()
    {
        $result = D("UserInfo")->getSearchRecordsCount($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function addData()
    {
        $result = null;
        $data['account'] = $_POST['account'];
        $isExists = D('UserInfo')->isExistRecord($data);
        if ($isExists) {
            $this->error(Util::errorMsg('账户名不能重复，请重新录入'), null, true);
        } else {
            unset($data);
            $data['name'] = $_POST['name'];
            $isExists = D('UserInfo')->isExistRecord($data);
            if ($isExists) {
                $this->error(Util::errorMsg('姓名不能重复，请重新录入'), null, true);
            }
        }
        if (!$isExists) {
            $result = D('UserInfo')->addData($_POST);

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
        $result = D('UserInfo')->deleteData($_POST);

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
        $data['account'] = $_POST['account'];
        $isExists = D('UserInfo')->isExistRecord($data);
        if ($isExists) {
            $this->error(Util::errorMsg('账户名不能重复，请重新录入'), null, true);
        } else {
            unset($data);
            $data['id'] = $_POST['id'];
            $data['name'] = $_POST['name'];
            $isExists = D('UserInfo')->isExistRecord($data);
            if ($isExists) {
                $this->error(Util::errorMsg('姓名不能重复，请重新录入'), null, true);
            }
        }
        if (!$isExists) {
            $result = D('UserInfo')->modifyData($_POST);

            if (is_numeric($result) && intval($result) >= 0) {
                $this->success($result, null, true);
            } else {
                $this->error($_POST, null, true);
            }
        }
    }

    public function modifyUserInfo()
    {
        $result = D('UserInfo')->modifyData($_POST);
        //$this->success($result, null, true);

        if (is_numeric($result) && intval($result) >= 0) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function importRecordDataFromExcel($fileName)
    {
 
        $ExcelTitle2RecordKey = Array('账号' => 'account', '姓名' => 'name', '部门编号' => 'department_no','班组编号'=>'work_group_no');
        $dataFile = "UserInfoImport.xlsm";
        $sheetName = "data";
        $resData = ExcelOperationHelper::getInstance()->importRecordDataFromExcel($fileName, $sheetName, $ExcelTitle2RecordKey);
        $result = D('UserInfo')->addArrayData($resData);
        return $result;
    }

    public function exportUserInfo()
    {
        $result = D("UserInfo")->getRecords($_POST, true);

        $ExcelTitle2RecordKey = Array('账号' => 'account', '姓名' => 'name', '部门编号' => 'department_no',
        '班组编号'=>'work_group_no');
        $fileTemplate = "UserInfoImportExport.xlsm";
        $resultFile = "UserInfo_result.xlsm";

        $resFile = ExcelOperationHelper::getInstance()->exportToExcel($result, $ExcelTitle2RecordKey, $fileTemplate, $resultFile);

        $this->success($resFile, null, true);
    }
}