<?php
/**
 * Created by PhpStorm.
 * User: PC-LHF
 * Date: 2017-03-03
 * Time: 11:10
 */

namespace Home\Model;

use Think\Model;
use Home\Common\Util;


class CsLedModel extends Model
{
    public function getRecords($condition = null)
    {
        $data['department_no'] = $condition['department_no'];
        $item = M('cs_led')->where($data)->select();
        return $item;
    }

//    public function isExistRecord($condition)
//    {
//        $data['department_no'] = $condition['department_no'];
//        $count = M('cs_led')->where($data)->count();
//        return $count > 0;
//    }

    public function addData($info)
    {
        $data['content'] = $info['content'];
        $data['font'] = $info['font'];

        $data['color'] = $info['color'];
        $data['department_no'] = $info['department_no'];
        $data['display'] =  $info['display'] ?  $info['display'] : 0;
        $result = M('cs_led')->data($data)->add();
        return $result;
    }

    public function deleteData($condition)
    {
        $result = null;
        $sql = " DELETE FROM cs_led WHERE ";
        for ($i=0; $i< sizeof($condition); $i++) {
            if($i != sizeof($condition) -1) {
                $sql .= " id=" . $condition[$i]['id'] . " OR";
            } else {
                $sql .= " id=" . $condition[$i]['id'];
            }
        }
        $result = $this->db->execute($sql);

        return isset($result);
    }

    public function modifyData($info)
    {
        if (isset($info['id'])) {
            $data['id'] = $info['id'];
        }

        if (isset($info['department_no'])) {
            $data['department_no'] = $info['department_no'];
        }
        if (isset($info['content'])) {
            $data['content'] = $info['content'];
        }
        if (isset($info['font'])) {
            $data['font'] = $info['font'];
        }
        if (isset($info['color'])) {
            $data['color'] = $info['color'];
        }
        if (isset($info['display'])) {
            $data['display'] = $info['display'];
        }

        $result = M('cs_led')->data($data)->save();
        return isset($result);
    }
}