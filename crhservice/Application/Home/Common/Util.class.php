<?php
namespace Home\Common;

//use Org\Util\String;

class Util
{
    public static $queryCount = 100;

    public static function getEncryptCode($str)
    {
        return sha1(md5($str));
    }

    public static function errorMsg($msg)
    {
        $data['errorMsg'] = $msg;
        return $data;
    }

    public static function getDateTimeString()
    {
        $dtNow = new \DateTime('now', new \DateTimeZone('UTC'));
        return $dtNow->format('Ymdhis');
    }

    public static function getRootDir()
    {
        $path = $_SERVER['DOCUMENT_ROOT'] . dirname(_PHP_FILE_);
        $newpath = str_replace("/","\\",$path);

        return $newpath;//$_SERVER['DOCUMENT_ROOT'] . dirname(_PHP_FILE_);
    }

    /**
     * 相对路径转绝对路径
     * @param string $file
     * @return string
     */
    public static function toAbsolutePath($file)
    {
        $rootDir = self::getRootDir();
//        $rootDir = substr($rootDir, 1, 1);
//        $strArray = explode($rootDir, dirname(__FILE__));
//        return $strArray[0] . $file;
        return $rootDir . $file;


    }

    //child中除去parent以后的半部分加1，再拼接成新string
    public static function createTaskGroupID($parentID, $childID)
    {
        $ID = null;
        if (strstr($childID, $parentID)) {
            $tempStr = substr($childID, strlen($parentID));
            if (intval($tempStr) < 9) {
                $ID = $parentID . "0" . strval(intval($tempStr) + 1);
            } else {
                $ID = $parentID . strval(intval($tempStr) + 1);
            }
        }
        return $ID;
    }

    public static function getIP()
    {
        $ip = 'unknown';
        $unknown = 'unknown';

        if (isset($_SERVER['HTTP_X_FORWARDED_FOR']) && $_SERVER['HTTP_X_FORWARDED_FOR'] && strcasecmp($_SERVER['HTTP_X_FORWARDED_FOR'], $unknown)) {
            // 使用透明代理、欺骗性代理的情况
            $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];

        } elseif (isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], $unknown)) {
            // 没有代理、使用普通匿名代理和高匿代理的情况
            $ip = $_SERVER['REMOTE_ADDR'];
        }

        // 处理多层代理的情况
        if (strpos($ip, ',') !== false) {
            // 输出第一个IP
            $ip = reset(explode(',', $ip));
        }
        return $ip;
    }

    /**
     * 生成15位的订单号
     * @return string 订单号
     */
    public static function createOrderNm()
    {

        $year_code = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
            'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
        $date_code = array('0',
            '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A',
            'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K', 'L', 'M',
            'N', 'O', 'P', 'Q', 'R', 'T', 'U', 'V', 'W', 'X', 'Y');
        //一共15位订单号,同一秒内重复概率1/10000000,26年一次的循环\
        $order_sn = $year_code[(intval(date('Y')) - 2017) % 26] . //年 1位
//            strtoupper(dechex(date('m'))) . //月(16进制) 1位
//            $date_code[intval(date('d'))] . //日 1位
            strtoupper(date('m')) . //月 2位
            intval(date('d')) . //日 2位
            substr(time(), -5) . //秒 5位
//            substr(microtime(), 2, 5) .  // 微秒 5位
            sprintf('%02d', rand(0, 99)); //  随机数 2位

        return $order_sn;
    }

}