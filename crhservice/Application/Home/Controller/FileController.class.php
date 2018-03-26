<?php
/**
 * Created by PhpStorm.
 * User: PC-LHF
 * Date: 2017-03-01
 * Time: 11:17
 */

namespace Home\Controller;

header("Access-Control-Allow-Origin: *");
use Think\Controller;
use Home\Common\Util;
use Home\Common\ExcelOperationHelper;
use Think\Exception;



class FileController extends Controller
{
    private static $folder = '/Import/';
    private static $imgFolder = '/Image/';


    public function upload()
    {
        $result = true;
        $fileInfo = $_FILES['file'];
        //$ext=strtolower(end(explode('.',$fileInfo['name'])));//截取上传文件扩展名
        $temp = Util::toAbsolutePath(self::$folder . $fileInfo['name']);
        $targetFile = iconv("UTF-8", "gb2312", $temp);
        //print_r($targetFile);
        if (move_uploaded_file($fileInfo['tmp_name'], $targetFile)) {
            $ExcelTitle2RecordKey = Array('账号' => 'account', '姓名' => 'name', '部门编号' => 'department_no','班组编号'=>'work_group_no');
            $sheetName = "data";
            $resData = ExcelOperationHelper::getInstance()->importRecordDataFromExcel($targetFile, $sheetName, $ExcelTitle2RecordKey);
            if (D('UserInfo')->addArrayData($resData)) {
                $this->success(true, null, true);
            } else {
                $this->error($targetFile, null, true);
            }
        } else {
            $this->error($targetFile, null, true);
        }
    }

    public function uploadDepartmentImage()
    {
        $fileInfo = $_FILES['file'];
        $temp = Util::toAbsolutePath(self::$imgFolder . $fileInfo['name']);
        $targetFile = iconv("UTF-8", "gb2312", $temp);
        if (move_uploaded_file($fileInfo['tmp_name'], $targetFile)) {
//            $data['bgURL'] = $targetFile;
//            $result = D('DepartmentInfo')->modifyData($data);
            $this->success($fileInfo['name'], null, true);
        } else {
            $this->error($targetFile, null, true);
        }
    }

    public function renameFile()
    {
        try {
            $strArray = explode(".", $_POST['oldFile']);
            $oldFile = Util::toAbsolutePath(self::$imgFolder . $_POST['oldFile']);
            $newFile = Util::toAbsolutePath(self::$imgFolder . $_POST['newFile']);
            rename($oldFile, $newFile);
            $this->success(true, null, true);
        } catch (Exception $exception) {
            $this->error($exception, null, true);
        }
    }


}