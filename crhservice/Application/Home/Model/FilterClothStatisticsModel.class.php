<?php
/**
 * Created by PhpStorm.
 * User: el
 * Date: 2017/3/5
 * Time: 10:42
 */

namespace Home\Model;
use Think\Model;
use Home\Common\Util;

class FilterClothStatisticsModel extends Model
{
    public function SubmitData($condition)
    {
        $m = M('filter_cloth_statistics');
        if ($condition['data']) {
            $result = true;
            for ($i=0; $i <  count($condition['data']); $i++) {
                # code...
                $data['train_column'] = $condition['data'][$i]['train_column'];
                $data['date'] = date('Y-m-d');
                $data['number'] = $condition['data'][$i]['number'];
                $data['problem'] = $condition['data'][$i]['problem'];
                if (!$data['train_column']||!$data['number']||$data['number']<0) {
                    # code...
                    continue;
                }
                $result = $m->data($data)->add();
                if (!$result) {
                    $m->rollback();
                    return $result;
                }
            }
            $m->commit();

            return $result;

        }else{

            return false;
        }

    }
    public function getRecordsCount($condition)
    {
        $sql = "
        SELECT COUNT(DISTINCT date) as totalrecords  FROM filter_cloth_statistics";
        if ($condition) {
            $hasWhere = false;
            if ($condition['formDate']) {
                $hasWhere = true;
                $beginStr = $condition['formDate'][0];
                $endStr = $condition['formDate'][1];
                if($beginStr == $endStr) {
                    $date = date( "Y-m-d", strtotime( $endStr) );
                    $endStr = $date;
                    $sql .= " where date>='$beginStr' AND date<='$endStr'";
                } else {
                    $sql .= " where date>='$beginStr' AND date<='$endStr'";
                }
            }
            if ($condition['train_column']) {
                # code...
                $train_column = $condition['train_column'];
                if ($hasWhere) {
                    $sql .= " AND train_column='$train_column' ";
                }else{
                    $sql .= " where train_column='$train_column' ";
                }
            }

        }
        $list = $this->db->query($sql);

        return $list[0];
    }
    public function getStatisticsData($condition)
    {
        $sql = "
        SELECT DISTINCT date  FROM filter_cloth_statistics";
        if ($condition) {
            $hasWhere = false;

            if ($condition['formDate']) {
                $hasWhere = true;
                $beginStr = $condition['formDate'][0];
                $endStr = $condition['formDate'][1];
                if($beginStr == $endStr) {
                    $date = date( "Y-m-d", strtotime( $endStr) );
                    $endStr = $date;
                    $sql .= " where date>='$beginStr' AND date<='$endStr'";
                } else {
                    $sql .= " where date>='$beginStr' AND date<='$endStr'";
                }
            }
            if ($condition['train_column']) {
                # code...
                $train_column = $condition['train_column'];
                if ($hasWhere) {
                    $sql .= " AND train_column='$train_column' ";
                }else{
                    $sql .= " where train_column='$train_column' ";
                }
            }
            $sql .= " ORDER BY date DESC";
            if ($condition['length']) {
                # code...
                $start_records = $condition['start_records'];
                $length = $condition['length'];
                $sql .= " LIMIT $start_records,$length ";
            }
        }

        $list = $this->db->query($sql);

        return $list;
    }



    public function delete($condition)
    {

        if ($condition['data']) {
            $result = false;
            for ($i=0; $i <  count($condition['data']); $i++) {
                # code...
                if(isset($condition['data'][$i]['date'])) {
                    $data['date'] = $condition['data'][$i]['date'];
                }
                if(isset($condition['data'][$i]['id'])) {
                    $data['id'] = $condition['data'][$i]['id'];
                }
                $result = M('filter_cloth_statistics')->where($data)->delete();
                if (!$result) {
                    return $result;
                }
            }
            return $result;

        }else{

            return false;
        }

    }

    public function getStatisticsAtDate($condition)
    {

        $data = ' 1 ';
        if ($condition) {
            if ($condition['date']) {
                $str = $condition['date'];
                $data .= " AND date='$str' ";
            }
        }
        $list = M('filter_cloth_statistics')
            ->where($data)
            ->select();
        return $list;
    }
    public function editStatisticsAtDate($condition)
    {
        $m = M('filter_cloth_statistics');

        if ($condition['data']) {
            for ($i=0; $i < count($condition['data']); $i++) {

                $info = $condition['data'][$i];
                if (isset($info['id'])) {
                    $data['id'] = $info['id'];
                }
                if (isset($info['date'])) {
                    $data['date'] = $info['date'];
                }
                if (isset($info['number'])) {
                    $data['number'] = $info['number'];
                }
                if (isset($info['problem'])) {
                    $data['problem'] = $info['problem'];
                }
                if (isset($info['train_column'])) {
                    $data['train_column'] = $info['train_column'];
                }
                $result = $m->data($data)->save();
                if (!is_numeric($result))  {
                    $m->rollback();
                    return $result;
                }
            }
            $m->commit();
            return true;

        }
        return true;
    }

    #region #TrainLWSummary
    public function getTrainLWSummary($condition)
    {
        $whereSql = ' WHERE 1 ';
        $groupby = 'date';
        if ($condition) {
            if ($condition['dateStart'] && $condition['dateEnd']) {
                $beginStr = $condition['dateStart'];
                $endStr = $condition['dateEnd'];
                $whereSql .= " AND (`date`>='$beginStr' AND `date`<='$endStr')";
            }
        }
        $sql = "
                SELECT * FROM
                ((SELECT *, SUM(`number`) AS task_number 
                  FROM filter_cloth_statistics $whereSql GROUP BY `$groupby`
                ) AS tcs) 
              ";
        if (isset($condition['start_record']) && $condition['page_size']) {
            $start = $condition['start_record'];
            $size = $condition['page_size'];
            $sql .= " limit $start,$size";
        }
        $list = $this->db->query($sql);
        return $list;
    }

    public function getTrainLWSummaryCount($condition)
    {
        $whereSql = ' WHERE 1 ';
        $groupby = 'date';
        if ($condition) {
            if ($condition['dateStart'] && $condition['dateEnd']) {
                $beginStr = $condition['dateStart'];
                $endStr = $condition['dateEnd'];
                $whereSql .= " AND (`date`>='$beginStr' AND `date`<='$endStr')";
            }
        }

        $sql = "
                SELECT count(*) AS totalrecords
                FROM
                (
                (SELECT *, SUM(`number`) AS task_number 
                  FROM filter_cloth_statistics $whereSql GROUP BY `$groupby`
                ) AS tcs
                ) 
              ";
        if (isset($condition['start_record']) && $condition['page_size']) {
            $start = $condition['start_record'];
            $size = $condition['page_size'];
            $sql .= " limit $start,$size";
        }
        $list = $this->db->query($sql);
        return $list[0];
    }
    #endregion
}



















