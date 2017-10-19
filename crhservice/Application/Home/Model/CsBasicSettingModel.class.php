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


class CsBasicSettingModel extends Model
{
    public function getRecord($condition = null)
    {
        $data['department_no'] = $condition['department_no'];
        $item = M('cs_basic_setting')->where($data)->find();
        return $item;
    }

    public function isExistRecord($condition)
    {
        $data['department_no'] = $condition['department_no'];
        $count = M('cs_basic_setting')->where($data)->count();
        return $count > 0;
    }

    public function addData($info)
    {
        $data['bg_color'] = $info['bg_color'];
        $data['header_color'] = $info['header_color'];
        $data['tb_color'] = $info['tb_color'];
        $data['waiting_color'] = $info['waiting_color'];
        $data['working_color'] = $info['working_color'];
        $data['finish_color'] = $info['finish_color'];
        $data['alert_color'] = $info['alert_color'];
        $data['word_bg_color'] = $info['word_bg_color'];
        $data['other_title_color'] = $info['other_title_color'];

        $data['attention_content'] = $info['attention_content'];
        $data['moulding_content'] = $info['moulding_content'];
        $data['security_content'] = $info['security_content'];

        $data['loop_time'] = $info['loop_time'];

        $data['department_no'] = $info['department_no'];
        $result = M('cs_basic_setting')->data($data)->add();
        return $result;
    }

    public function deleteData($condition)
    {
        $data['id'] = $condition['id'];
        $result = M('cs_basic_setting')->where($data)->delete();
        return $result;
    }

    public function modifyData($info)
    {
        if (isset($info['id'])) {
            $data['id'] = $info['id'];
        }
        if (isset($info['bg_color'])) {
            $data['bg_color'] = $info['bg_color'];
        }
        if (isset($info['header_color'])) {
            $data['header_color'] = $info['header_color'];
        }
        if (isset($info['tb_color'])) {
            $data['tb_color'] = $info['tb_color'];
        }
        if (isset($info['waiting_color'])) {
            $data['waiting_color'] = $info['waiting_color'];
        }
        if (isset($info['working_color'])) {
            $data['working_color'] = $info['working_color'];
        }
        if (isset($info['finish_color'])) {
            $data['finish_color'] = $info['finish_color'];
        }
        if (isset($info['alert_color'])) {
            $data['alert_color'] = $info['alert_color'];
        }
        if (isset($info['word_bg_color'])) {
            $data['word_bg_color'] = $info['word_bg_color'];
        }
        if (isset($info['other_title_color'])) {
            $data['other_title_color'] = $info['other_title_color'];
        }

        if (isset($info['attention_content'])) {
            $data['attention_content'] = $info['attention_content'];
        }
        if (isset($info['moulding_content'])) {
            $data['moulding_content'] = $info['moulding_content'];
        }
        if (isset($info['security_content'])) {
            $data['security_content'] = $info['security_content'];
        }

        if (isset($info['loop_time'])) {
            $data['loop_time'] = $info['loop_time'];
        }

        if (isset($info['department_no'])) {
            $data['department_no'] = $info['department_no'];
        }
        $result = M('cs_basic_setting')->data($data)->save();
        return $result;
    }
}