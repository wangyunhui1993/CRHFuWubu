<?php

namespace Home\Controller;
header("Access-Control-Allow-Origin: *");
use Think\Controller;
use Home\Common\ExcelOperationHelper;
use Home\Common\ExcelHelper;
class CoolerMaintainStatisticsController extends Controller
{


    public function SubmitData()
    {

        $result = D("CoolerMaintainStatistics")->SubmitData($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }


    }

    public function getRecordsCount()
    {
        $result = D("CoolerMaintainStatistics")->getRecordsCount($_POST);
        $this->success($result, null, true);

    }

    public function getStatisticsData()
    {
        $result = D("CoolerMaintainStatistics")->getStatisticsData($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function delete()
    {
        $result = D("CoolerMaintainStatistics")->delete($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function getStatisticsAtDate()
    {
        $result = D("CoolerMaintainStatistics")->getStatisticsAtDate($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function editStatisticsAtDate()
    {
        $result = null;
        $result = D('CoolerMaintainStatistics')->editStatisticsAtDate($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    #region # Statistics
    public function getStatistics()
    {
        $resData = D('CoolerMaintainStatistics')->getStatistics($_POST);
        if ($resData) {
            $this->success($resData, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function getStatisticsCount()
    {
        $result = D('CoolerMaintainStatistics')->getStatisticsCount($_POST);
        $this->success($result, null, true);
    }
    #endregion

    public function QueryStatisticsByDate()
    {
        $resData = D('CoolerMaintainStatistics')->QueryStatisticsByDate($_POST);
        if ($resData) {
            $this->success($resData, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function exportCoolerMaintainStatics()
    {
        $resData = D('CoolerMaintainStatistics')->getStatistics($_POST);

        $SumNumber = 0;
        for ($i = 0; $i < count($resData); $i++) {
            $SumNumber = $resData[$i]["task_number"] + $SumNumber;
            $resData[$i]["SumNumber"] = $SumNumber;
        }

        //var_dump( $resData);

        $columnHeader = Array('日期' => 'date', '数量（组）' => 'task_number',
            '累计数量（组）' => 'SumNumber'
        );

        $dtNow = new \DateTime('now', new \DateTimeZone('UTC'));
        $str = $dtNow->format('Ymd');

        $fileTemplate = "SanReSheBei.xlsx";
        $resultFile = "散热设备统计".$str.".xlsx";


        $filname = ExcelOperationHelper::getInstance()->exportToExcel($resData, $columnHeader, $fileTemplate, $resultFile);

        $this->success($filname, null, true);
    }
}