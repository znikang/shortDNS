<?php
namespace app\admin\controller;

use think\facade\Db;
use think\facade\Request;
use think\facade\View;

class Godaddy extends Common {
    public function index($act = null) {
        $uid = $this->user['uid'];

        if ($act == 'del') {

            if (!Request::isPost()) {
                return $this->error('参数错误，请重试！');
            }
            $ids = input('post.');

            if (!empty($ids)) {
                $r = Db::name('godaddy')->delete($ids['ids']);
                if ($r) {
                    addlog('删除横幅，ID：' . implode(',', $ids['ids']), $this->user['username']);
                    return $this->success('恭喜，删除成功！', url('admin/godaddy/index'));
                }
            }

            return $this->error('请选择需要删除的选项！');
        }

        if ($act == 'edit') {
            $id  = input('get.id');
            $map = [
                'uid' => $uid,
                'id'  => $id,
            ];
            $godaddy = Db::name('godaddy')->where($map)->find();
            View::assign('godaddy', $godaddy);
            return View::fetch('edit');
        }
        if ($act == 'save') {
            $id   = input('post.id');
            $data = input('post.');
            $map  = [
                'uid' => $uid,
                'id'  => $id,
            ];
            $godaddy = Db::name('godaddy')->where($map)->find();
            if (!Request::isPost()) {
                return $this->error('参数错误，请重试！');
            }
            if (!$godaddy) {
                return $this->error('没有此数据');
            }
            if (!stristr($data['url'], 'http')) {
                return $this->error('长链接格式不对');
            }
            $type = isset($data['type']) ? 1 : 0;
            $data = [
                'remarks' => $data['remarks'],
                'type'    => $type,
                'url'     => trim($data['url']),
                'tj_code' => trim($data['tj_code']),
            ];
            $r = Db::name('godaddy')->where(['id' => $id])->update($data);
            if ($r) {
                addlog('修改godaddy，data：' . json_encode($data), $this->user['username']);
                return $this->success('操作成功', url('index'));
            } else {
                return $this->error('参数错误，请重试！');
            }
        }

        if ($act == 'addurl') {
            if (!Request::isPost()) {
                return $this->error('参数错误，请重试！');
            }
            $data = input('post.');

            if ($data['remarks'] == '') {
                return $this->error('名称不能为空！');
            }
            if ($data['domain'] == '') {
                return $this->error('域名不能为空！');
            }

            $path  = app()->getRuntimePath() . 'domains_' . $uid . '.txt';
            $james = fopen($path, "w+");
            fwrite($james, $data['domain']);
            fclose($james);

            $urls    = explode("\r\n", $data['domain']);
            $i       = 1;
            $addD    = [];
            $status  = 1;
            $apikey  = $this->getApikey($uid);
            $err_msg = '';
            $domains = '';
            foreach ($urls as $v) {
                $domain     = str_replace(['https://', 'http://'], "", $v);
                $domain     = urlencode($domain);
                $dns_result = $this->godaddyDns($domain, $data['ip'], $apikey, $data['host_record']);
                $domains .= $domain . "\r\n";
                if ($dns_result) {
                    $err_msg .= $dns_result . "\r\n";
                    $status = -1;
                }
                ++$i;
                sleep(2);
            }

            $addD = [
                'uid'         => $uid,
                'domain'      => $domains,
                'host_record' => $data['host_record'],
                'ip'          => $data['ip'],
                'remarks'     => $data['remarks'],
                'status'      => $status,
                'err_msg'     => $err_msg,
            ];
            $result = Db::name('godaddy')->insert($addD);

            if ($result) {
                addlog('addD' . json_encode($addD), $this->user['username']);
                return $this->success('操作成功', url('index'));
            } else {
                return $this->error('参数错误，请重试！');
            }
        }

        if ($act == 'add') {
            View::assign('k', false);
            return View::fetch('form');
        }
        $map        = [];
        $map['uid'] = $uid;

        $usd_status = input('get.usd_status');
        $remarks    = input('get.remarks');
        $remarks    = trim($remarks);
        $remarks    = str_replace(['http://', 'https://'], "", $remarks);
        $remarks    = rtrim($remarks, '/');
        $list       = [];
        if (input('get.usd_status') > 0) {
            if ($usd_status == 2) {
                $list = Db::name('godaddy')->where($map)->where("url", "=", '')->order('id desc')->paginate(50);
            } else {
                $list = Db::name('godaddy')->where($map)->where("url", "<>", '')->order('id desc')->paginate(50);
            }
        }
        if ($remarks) {
            $list = Db::name('godaddy')->where($map)->where('remarks|domain', 'like', $remarks . '%')->order('id desc')->paginate(50);
        }
        if (empty($list)) {
            $list = Db::name('godaddy')->where($map)->order('id desc')->paginate(50);
        }
        View::assign('usd_status', $usd_status);
        View::assign('list', $list);
        return View::fetch();
    }

    public function apikey($act = null) {
        $uid        = $this->user['uid'];
        $map        = [];
        $map['uid'] = $uid;
        $map['key'] = 'godaddy_apikey';
        $apikey     = Db::name('cfg')->where($map)->find()['value'];
        if ($act == 'update') {
            $post = input("post.");
            if ($apikey) {
                Db::name('cfg')->where($map)->update([
                    'value' => $post['apikey'],
                ]);
            } else {
                $map['value'] = $post['apikey'];
                Db::name('cfg')->insert($map);
            }
            return $this->success('修改配置成功', url('godaddy/apikey'));
        }
        $map        = [];
        $map['uid'] = $uid;
        $map['key'] = 'godaddy_apikey';
        $apikey     = Db::name('cfg')->where($map)->find()['value'];

        View::assign('apikey', $apikey);
        return View::fetch();
    }

    //得到密钥
    private function getApikey($uid) {
        $map        = [];
        $map['uid'] = $uid;
        $map['key'] = 'godaddy_apikey';
        $apikey     = Db::name('cfg')->where($map)->find()['value'];
        return $apikey;
    }

    //解析
    public function godaddyDns($domain, $ip, $apikey, $name) {
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL            => 'https://api.godaddy.com/v1/domains/' . $domain . '/records/A/' . $name,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING       => '',
            CURLOPT_SSL_VERIFYPEER => false,
            CURLOPT_SSL_VERIFYHOST => false,
            CURLOPT_MAXREDIRS      => 10,
            CURLOPT_TIMEOUT        => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION   => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST  => 'PUT',
            CURLOPT_POSTFIELDS     => '[ { "data": "' . $ip . '", "ttl": 600, "type": "A" }]',
            CURLOPT_HTTPHEADER     => array(
                'accept: application/json',
                'Content-Type: application/json',
                'Authorization: sso-key ' . $apikey,
            ),
        ));
        $response = curl_exec($curl);
        curl_close($curl);
        return $response;
    }
}
