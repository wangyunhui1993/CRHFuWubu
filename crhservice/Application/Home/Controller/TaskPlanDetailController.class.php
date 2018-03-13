<?php
/**
 * Created by PhpStorm.
 * User: PC-LHF
 * Date: 2017-03-03
 * Time: 10:23
 */

namespace Home\Controller;
header("Access-Control-Allow-Origin: *");
use Think\Controller;

class TaskPlanDetailController extends Controller
{
    public function getRecordsCount()
    {
        $result = D("TaskPlanDetail")->getRecordsCount($_POST);
        $this->success($result, null, true);
    }

    public function getRecords()
    {
        // 查询数据库
        $result = D("TaskPlanDetail")->getRecords($_POST);
        // 通过trouble_maintain_id查询具体的content
        for($i = 0; $i < sizeof($result); $i++){
            //故障状态
            $r = ' ';
            if(sizeof($result[$i]['trouble_maintain_id']) > 0){
                //$v = $result[$i]['trouble_maintain_id'][0];
                // $q = array("id" => $v);
                // $content =  D("trouble_maintain")->getRecords($q);
                // if(sizeof($content) > 0){
                //     $r = $content[0]['content'];
                // }
                // else{
                //     $r = ' ';
                // }
                
                $r = $result[$i]['trouble_maintain_id'];
            }
            $result[$i]['trouble_maintain_id'] = $r;
            //情况说明
            $r = ' ';
            if(sizeof($result[$i]['situation_content_id']) > 0){
                // $v = $result[$i]['situation_content_id'][0];
                // $q = array("id" => $v);
                // $content = D("SituationContent")->getRecords($q);
                // if(sizeof($content) > 0){
                //     $r = $content[0]['situation_content'];
                // }
                // else{
                //     $r = ' ';
                // }
                // $result[$i]['situation_content_id'] = $r;
                $r = $result[$i]['situation_content_id'];
            }
            $result[$i]['situation_content_id'] = $r;
        }


        //返回结果
        if (isset($result)) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function addData()
    {
        $result = null;
        $result = D('TaskPlanDetail')->addData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function getPortName()
    {
        $result = null;
        $result = D('TaskPlanDetail')->getPortName($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function deleteData()
    {
        $result = null;
        $result = D('TaskPlanDetail')->deleteData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function modifyData()
    {
        $result = null;
        $result = D('TaskPlanDetail')->modifyData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function startTask() {
        $result = null;
        //var_dump(json_decode($_POST["content"]));
        if($_POST["content"]) {
            $result = D('TaskPlanDetail')->startTask(json_decode($_POST["content"]));
        }

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }


    public function endTask() {
        $result = null;
        if($_POST["content"]) {
            $result = D('TaskPlanDetail')->endTask(json_decode($_POST["content"]));
        }

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    //批量更新
    public function modifyRecords() {
        $result = null;
        //print_r(json_decode($_POST['data']));
        $result = D('TaskPlanDetail')->modifyRecords($_POST['data']);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }
}