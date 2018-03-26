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
use Home\Common\COMExcelHelper;




class IndexController extends Controller
{
    private static $templateFolder = '/Public/resource/templatefile/';

    public function index()
    {
//        $whereSql = "where 1";
//
//
//        $beginStr = "2017-3-20 13:13:45";
//
//        $beginDate = date("Y-m-d", strtotime($beginStr));
//        echo $beginDate;
//        $beginTime = date("H:i:s", strtotime($beginStr));
//        echo "<br>" . $beginTime;
//        echo "<br>" ;
//        $whereSql .= " AND (
//                           (task_date>='$beginDate' AND task_date<='$beginDate')
//                           AND
//                           (task_time>='$beginTime' AND task_time<='$beginTime')
//                           )";
//        echo $whereSql;

//        $dtNow = new \DateTime('now', new \DateTimeZone('UTC'));
//        $str = $dtNow->format('Ymdhis');
//        echo "date time:" . $str;
//
//        echo "  path: " . $_SERVER['DOCUMENT_ROOT'];
//        echo "<br>";
//
//
//        echo "_PHP_FILE_: " . dirname(_PHP_FILE_);
//        echo "<br>";
//
//        echo "APP_PATH: " . APP_PATH;
//        echo "<br>";
//
//
//
//        echo "templateFolder: " . Util::toAbsolutePath(self::$templateFolder . 'taskcontent.xlsm');
//        echo "<br>";

//        $result = D('TaskPlan')->exportTaskStatisticsData($_POST);
//        $resFile = ExcelOperationHelper::getInstance()->exportTaskContent($result);
//
//        echo "<br> res file:" . $resFile;
//        $this->display();

        $ExcelTitle2RecordKey = Array('日期'=>'task_date','工作内容'=>'task_content','标准组数'=>'task_count',
            '污箱口数'=>'rubbish_box','污箱只数'=>'task_Rubsum','车型汇总'=>'train_model_name','列数'=>'train_model_count'
        );
        $fileTemplate = "taskcontent.xlsm";
        $resultFile   = "taskcontent_result.xlsm";

        $result = D('TaskPlan')->exportTaskStatisticsData($_POST);
        $resFile = ExcelOperationHelper::getInstance()->exportToExcel($result,$ExcelTitle2RecordKey,$fileTemplate,$resultFile);

        echo "<br> res file:" . $resFile;
        $this->display();
    }
}