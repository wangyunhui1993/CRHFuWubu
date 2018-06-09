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

class FilterDustStatisticsModel extends Model
{
    public function SubmitData($condition)
    {
        $m = M('filter_dust_statistics');
        if ($condition['data']) {
            $result = true;
            $guid = '-1';
            $msectime='';

            for ($i = 0; $i < count($condition['data']); $i++) {
                # code...
                $data['train_column'] = $condition['data'][$i]['train_column'];
                $data['date'] = $condition['data'][$i]['date'];
                $data['number'] = $condition['data'][$i]['number'];
                $data['problem'] = $condition['data'][$i]['problem'];
                $data['train_model'] = $condition['data'][$i]['train_model'];
                $data['department_no'] = $condition['data'][$i]['department_no'];

                if( $guid != $condition['data'][$i]['guid'])
                {
                    list($msec, $sec) = explode(' ', microtime());
                    $msectime =  (float)sprintf('%015.0f', (floatval($msec) + floatval($sec)) * 1000);
                    
                    $guid = $condition['data'][$i]['guid'];
                }
                
                $data['guid'] = $msectime.'-'.substr($guid,0,3);

                $result = $m->data($data)->add();
                if (!$result) {
                    $m->rollback();
                    return $result;
                }
            }
            $m->commit();

            return $result;

        } else {

            return false;
        }

    }

    public function getRecordsCount($condition)
    {
        $sql = "
        SELECT COUNT(DISTINCT date) as totalrecords  FROM filter_dust_statistics";
        if ($condition) {
            $hasWhere = false;
            if ($condition['formDate']) {
                $hasWhere = true;
                $beginStr = $condition['formDate'][0];
                $endStr = $condition['formDate'][1];
                if ($beginStr == $endStr) {
                    $date = date("Y-m-d", strtotime($endStr));
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
                } else {
                    $sql .= " where train_column='$train_column' ";
                }
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
        SELECT DISTINCT date  FROM filter_dust_statistics";
        if ($condition) {
            $hasWhere = false;

            if ($condition['formDate']) {
                $hasWhere = true;
                $beginStr = $condition['formDate'][0];
                $endStr = $condition['formDate'][1];
                if ($beginStr == $endStr) {
//                    $date = date("Y-m-d", strtotime($endStr . "+1 day"));
                    $date = date("Y-m-d", strtotime($endStr));
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
                } else {
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
            for ($i = 0; $i < count($condition['data']); $i++) {
                $item = $condition['data'][$i];
                if ($item['train_model_data'] != null) {
                    for ($j = 0; $j < count($item['train_model_data']); $j++) {
                        $itemdata = $item['train_model_data'][$j];
                        $data['id'] = $itemdata['id'];
                        if($itemdata['id'] != '-1')
                        {
                            $result = M('filter_dust_statistics')->where($data)->delete();
                        }                        
                    }
                } else {
                    $data['date'] = $item['date'];
                    $result = M('filter_dust_statistics')->where($data)->delete();
                }
                if (!$result) {
                    return 0;
                }
            }
            return $result;

        } else {

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
                $whereSql .= " AND (filter_dust_statistics.department_no='$departmentStr')";
            }
        }

        //left join `train_column` on((`cooler_maintain_statistics`.`train_column` = `train_column`.`id`)) 
        $list = M('filter_dust_statistics')
            ->where($whereSql)
            ->field('filter_dust_statistics.id,date,filter_dust_statistics.train_column,number,problem,filter_dust_statistics.department_no,
            filter_dust_statistics.train_model,guid,train_column.train_column as train_columnName')
            ->order("guid desc")
            ->join('LEFT JOIN train_column ON filter_dust_statistics.train_column = train_column.id')
            ->select();
        return $list;
    }

    public function editStatisticsAtDate($condition)
    {
        $m = M('filter_dust_statistics');

        if ($condition['data']) {
            for ($i = 0; $i < count($condition['data']); $i++) {
                
                $data = [];
                $bNeedInsert = false;
                $info = $condition['data'][$i];
                if (isset($info['id'])) {
                    if($info['id'] == '-1')
                    {
                        $bNeedInsert = true;
                    }
                    else
                    {
                        $data['id'] = $info['id'];
                    }
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
                if (isset($info['train_model'])) {
                    $data['train_model'] = $info['train_model'];
                }
                if (isset($info['train_column'])) {
                    $data['train_column'] = $info['train_column'];
                }

                if (isset($info['guid'])) {
                    $data['guid'] =$info['guid'];
                }

                if (isset($info['department_no'])) {
                    $data['department_no'] =$info['department_no'];
                }
                
                if($bNeedInsert)
                {
                    $result = $m->data($data)->add();
                    if (!$result) {
                        $m->rollback();
                        return $result;
                    }
                }
                else
                {
                    $result = $m->data($data)->save();
                    if (!is_numeric($result)) {
                        $m->rollback();
                        return $result;
                    }
                }
            }
            $m->commit();
            return true;

        }
        return true;
    }

    #region #LW Clean Statistics
    public function getLWCleanStatistics($condition)
    {
        $whereSql = ' WHERE 1 ';
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
            SELECT
                f.date,
                SUM(f.number) AS task_number,
                f.train_model
            FROM
                filter_dust_statistics f
                $whereSql
            GROUP BY
                f.date,
                f.train_model
            ORDER BY
                f.date,
                f.train_model
              ";
        if (isset($condition['start_record']) && $condition['page_size']) {
            $start = $condition['start_record'];
            $size = $condition['page_size'];
            $sql .= " limit $start,$size";
        }
        $list = $this->db->query($sql);
        return $list;
    }

    public function getLWCleanStatisticsCount($condition)
    {
        $whereSql = ' WHERE 1 ';
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
              SELECT
              COUNT(*) AS totalrecords
              FROM
                (
                    (
                        SELECT
                            f.date,
                            SUM(f.number) AS task_number,
                            f.train_column,
                            f.train_model
                        FROM
                            filter_dust_statistics f
                            $whereSql
                        GROUP BY
                            f.date,
                            f.train_model
                        ORDER BY
                            f.date,
                            f.train_model
                    ) AS v
                )
              ";
        $list = $this->db->query($sql);
        return $list[0];
    }
    #endregion
}



















