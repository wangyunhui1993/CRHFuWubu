<?php
/**
 * Created by PhpStorm.
 * User: el
 * Date: 2017/3/23
 * Time: 0:44
 */
namespace Home\Common;

use PHPExcel;
use PHPExcel_IOFactory;
use PHPExcel_Style_Alignment;
use PHPExcel_Style_Border;

class ExcelHelper
{
    private static $Columnlabel = array("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z");

    public static function importRecordDataFromExcel($excel_path, $sheetName, $excelTitleTokey)
    {
        if ($excelTitleTokey == null || count($excelTitleTokey) == 0) {
            return;
        }

        vendor("PHPExcelLib.PHPExcel");
        vendor("PHPExcelLib.PHPExcel.IOFactory");
        vendor("PHPExcelLib.PHPExcel.Reader.Excel2007");

        //$resultFile = '.\UserInfoImport.xlsm';
        $newPHPExcel = PHPExcel_IOFactory::load($excel_path);

        if (!$newPHPExcel->sheetNameExists($sheetName)) {
            return;
        }

        $newPHPExcel->setActiveSheetIndexByName($sheetName);
        $Worksheet = $newPHPExcel->getSheetByName($sheetName);

        $keyToLabel = array();//eg. $keyToLabel['account'] = 'A', $keyToLabel['name'] = 'B'
        $j = 0;
        foreach ($excelTitleTokey as $key => $value)//eg. (key = "姓名",value = 'name')
        {
            $title = $Worksheet->getCell(ExcelHelper::$Columnlabel[$j] . '1')->getValue();

            if ($title && $title != '' && array_key_exists($title, $excelTitleTokey)) {
                $keyToLabel[$value] = ExcelHelper::$Columnlabel[$j];
                //print_r("$title \r\n");
            }

            $j++;
        }

        if ($keyToLabel !== null && count($keyToLabel) == 0) {
            return;
        }

        $totalCount = $Worksheet->getHighestRow();

        $info = array();

        for ($i = 2; $i < $totalCount + 2; $i++) {
            $KeyValues = array();
            foreach ($keyToLabel as $key => $value) {
                $KeyValues[$key] = $Worksheet->getCell($value . $i)->getValue();
                //print_r("($key => $value$i= $KeyValues[$key])");
            }

            Array_push($info, $KeyValues);
            //print_r("\r\n");
        }

        return $info;
    }

    public static function exportRecordDataToExcel($template_path, $result_path, $exportRecordValues, $DatasetColumn, $startRow)
    {
        //$myTimeHelper = new TimerHelper();

        if ($exportRecordValues == null || $exportRecordValues[0] == null) {
            return;
        }
        $xls_sheet = 0;
        $xls_rows = range($startRow, $startRow + count($exportRecordValues), 1);
        //$xls_cols = array_slice( ExcelHelper::$Columnlabel, $startCol-1, count($exportRecordValues[0]));

        ExcelHelper::setRecordDataToExcel($template_path, $result_path, $xls_sheet, $xls_rows, $exportRecordValues, $DatasetColumn);

        //$myTimeHelper->recordNow("代码A消耗");
        //$myTimeHelper->printInfo();
    }

