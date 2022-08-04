<?php
namespace app\index\controller;

use app\BaseController;
use think\facade\Db;
use think\facade\View;

class Index extends BaseController {
    public function index() {
        $domain = urlencode($_SERVER['HTTP_HOST']);
        $dwz    = Db::name('dwz')->where(compact('domain'))->find();
        if (!$dwz['url']) {
            echo ($_SERVER['HTTP_HOST'] . "<h2>此域名未设置长链接</h2>");
            exit;
        }
        View::assign('dwz', $dwz);
        if ($dwz['type'] == 1) {
            return View::fetch();
        } else {
            return View::fetch('index/jump');
        }

    }
}
