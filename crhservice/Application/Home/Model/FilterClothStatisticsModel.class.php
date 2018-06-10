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
                $data['date'] = $condition['data'][$i]['date'];
                $data['number'] = $condition['data'][$i]['number'];
                $data['problem'] = $condition['data'][$i]['problem'];
                $data['department_no'] = $condition['data'][$i]['department_no'];
                
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

                $hasWhere = true;
            }
            if ($condition['department_no']) {
                $departmentStr = $condition['department_no'];
                if ($hasWhere) {
                    $sql .= " AND (`department_no`='$departmentStr')";
                }else{
                    $sql .= " where department_no='$departmentStr' ";
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
                $hasWhere = true;
            }

            if ($condition['department_no']) {
                $departmentStr = $condition['department_no'];
                if ($hasWhere) {
                    $sql .= " AND (`department_no`='$departmentStr')";
                }else{
                    $sql .= " where department_no='$departmentStr' ";
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
        $whereSql = ' 1 ';
        if ($condition) {
            if ($condition['date']) {
                $str = $condition['date'];
                $whereSql .= " AND date='$str' ";
            }

            if ($condition['department_no']) {
                $departmentStr = $condition['department_no'];
                $whereSql .= " AND (`department_no`='$departmentStr')";
            }
        }
        
        $list = M('filter_cloth_statistics')
            ->where($whereSql)
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

    public function QueryTrainLWStatisticsByDate($condition)
    {
        $whereSql = ' WHERE 1 ';
        if ($condition) {
            if ($condition['date']) {
                $dateStr = $condition['date'];
                $whereSql .= " AND (`date`='$dateStr')";
            }
            if ($condition['department_no']) {
                $departmentStr = $condition['department_no'];
                $whereSql .= " AND (filter_cloth_statistics.department_no='$departmentStr')";
            }
        }

        $sql = "
                SELECT filter_cloth_statistics.date,filter_cloth_statistics.id,filter_cloth_statistics.number,filter_cloth_statistics.problem,
                train_column.train_column as train_columnName,filter_cloth_statistics.train_column as 'train_column' 
                FROM  filter_cloth_statistics left join `train_column` on((`filter_cloth_statistics`.`train_column` = `train_column`.`id`)) 
                $whereSql
                ";

        if (isset($condition['start_record']) && $condition['page_size']) {
            $start = $condition['start_record'];
            $size = $condition['page_size'];
            $sql .= " limit $start,$size";
        }
        $list = $this->db->query($sql);
        return $list;
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
            if ($condition['department_no']) {
                $departmentStr = $condition['department_no'];
                $whereSql .= " AND (`department_no`='$departmentStr')";
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

        #region #TrainLWSummary
        public function getTrainLWSummaryByDate($condition)
        {
            $whereSql = ' WHERE 1 ';
            $groupby = 'date';
            if ($condition) {
                if ($condition['datetime']) {
                    $beginStr = $condition['datetime'];
                    $whereSql .= " AND ( `date`='$beginStr')";
                }
                
                if ($condition['department_no']) {
                    $departmentStr = $condition['department_no'];
                    $whereSql .= " AND (`department_no`='$departmentStr')";
                }
            }
            
            $sql = "SELECT * FROM ((SELECT date, SUM(`number`) AS task_number FROM filter_cloth_statistics GROUP BY `$groupby`) AS tlws) $whereSql";
            
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

            if ($condition['department_no']) {
                $departmentStr = $condition['department_no'];
                $whereSql .= " AND (`department_no`='$departmentStr')";
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



















