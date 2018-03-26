<?php
/**
 * Created by PhpStorm.
 * User: PC-HT
 * Date: 2017-03-03
 * Time: 10:39
 */

namespace Home\Controller;
header("Access-Control-Allow-Origin: *");
use Think\Controller;
use Home\Common\Util;


class TaskPortController extends Controller
{

    public function getRecords()
    {
        $result = D("TaskPort")->getRecords($_POST);
        if ($result) {
            $this->success($result, null, true);
        } else {
            if(!D("TaskPort")->isExistRecord($_POST)){
                $this->success("", null, true);//没有记录，设置空值
            }else {
                $this->error($_POST, null, true);
            }
        }
    }

    public function addData()
    {
        $result = null;
        if($_POST['department_no'] == null) {
            $this->error(Util::errorMsg('部门编号为空，请选择！'), null, true);
        }

        $result = D('TaskPort')->addData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

    public function modifyData()
    {
        $result = null;
        $result = D('TaskPort')->modifyData($_POST);

        if ($result) {
            $this->success($result, null, true);
        } else {
            $this->error($_POST, null, true);
        }
    }

}