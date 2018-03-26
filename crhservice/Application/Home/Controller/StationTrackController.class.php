<?php
/**
 * Created by PhpStorm.
 * User: PC-LHF
 * Date: 2017-03-03
 * Time: 10:53
 */

namespace Home\Controller;

header("Access-Control-Allow-Origin: *");
use Think\Controller;
use Home\Common\Util;

class StationTrackController extends Controller
{
    public function getRecordsCount()
    {
        $result = D("StationTrack")->getRecordsCount($_POST);
        $this->success($result, null, true);
    }

    public function getRecords()
    {
        $result = D("StationTrack")->getRecords($_POST);
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function isExistRecord()
    {
        $result = D("StationTrack")->getRecords($_POST);
        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function addData()
    {
        $result = null;
        $data['station_track_no'] = $_POST['station_track_no'];
        $isExists = D('StationTrack')->isExistRecord($data);
        if ($isExists) {
            $this->error(Util::errorMsg('股道编号重复，请重新录入'), null, true);
        } else {
            $result = D('StationTrack')->addData($_POST);

            if ($result) {
                $this->success($result, null, true);
            } else {
                $this->error($_POST, null, true);
            }
        }
    }

    public function deleteData()
    {
        $result = null;
        $result = D('StationTrack')->deleteData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function modifyData()
    {
        $result = null;
        $data['station_track_no'] = $_POST['station_track_no'];
        $data['id'] = $_POST['id'];

        $isExists = D('StationTrack')->isExistRecord($data);
        if ($isExists) {
            $this->error(Util::errorMsg('股道编号重复，请重新录入'), null, true);
        } else {
            $result = D('StationTrack')->modifyData($_POST);

            if ($result) {
                $this->success($result, null, true);
            } else {
                $this->error($_POST, null, true);
            }
        }
    }

}