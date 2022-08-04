<?php
namespace app\admin\controller;

use think\facade\Db;
use think\facade\Request;
use think\facade\View;

class Dwz extends Common {
    public function index($act = null) {

        $uid = $this->user['uid'];

        if ($act == 'del') {

            if (!Request::isPost()) {
                return $this->error('参数错误，请重试！');
            }
            $ids = input('post.');

            if (!empty($ids)) {
                $r = Db::name('dwz')->delete($ids['ids']);
                if ($r) {
                    addlog('删除横幅，ID：' . implode(',', $ids['ids']), $this->user['username']);
                    return $this->success('恭喜，删除成功！', url('admin/dwz/index'));
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
            $dwz = Db::name('dwz')->where($map)->find();
            View::assign('dwz', $dwz);
            return View::fetch('edit');
        }
        if ($act == 'save') {
            $id   = input('post.id');
            $data = input('post.');
            $map  = [
                'uid' => $uid,
                'id'  => $id,
            ];
            $dwz = Db::name('dwz')->where($map)->find();
            if (!Request::isPost()) {
                return $this->error('参数错误，请重试！');
            }
            if (!$dwz) {
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
            $r = Db::name('dwz')->where(['id' => $id])->update($data);
            if ($r) {
                addlog('修改dwz，data：' . json_encode($data), $this->user['username']);
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
            if ($data['urls'] == '') {
                return $this->error('域名不能为空！');
            }
            $type = isset($data['type']) ? 1 : 0;
            $urls = explode("\r\n", $data['urls']);
            $i    = 1;
            $addD = [];
            foreach ($urls as $v) {
                $domain = str_replace(['https://', 'http://'], "", $v);
                $domain = urlencode($domain);
                $addD   = [
                    'remarks' => $data['remarks'] . '_' . $i,
                    'type'    => $type,
                    'domain'  => $domain,
                    'uid'     => $uid,
                    'url'     => '',
                ];
                $map           = [];
                $map['domain'] = $domain;
                $res           = Db::name('dwz')->where($map)->find();
                if (!$res) {
                    $result = Db::name('dwz')->insert($addD);
                }
                ++$i;

            }

            if ($result) {
                addlog('新增dwz，urls：' . json_encode($urls), $this->user['username']);
                return $this->success('操作成功', url('index'));
            } else {
                return $this->error('参数错误，请重试！');
            }
        }
        if ($act == 'rep') {
            if (Request::isPost()) {
                $data            = input('post.');
                $data['old_url'] = trim($data['old_url']);
                $data['new_url'] = trim($data['new_url']);
                $where           = "uid=" . $uid;
                if (!$data['old_url'] || !$data['new_url']) {
                    return $this->error('参数错误，请重试！');
                }
                $where .= " and url like '%" . $data['old_url'] . "%'";

                $res = Db::execute("update cy_dwz set url = REPLACE( url, '{$data['old_url']}', '{$data['new_url']}' ) where {$where}");

                return $this->success('替换成功', url('index'));

            }

            View::assign('k', false);
            return View::fetch('rep');
        }

        if ($act == 'add') {
            View::assign('k', false);
            return View::fetch('form');
        }
        $map        = [];
        $map['uid'] = $uid;

        $usd_status = input('get.usd_status');
        $status     = input('get.status');
        $remarks    = input('get.remarks');
        $remarks    = trim($remarks);
        $remarks    = str_replace(['http://', 'https://'], "", $remarks);
        $remarks    = rtrim($remarks, '/');
        $list       = [];
        if (input('get.usd_status') > 0) {
            if ($usd_status == 2) {
                $list = Db::name('dwz')->where($map)->where("url", "=", '')->order('id desc')->paginate(50);
            } else {
                $list = Db::name('dwz')->where($map)->where("url", "<>", '')->order('id desc')->paginate(50);
            }
        }
        if ($status > 0) {
            $map['status'] = $status;
        }

        if ($remarks) {
            $list = Db::name('dwz')->where($map)->where('remarks|domain', 'like', $remarks . '%')->order('id desc')->paginate(50);
        }
        if (empty($list)) {
            $list = Db::name('dwz')->where($map)->order('id desc')->paginate(50);
        }
        View::assign('status', $status);
        View::assign('usd_status', $usd_status);
        View::assign('list', $list);
        return View::fetch();
    }
}
