<?php
/**
 * Created by PhpStorm.
 * User: PC-LHF
 * Date: 2017-03-03
 * Time: 10:54
 */

namespace Home\Model;

use Think\Model;

class StationTrackModel extends Model
{
    public function getRecords($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $data .= " AND s.id='$str' ";
            }
            if ($condition['station_track_no']) {
                $str = $condition['station_track_no'];
                $data .= " AND s.station_track_no='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND s.department_no='$str' ";
            }
        }
        $list = M('station_track')
            ->alias("s")
            ->join("LEFT JOIN department_info AS d on d.department_no=s.department_no")
            ->where($data)
            ->field("s.*,d.department_name")
            ->limit($condition['start_record'],$condition['page_size'])
            ->select();
        //select('...')//为in子查询
        return $list;

    }

    public function getRecordsCount($condition = null)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $data .= " AND id='$str' ";
            }
            if ($condition['station_track_no']) {
                $str = $condition['station_track_no'];
                $data .= " AND station_track_no='$str' ";
            }
            if ($condition['department_no']) {
                $str = $condition['department_no'];
                $data .= " AND department_no='$str' ";
            }
        }
        $list = M('station_track')
            ->where($data)
            ->count();
        return $list;

    }

    public function isExistRecord($condition)
    {
        $data = ' 1 ';
        if ($condition) {
            if ($condition['id']) {
                $str = $condition['id'];
                $data .= " AND id!='$str' ";
            }
            if ($condition['station_track_no']) {
                $str = $condition['station_track_no'];
                $data .= " AND station_track_no='$str' ";
            }

            $count = M('station_track')
                ->where($data)
                ->count();
            return $count > 0;
        }
        return false;
    }

    public function addData($info)
    {
        $data['station_track_no'] = $info['station_track_no'];
        $data['font_color'] = $info['font_color'];
        $data['department_no'] = $info['department_no'];
        $result = M('station_track')->data($data)->add();
        return $result;
    }

    public function deleteData($condition)
    {
        $data['id'] = $condition['id'];
        $result = M('station_track')->where($data)->delete();
        return $result;
    }

    public function modifyData($info)
    {
        if ($info['id']) {
            $data['id'] = $info['id'];
        }
        if ($info['station_track_no']) {
            $data['station_track_no'] = $info['station_track_no'];
        }
        if ($info['font_color']) {
            $data['font_color'] = $info['font_color'];
        }
        if ($info['department_no']) {
            $data['department_no'] = $info['department_no'];
        }
        $result = M('station_track')->data($data)->save();
        return $result;
    }
}