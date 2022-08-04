<?php
declare (strict_types = 1);

namespace app\command;

use think\console\Command;
use think\console\Input;
use think\console\input\Argument;
use think\console\Output;
use think\facade\Db;

/*
域名检测
 */
class CheckDomain extends Command {
    protected function configure() {
        // 指令配置
        $this->setName('app\command\CheckDomain')
            ->addArgument('name', Argument::OPTIONAL, "your name")
            ->setDescription('the app\command\CheckDomain command');
    }

    /**
     * 命令执行示例
     * ============================================================
     * xml_get_current_byte_index(parser)
     * -----------------------
     * createtime:2021-06-12
     * -----------------------
     */
    protected function execute(Input $input, Output $output) {
        $name = trim($input->getArgument('name'));
        $this->$name();
    }
    // start
    public function index() {

        echo "===start check ====\n";
        $map           = [];
        $map['status'] = 1;
        $domainList    = Db::name("dwz")->where($map)->select();
        foreach ($domainList as $k => $v) {
            echo $v['id'] . "\t";
            $domain = 'http://' . urldecode($v['domain']);
            // $domain = 'http://w.vrmss.cn';
            echo $domain;
            # code...
            $isBad  = $this->isBadDomain($domain);
            $upData = [];
            if ($isBad) {
                $upData['status'] = 2;
                echo "\t被封";
            } else {
                echo "\tok";
            }
            $upData['bad_time'] = date('Y-m-d H:i:s');
            $r                  = Db::name("dwz")->where("id", "=", $v['id'])->update($upData);
            echo $r . "\n";
        }
        echo "===end check ====\n";
    }

    /**
     * 是否封杀了
     */
    private function isBadDomain($url) {

        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL            => "https://mp.weixinbridge.com/mp/wapredirect?url=" . urlencode($url),
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING       => "",
            CURLOPT_SSL_VERIFYPEER => FALSE,
            CURLOPT_SSL_VERIFYHOST => FALSE,
            CURLOPT_MAXREDIRS      => 10,
            CURLOPT_TIMEOUT        => 30,
            CURLOPT_HEADER         => 1,
            CURLOPT_HTTP_VERSION   => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST  => "GET",
            CURLOPT_HTTPHEADER     => array(
                "cache-control: no-cache",
                "user-agent: User-Agent: Mozilla/5.0 (iPhone; CPU iPhone OS 11_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E302 MicroMessenger/6.7.2 NetType/WIFI Language/zh_CN",
            ),
        ));
        $result = curl_exec($curl);
        $err    = curl_error($curl);
        curl_close($curl);
        preg_match('/evil_type=(.*?)&source/', $result, $arrs);
        $wx_code = isset($arrs[1]) ? (int) $arrs[1] : -1;

        if ($wx_code > 0) {
            return $wx_code;
        } else {
            return false;
        }
    }
}
