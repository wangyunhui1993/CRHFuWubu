<?php
/**
 * Created by PhpStorm.
 * User: PC-HT
 * Date: 2017-03-17
 * Time: 22:27
 */

namespace Home\Model;

use Think\Model;

class PieceWorkbaseModel extends Model
{
    public function getRecords($condition = null)
    {
        $data = ' 1 ';
        if (isset($condition['train_column'])) {

            $str = $info['train_column'];
            $data .= " AND train_column='$str' ";
        }

        $list = M('Piece_workbase')
            ->where($data)
            ->select();

        return $list;
    }

    public function getRecordsCount($condition = null)
    {
        $data = ' 1 ';
        if (isset($condition['train_column'])) {

            $str = $info['train_column'];
            $data .= " AND train_column='$str' ";
        }

        if (isset($condition['task_content_id'])) {

            $str = $info['task_content_id'];
            $data .= " AND task_contentid='$str' ";
        }

        $count = M('Piece_workbase')->where($data)->count();
        return $count;
    }

    public function addData($info)
    {
        $result = false;
        $str = $info['train_column'];
        $data .= "train_column='$str' ";

        if ( M('Piece_workbase')->where($data)->count() > 0)
        {
            $result = modifyData($info);
        }else{

            $data['train_column'] = $info['train_column'];
            $data['task_contentid'] = $info['task_content_id'];
            $data['piecebase'] = $info['piecebase'];
            $result = M('Piece_workbase')->data($data)->add();
    
        }
        return $result;
    }

    public function deleteData($condition)
    {
        $data['train_column'] = $condition['train_column'];
        $result = M('Piece_workbase')->where($data)->delete();
        return $result;
    }

    public function modifyData($info)
    {
        if ($info['train_column']) {
            $data['train_column'] = $info['train_column'];
        }
        if ($info['task_content_id']) {
            $data['task_contentid'] = $info['task_content_id'];
        }
        if ($info['state']) {
            $data['state'] = $info['state'];
        }
        if ($info['piecebase']) {
            $data['piecebase'] = $info['piecebase'];
        }
 
        $result = M('task_plan_detail')->data($data)->save();

        return $result;
    }
}