    private static function setRecordDataToExcel($Tmplfile, $result_path, $sheet, $rows, $newRecordValue, $DatasetColumn)
    {
        $excelApplication = new \COM("Excel.Application", '127.0.0.1', CP_UTF8) or die ("ERROR: Unable to instantaniate COM!\r\n");
        // COM CREATE
        $excelApplication->Visible = false;

        // DATA RETRIEVAL
        $WorkbookThisWorkbook = $excelApplication->Workbooks->Open($Tmplfile) or die("ERROR: Unable to open " . $Tmplfile . "!\r\n");
        //$Worksheet = $WorkbookThisWorkbook->Worksheets($sheet);
        $Worksheet = $WorkbookThisWorkbook->Worksheets(1);

        $ExcelTile2Label = array();
        $DataSetMap2ExcelLabel = array();
        for ($i = 0; $i < count($DatasetColumn); $i++) {
            $cell = $Worksheet->Range(ExcelHelper::$Columnlabel[$i] . '1');
            $tile = $cell->value;

            $ExcelTile2Label[$tile] = ExcelHelper::$Columnlabel[$i];//a,b,c...
            //print_r("tile= $tile, label= $ExcelTile2Label[$tile]\r\n");

            $DataSetMap2ExcelLabel[$DatasetColumn[$tile]] = $ExcelTile2Label[$tile];
            //print_r("$DatasetColumn[$tile]= ".$DataSetMap2ExcelLabel[$DatasetColumn[$tile]]."=$tile");

            //print_r("}\r\n  {");
        }

        for ($i = 0; $i < count($newRecordValue); $i++) {

            foreach ($newRecordValue[$i] as $key => $value) {

                //print_r("\r\n||  key =$key =".$DataSetMap2ExcelLabel[$key].$rows[$i]);

                if (array_key_exists($key, $DataSetMap2ExcelLabel)) {
                    $cell = $Worksheet->Range($DataSetMap2ExcelLabel[$key] . $rows[$i]);
                    $cell->value = $value;
                }
            }
            //print_r("\r\n next line__ ");
        }

        $excelApplication->DisplayAlerts = false;

        //print_r("$result_path \r\n next line__ ");

        $WorkbookThisWorkbook->SaveAs($result_path);

        // COM DESTROY
        $WorkbookThisWorkbook->Close();
        unset($Worksheet);
        unset($WorkbookThisWorkbook);

        $excelApplication->Workbooks->Close();
        $excelApplication->Quit();
        unset($excelApplication);
    }
    public static function getWorkSheet($Tmplfile, $Worksheet, $WorkbookThisWorkbook, $excelApplication,$sheetIndex)
    {
        $excelApplication = new \COM("Excel.Application", '127.0.0.1', CP_UTF8) or die ("ERROR: Unable to instantaniate COM!\r\n");
        // COM CREATE
        $excelApplication->Visible = false;
        // DATA RETRIEVAL D:\phpStudy\WWW\crhservice/Public/resource/templatefile/BaoJieXiWu.xlsm D:\phpStudy\WWW\crhservice/DownLoad/保洁吸污查询20171015.xlsm
        $WorkbookThisWorkbook = $excelApplication->Workbooks->Open($Tmplfile) or die("ERROR: Unable to open " . $Tmplfile . "!\r\n");
        $Worksheet = $WorkbookThisWorkbook->Worksheets($sheetIndex);
        $obj = array();
        $obj[0] = $Worksheet;
        $obj[1] = $WorkbookThisWorkbook;
        $obj[2] = $excelApplication;
        //var_dump($obj);
        return $obj;
    }
    public static function closeWorkSheet($WorkbookThisWorkbook, $Worksheet, $excelApplication,$selRange,$saveExcel,$print,$result_path)
    {
        $excelApplication->DisplayAlerts = false;
        //print_r("$result_path \r\n next line__ ");
        if($saveExcel)
        {
             $WorkbookThisWorkbook->SaveAs($result_path);
        } 
        //$Worksheet->Columns("A:P")->AutoFit();
        //$Worksheet->Range($selRange)->Select();
//
      if($print)
      {
            try
            {
                $rngPrint = $Worksheet->Range($selRange);//->CurrentRegion();
                //$Worksheet->PageSetup->PrintGridLines = true;
                //$Worksheet->PageSetup->Zoom = false;
                //$Worksheet->PageSetup->FitToPagesTall = 1;
                $Worksheet->PageSetup->FitToPagesWide = 1;
                //$Worksheet->PrintOut();// release should to print
                $rngPrint->PrintOut();
            }
            catch(Exception $e)
            {
                    ;
            }
      }

//
        // COM DESTROY
        $WorkbookThisWorkbook->Close();
        unset($Worksheet);
        unset($WorkbookThisWorkbook);
        $excelApplication->Workbooks->Close();
        $excelApplication->Quit();
        unset($excelApplication);
    }
}