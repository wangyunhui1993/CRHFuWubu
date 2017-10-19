<?php
/**
 * Created by PhpStorm.
 * User: el
 * Date: 2017/3/23
 * Time: 0:40
 */
namespace Home\Common;
header("Access-Control-Allow-Origin: *");

//这段时间在做项目的后端服务优化，数据量比较大的两个后台服务一个是首页微博列表获取，一个是个人动态的获取，先从性能来分析，需要用到时间统计，所以抽时间写了一个函数的时间消耗统计类，实现上比较简单，但是还算好用，分享给大家，如果有错误或者可以改进的话欢迎指出。
//我统计的结果，wifi环境下基本上拉取16条数据需要3~4s，这个数据还是相当高了，接下来找找方法看看能不能优化。

/*使用举例：
<?php
    require_once 'TimeHelper.class.php';
    $myTimeHelper = new TimeHelper();
    #代码段A
    $myTimeHelper->recordNow("代码A消耗");
    #代码段B
    $myTimeHelper->recordNow("代码B消耗");
    $myTimeHelper->printInfo();

?>
*/
// +----------------------------------------------------------------------
// | Copyright (c) 2014 doBell www.dobell.me
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: congorz <congorz@yeah.net>
// +----------------------------------------------------------------------

/**
 * doSchool-服务器端 服务消耗时间统计API
 * @author    congorz <congorz@yeah.net>
 * @lastdate 2014年12月25日19:51:31
 */
class TimerHelper{

    private $startTime;
    private $tempTime;
    private $spendTime;
    private $recordString;

    public function __construct() {
        $this->startTime = microtime(true);
        $this->tempTime = array();
        $this->spendTime = array();
        $this->recordStrs = array();
        $this->tempTime[] = $this->startTime;
    }

    public function recordNow($str) {
        //str是对于前面代码功能的注释标签
        $this->recordStrs[] = $str;
        $this->tempTime[] = microtime(true);
    }

    public function handle() {
        $count = count($this->tempTime);
        $total = 0;
        for ($i=1; $i < $count; $i++) {
            $oneSpend = $this->tempTime[$i] - $this->tempTime[$i-1];
            $str_oneSpend = var_export($oneSpend, TRUE);
            if(substr_count($str_oneSpend,"E")){
                //科学计数法的处理,暂时没做
            }
            $total += $oneSpend;
            $tempStr = $this->recordStrs[$i-1];
            $this->spendTime["$tempStr"] = $oneSpend;
        }
        $this->spendTime["总计时间"] = $total;
    }

    public function printInfo() {
        $this->handle();
        print_r($this->spendTime);
    }
}
?>
