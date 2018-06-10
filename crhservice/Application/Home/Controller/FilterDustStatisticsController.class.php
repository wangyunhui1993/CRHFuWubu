<?php

namespace Home\Controller;
header("Access-Control-Allow-Origin: *");
use Think\Controller;
use Home\Common\ExcelOperationHelper;
use Home\Common\ExcelHelper;
class FilterDustStatisticsController extends Controller
{


    public function SubmitData()
    {

        $result = D("FilterDustStatistics")->SubmitData($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }


    }

    public function getRecordsCount()
    {
        $result = D("FilterDustStatistics")->getRecordsCount($_POST);
        $this->success($result, null, true);

    }

    public function getStatisticsData()
    {
        $result = D("FilterDustStatistics")->getStatisticsData($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function delete()
    {
        $result = D("FilterDustStatistics")->delete($_POST);
        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST['data'][0]['train_model_data'], null, true);
        }
    }

    public function getStatisticsAtDate()
    {
        $result = D("FilterDustStatistics")->getStatisticsAtDate($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function editStatisticsAtDate()
    {
        $result = null;
        $result = D('FilterDustStatistics')->editStatisticsAtDate($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    #region #LW Clean Statistics
    public function getLWCleanStatistics()
    {
        $resData = D('FilterDustStatistics')->getLWCleanStatistics($_POST);
        if ($resData) {
            $this->success($resData, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function getLWCleanStatisticsCount()
    {
        $result = D('FilterDustStatistics')->getLWCleanStatisticsCount($_POST);
        $this->success($result, null, true);
    }
    #endregion
    public function exportLWCleanStatistics()
    {
        $res = D('FilterDustStatistics')->getLWCleanStatistics($_POST);

        $SumNumber1 = 0;
        $SumNumber2 = 0;
        $SumNumber3 = 0;
        $SumNumber6 = 0;
        $SumNumber400BF = 0;

        $CurDate = 0;
        $j = 0;

        if ( count($res) != 0)
        {
            $CurDate = $res[0]["date"];
        }

        for ($i = 0; $i < count($res); $i++) {

            if( $res[$i]["date"]  != $CurDate)
            {
                $j++;

                $CurDate = $res[$i]["date"];
            }

            if ( $res[$i]["train_model"] == 0)
            {
                $resData[$j]["CRH1task_number"] = $res[$i]["task_number"] ;
                $SumNumber1 = $resData[$j]["CRH1task_number"] + $SumNumber1;

                $resData[$j]["CRH1task_SumNumber"] = $SumNumber1;
            }
            else if ($res[$i]["train_model"] == 1 )
            {
                $resData[$j]["CRH2task_number"] = $res[$i]["task_number"] ;
                $SumNumber2 = $resData[$j]["CRH2task_number"] + $SumNumber2;

                $resData[$j]["CRH2task_SumNumber"] = $SumNumber2;
            }
            else if ($res[$i]["train_model"] == 2)
            {
                $resData[$j]["CRH3task_number"] = $res[$i]["task_number"] ;
                $SumNumber3 = $resData[$j]["CRH3task_number"] + $SumNumber3;

                $resData[$j]["CRH3task_SumNumber"] = $SumNumber3;
            }
            else if ($res[$i]["train_model"] == 3)
            {
                $resData[$j]["CRH6task_number"] = $res[$i]["task_number"] ;
                $SumNumber6 = $resData[$j]["CRH6task_number"] + $SumNumber6;

                $resData[$j]["CRH6task_SumNumber"] = $SumNumber6;
            }
            else if ($res[$i]["train_model"] == 4)
            {
                $resData[$j]["CRH400BFtask_number"] = $res[$i]["task_number"] ;
                $SumNumber400BF = $resData[$j]["CRH400BFtask_number"] + $SumNumber400BF;

                $resData[$j]["CRH400BFtask_SumNumber"] = $SumNumber400BF;
            }

            $resData[$j]["date"] = $res[$i]["date"];
        }
        //var_dump( $res);
        //var_dump( $resData);

        $columnHeader = Array('日期' => 'date',
            'CRH1数量' => 'CRH1task_number','CRH1累计数量' => 'CRH1task_SumNumber',
            'CRH2数量' => 'CRH2task_number','CRH2累计数量' => 'CRH2task_SumNumber',
            'CRH3数量' => 'CRH3task_number','CRH3累计数量' => 'CRH3task_SumNumber',
            'CRH6数量' => 'CRH6task_number','CRH6累计数量' => 'CRH6task_SumNumber',
            'CRH400BF数量' => 'CRH400BFtask_number','CRH400BF累计数量' => 'CRH400BFtask_SumNumber'
        );

        $dtNow = new \DateTime('now', new \DateTimeZone('UTC'));
        $str = $dtNow->format('Ymd');

        $fileTemplate = "LvChengWang.xlsx";
        $resultFile = "滤尘网清洗统计".$str.".xlsx";


        $filname = ExcelOperationHelper::getInstance()->exportToExcel($resData, $columnHeader, $fileTemplate, $resultFile);

        $this->success($filname, null, true);
    }

}