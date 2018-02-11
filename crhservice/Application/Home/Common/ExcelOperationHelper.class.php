<?php
/**
 * Created by PhpStorm.
 * User: PC-LHF
 * Date: 2017-03-22
 * Time: 16:50
 */
namespace Home\Common;

require_once(VENDOR_PATH . "/PHPExcel/PHPExcel.php");
use Home\Common\Util;
use Home\Common\ExcelHelper;

class ExcelOperationHelper
{
    protected $phpExcel;
    protected $phpReader;
    protected $phpWriter;

    protected $templateFolder = "/Public/resource/templatefile/";
    protected $outputFolder = "/DownLoad/";
    protected $uploadFolder = "/upload/";

    private static $instance = null;


    public static function getInstance()
    {
        if (self::$instance == null)
            self::$instance = new ExcelOperationHelper();
        return self::$instance;
    }

    public function __construct()
    {
        //$this->phpExcel = new \PHPExcel();
        //$this->phpReader = new \PHPExcel_Reader_Excel2007();

        //$this->templateFolder = Util::getRootDir()."\\Public\\resource\\templatefile\\";
        //$this->outputFolder   = Util::getRootDir()."\\DownLoad\\";
        //$this->uploadFolder   = Util::getRootDir()."\\Upload\\";
    }

    public function exportToExcel($DataToExport, $ExcelTitle2RecordKey, $templateName, $resultFile)
    {
        $resData['state'] = 0;
        $resData['result'] = "";

        if (count($DataToExport) == 0) {
            $resData['result'] = "导出错误,没有数据可供导出！";
            return $resData;
        }

        $templatePath = Util::toAbsolutePath($this->templateFolder . $templateName);//'C:\phpStudy\WWW\crhservice';
        $savePath = Util::toAbsolutePath($this->outputFolder . $resultFile);
        $rowStart = 2;


        //print_r($templatePath."\r\n");
        //print_r($savePath.$resultFile);
        if ( file_exists($savePath) == true)
        {
            unlink($savePath);
        }

        ExcelHelper::exportRecordDataToExcel($templatePath, $savePath, $DataToExport, $ExcelTitle2RecordKey, $rowStart);

        $resData['state'] = 1;
        $resData['result'] = $this->outputFolder . $resultFile;
        return $resData;
    }

    public function getWorkSheet($templateName, &$Worksheet, &$WorkbookThisWorkbook, &$excelApplication,$sheetIndex)
    {
        $templatePath = Util::toAbsolutePath($this->templateFolder . $templateName);//'C:\phpStudy\WWW\crhservice';
        //print_r($templatePath);
        return ExcelHelper::getWorkSheet($templatePath, $Worksheet, $WorkbookThisWorkbook, $excelApplication,$sheetIndex);
    }
    public function closeWorkSheet($WorkbookThisWorkbook, &$Worksheet,  &$excelApplication,$selRange,$saveExcel,$print,$resultFile)
    {
        $resData['state'] = 0;
        $resData['result'] = "";
        $result['status'] = 0;

        $savePath = Util::toAbsolutePath($this->outputFolder . $resultFile);
        //print_r($savePath);
        if ( file_exists($savePath) == true)
        {
            unlink($savePath);
        }
        ExcelHelper::closeWorkSheet($WorkbookThisWorkbook, $Worksheet, $excelApplication, $selRange, $saveExcel, $print,$savePath);

        $resData['state'] = 1;
        $resData['result'] = $this->outputFolder . $resultFile;
        $result['status'] = 1;
        return $resData;
    }
    public function importRecordDataFromExcel($fileName, $sheetName, $excelTitleTokey)
    {
        $excelPath = $fileName;

        return ExcelHelper::importRecordDataFromExcel($excelPath, $sheetName, $excelTitleTokey);
    }

    public function dispose()
    {
        unset($this->phpExcel);
        unset($this->phpReader);
        unset($this->phpWriter);
    }

}