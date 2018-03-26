<?php

namespace Home\Controller;
header("Access-Control-Allow-Origin: *");
use Think\Controller;
use Home\Common\ExcelOperationHelper;
use Home\Common\ExcelHelper;

class StatisticsController extends Controller
{
    public function SubmitData()
    {
        $result = D("FilterClothStatistics")->SubmitData($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function getRecordsCount()
    {
        $result = D("FilterClothStatistics")->getRecordsCount($_POST);
        $this->success($result, null, true);

    }

    public function getStatisticsData()
    {
        $result = D("FilterClothStatistics")->getStatisticsData($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function delete()
    {
        $result = D("FilterClothStatistics")->delete($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function getStatisticsAtDate()
    {
        $result = D("FilterClothStatistics")->getStatisticsAtDate($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function editStatisticsAtDate()
    {
        $result = null;
        $result = D('FilterClothStatistics')->editStatisticsAtDate($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    #region #TrainLWSummary
    public function getTrainLWSummary()
    {
        $resData = D('FilterClothStatistics')->getTrainLWSummary($_POST);
        if ($resData) {
            $this->success($resData, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function getTrainLWSummaryCount()
    {
        $result = D('FilterClothStatistics')->getTrainLWSummaryCount($_POST);
        $this->success($result, null, true);
    }
    #endregion

    public function QueryTrainLWStatisticsByDate()
    {
        $resData = D('FilterClothStatistics')->QueryTrainLWStatisticsByDate($_POST);
        if ($resData) {
            $this->success($resData, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }
    public function exportLWStatics()
    {
        $resData = D('FilterClothStatistics')->getTrainLWSummary($_POST);

        $SumNumber = 0;
        for ($i = 0; $i < count($resData); $i++) {
            $SumNumber = $resData[$i]["task_number"] + $SumNumber;
            $resData[$i]["SumNumber"] = $SumNumber;
        }

        //var_dump( $resData);

        $columnHeader = Array('日期' => 'date', '数量（片）' => 'task_number',
            '累计数量（片）' => 'SumNumber'
        );

        $dtNow = new \DateTime('now', new \DateTimeZone('UTC'));
        $str = $dtNow->format('Ymd');

        $fileTemplate = "LvWangBu.xlsx";
        $resultFile = "滤网布清洗统计".$str.".xlsx";


        $filname = ExcelOperationHelper::getInstance()->exportToExcel($resData, $columnHeader, $fileTemplate, $resultFile);

        $this->success($filname, null, true);
    }

}