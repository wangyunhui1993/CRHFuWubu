<?php
/**
 * Created by PhpStorm.
 * User: PC-LHF
 * Date: 2017-03-24
 * Time: 09:27
 */

namespace Home\Common;



class COMExcelHelper
{
    private static $templateFolder = __ROOT__ . "/Public/resource/templatefile/";
    private static $outputFolder = __ROOT__ . "/DownLoad/";

    public static function exportTaskContent()
    {
        $filename = "taskcontent.xlsm";//"test.xlsx";
        $templateFile = Util::toAbsolutePath(self::$templateFolder . $filename);
        $excel=new \COM("Excel.Application");
        $excel->WorkBooks->Open($templateFile);
        echo  "WorkBooks";
        $resFile = Util::toAbsolutePath(self::$outputFolder . $filename);
        echo $resFile;
        return $resFile;
    }

}