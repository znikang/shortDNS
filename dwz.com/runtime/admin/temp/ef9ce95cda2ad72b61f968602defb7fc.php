<?php /*a:2:{s:53:"/www/wwwroot/dwz.com/app/admin/view/godaddy/form.html";i:1626333011;s:52:"/www/wwwroot/dwz.com/app/admin/view/common/base.html";i:1623501236;}*/ ?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title><?php echo htmlentities($current_menu['title']); ?>-<?php echo htmlentities($cyConfig['sitename']); ?></title>

		<meta name="keywords" content="<?php echo htmlentities($cyConfig['keywords']); ?>" />
		<meta name="description" content="<?php echo htmlentities($cyConfig['description']); ?>" />
        
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="/static/admin/css/bootstrap.min.css" />
		<link rel="stylesheet" href="/static/admin/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->
        
		<!-- text fonts -->
		<link rel="stylesheet" href="/static/admin/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="/static/admin/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="/static/admin/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="/static/admin/css/ace-skins.min.css" />
		<link rel="stylesheet" href="/static/admin/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="/static/admin/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->
        
		<!-- ace settings handler -->
		<script src="/static/admin/js/ace-extra.min.js"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="/static/admin/js/html5shiv.min.js"></script>
		<script src="/static/admin/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body class="<?php echo htmlentities($user['skin']); ?>">
		<div id="navbar" class="navbar navbar-default ace-save-state">
			<div class="navbar-container ace-save-state" id="navbar-container">
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only">切换边栏</span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<div class="navbar-header pull-left">
					<a href="<?php echo url('admin/index/index'); ?>" class="navbar-brand">
						<small>
							<i class="fa fa-leaf"></i>
							<?php echo htmlentities($cyConfig['sitename']); ?>
						</small>
					</a>
				</div>

				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
                        <!-- <li class="red">
							<a href="/" title="前台首页" target="_blank">
								<i class="ace-icon fa fa-home"></i>
							</a>
						</li> -->
						<li class="light-blue dropdown-modal">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="<?php if(empty($user['avatar']) || (($user['avatar'] instanceof \think\Collection || $user['avatar'] instanceof \think\Paginator ) && $user['avatar']->isEmpty())): ?>/static/admin/images/avatars/avatar2.png<?php else: ?><?php echo htmlentities($user['avatar']); ?><?php endif; ?>" alt="<?php echo htmlentities($user['username']); ?>" />
                                <span class="user-info">
									<small>欢迎光临，</small>
									<?php echo htmlentities($user['username']); ?>
								</span>

								<i class="ace-icon fa fa-caret-down"></i>
							</a>

							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="<?php echo url('admin/setting/index'); ?>">
										<i class="ace-icon fa fa-cog"></i>
										设置
									</a>
								</li>

								<li>
									<a href="<?php echo url('admin/profile/index'); ?>">
										<i class="ace-icon fa fa-user"></i>
										个人资料
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="<?php echo url('admin/logout/index'); ?>">
										<i class="ace-icon fa fa-power-off"></i>
										退出
									</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div><!-- /.navbar-container -->
		</div>

		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>

			<div id="sidebar" class="sidebar                  responsive                    ace-save-state">
				<script type="text/javascript">
					try{ace.settings.loadState('sidebar')}catch(e){}
				</script>

				<!-- <div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<button class="btn btn-success">
							<i class="ace-icon fa fa-signal"></i>
						</button>

						<button class="btn btn-info">
							<i class="ace-icon fa fa-pencil"></i>
						</button>

						<button class="btn btn-warning">
							<i class="ace-icon fa fa-users"></i>
						</button>

						<button class="btn btn-danger">
							<i class="ace-icon fa fa-cogs"></i>
						</button>
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span>

						<span class="btn btn-info"></span>

						<span class="btn btn-warning"></span>

						<span class="btn btn-danger"></span>
					</div>
				</div> --><!-- /.sidebar-shortcuts -->

				<ul class="nav nav-list">
					<?php if(is_array($menu) || $menu instanceof \think\Collection || $menu instanceof \think\Paginator): $i = 0; $__LIST__ = $menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?>
						<li <?php if(($current_menu['id'] == $v['id']) or ($v['id'] == $current_menu['pid']) or ($v['id'] == $current_menu_father['pid']) or ($v['id'] == $current_menu_father['pid'])): ?> class="active <?php if(!(empty($v['children']) || (($v['children'] instanceof \think\Collection || $v['children'] instanceof \think\Paginator ) && $v['children']->isEmpty()))): ?>open<?php endif; ?>"<?php endif; ?>>
						<a href="<?php if(empty($v['children']) || (($v['children'] instanceof \think\Collection || $v['children'] instanceof \think\Paginator ) && $v['children']->isEmpty())): ?><?php echo url($v['url']); else: ?>#<?php endif; ?>" <?php if(!(empty($v['children']) || (($v['children'] instanceof \think\Collection || $v['children'] instanceof \think\Paginator ) && $v['children']->isEmpty()))): ?>class="dropdown-toggle"<?php endif; ?>>
							<i class="<?php echo htmlentities($v['icon']); ?>"></i>
							<span class="menu-text">
								<?php echo htmlentities($v['title']); ?>
							</span>
							<?php if(!(empty($v['children']) || (($v['children'] instanceof \think\Collection || $v['children'] instanceof \think\Paginator ) && $v['children']->isEmpty()))): ?>
							<b class="arrow fa fa-angle-down"></b>
							<?php endif; ?>
						</a>
						<b class="arrow"></b>
						<?php if(!(empty($v['children']) || (($v['children'] instanceof \think\Collection || $v['children'] instanceof \think\Paginator ) && $v['children']->isEmpty()))): ?>
						<ul class="submenu">
							<?php if(is_array($v['children']) || $v['children'] instanceof \think\Collection || $v['children'] instanceof \think\Paginator): $i = 0; $__LIST__ = $v['children'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vv): $mod = ($i % 2 );++$i;?>
							<li <?php if(($current_menu['id'] == $vv['id']) or ($vv['id'] == $current_menu['pid']) or ($vv['id'] == $current_menu_father['pid']) or ($vv['id'] == $current_menu_father['pid'])): ?> class="active <?php if(!(empty($vv['children']) || (($vv['children'] instanceof \think\Collection || $vv['children'] instanceof \think\Paginator ) && $vv['children']->isEmpty()))): ?>open<?php endif; ?>"<?php endif; ?>>
								<a href="<?php if(empty($vv['children']) || (($vv['children'] instanceof \think\Collection || $vv['children'] instanceof \think\Paginator ) && $vv['children']->isEmpty())): ?><?php echo url($vv['url']); else: ?>#<?php endif; ?>" <?php if(!(empty($vv['children']) || (($vv['children'] instanceof \think\Collection || $vv['children'] instanceof \think\Paginator ) && $vv['children']->isEmpty()))): ?>class="dropdown-toggle"<?php endif; ?>>
									<i class="<?php echo htmlentities($vv['icon']); ?>"></i>
									<?php echo htmlentities($vv['title']); if(!(empty($vv['children']) || (($vv['children'] instanceof \think\Collection || $vv['children'] instanceof \think\Paginator ) && $vv['children']->isEmpty()))): ?><b class="arrow fa fa-angle-down"></b><?php endif; ?>
								</a>
								<b class="arrow"></b>
								<?php if(!(empty($vv['children']) || (($vv['children'] instanceof \think\Collection || $vv['children'] instanceof \think\Paginator ) && $vv['children']->isEmpty()))): ?>
								<ul class="submenu">
									<?php if(is_array($vv['children']) || $vv['children'] instanceof \think\Collection || $vv['children'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vv['children'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vvv): $mod = ($i % 2 );++$i;?>
									<li <?php if(($current_menu['id'] == $vvv['id']) or ($vvv['id'] == $current_menu['pid']) or ($vvv['id'] == $current_menu_father['pid']) or ($v['id'] == $current_menu_father['pid'])): ?> class="active <?php if(!(empty($vvv['children']) || (($vvv['children'] instanceof \think\Collection || $vvv['children'] instanceof \think\Paginator ) && $vvv['children']->isEmpty()))): ?>open<?php endif; ?>"<?php endif; ?>>
										<a href="<?php if(empty($vvv['children']) || (($vvv['children'] instanceof \think\Collection || $vvv['children'] instanceof \think\Paginator ) && $vvv['children']->isEmpty())): ?><?php echo url($vvv['url']); else: ?>#<?php endif; ?>" <?php if(!(empty($vvv['children']) || (($vvv['children'] instanceof \think\Collection || $vvv['children'] instanceof \think\Paginator ) && $vvv['children']->isEmpty()))): ?>class="dropdown-toggle"<?php endif; ?>>
											<i class="<?php echo htmlentities($vvv['icon']); ?>"></i>
											<?php echo htmlentities($vvv['title']); if(!(empty($vvv['children']) || (($vvv['children'] instanceof \think\Collection || $vvv['children'] instanceof \think\Paginator ) && $vvv['children']->isEmpty()))): ?><b class="arrow fa fa-angle-down"></b><?php endif; ?>
										</a>
										<b class="arrow"></b>
										<?php if(!(empty($vvv['children']) || (($vvv['children'] instanceof \think\Collection || $vvv['children'] instanceof \think\Paginator ) && $vvv['children']->isEmpty()))): ?>
										<ul class="submenu">
											<?php if(is_array($vvv['children']) || $vvv['children'] instanceof \think\Collection || $vvv['children'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vvv['children'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vvvv): $mod = ($i % 2 );++$i;?>
											<li <?php if(($current_menu['id'] == $vvvv['id']) or ($vvvv['id'] == $current_menu['pid']) or ($vvvv['id'] == $current_menu_father['pid']) or ($vvvv['id'] == $current_menu_father['pid'])): ?> class="active <?php if(!(empty($vvvv['children']) || (($vvvv['children'] instanceof \think\Collection || $vvvv['children'] instanceof \think\Paginator ) && $vvvv['children']->isEmpty()))): ?>open<?php endif; ?>"<?php endif; ?>>
												<a href="<?php if(empty($vvvv['children']) || (($vvvv['children'] instanceof \think\Collection || $vvvv['children'] instanceof \think\Paginator ) && $vvvv['children']->isEmpty())): ?><?php echo url($vvvv['url']); else: ?>#<?php endif; ?>">
													<i class="<?php echo htmlentities($vvvv['icon']); ?>"></i>
													<?php echo htmlentities($vvvv['title']); ?>
												</a>

												<b class="arrow"></b>
											</li>
											<?php endforeach; endif; else: echo "" ;endif; ?>
										</ul>
										<?php endif; ?>
									</li>
									<?php endforeach; endif; else: echo "" ;endif; ?>
								</ul>
								<?php endif; ?>
							</li>
							<?php endforeach; endif; else: echo "" ;endif; ?>
						</ul>
						<?php endif; ?>
					</li>
					<?php endforeach; endif; else: echo "" ;endif; ?>
				</ul><!-- /.nav-list -->

				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>
			</div>

			<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="<?php echo url('admin/dwz/index'); ?>">首页</a>
							</li>
							<?php if($current_menu['pid'] != 0): ?>
							<li>
								<a href="javascript:;"><?php echo htmlentities($current_menu_father['title']); ?></a>
							</li>
							<?php endif; ?>
							<li class="active"><?php echo htmlentities($current_menu['title']); ?></li>
						</ul><!-- /.breadcrumb -->

						<!-- <div class="nav-search" id="nav-search">
							<form class="form-search" action="<?php echo url('admin/search/index'); ?>" method="post">
								<span class="input-icon">
									<input name="keyword" type="text" placeholder="搜索" class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
							</form>
						</div> --><!-- /.nav-search -->
					</div>

					<div class="page-content">
                        <?php if(!(empty($current_menu['tips']) || (($current_menu['tips'] instanceof \think\Collection || $current_menu['tips'] instanceof \think\Paginator ) && $current_menu['tips']->isEmpty()))): ?>
						<div class="alert alert-block alert-success">
							<button type="button" class="close" data-dismiss="alert">
								<i class="ace-icon fa fa-times"></i>
							</button>
							<i class="ace-icon fa fa-bullhorn green"></i>
							<?php echo htmlentities($current_menu['tips']); ?>
						</div>
						<?php endif; ?>
						<div class="ace-settings-container" id="ace-settings-container">
							<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
								<i class="ace-icon fa fa-cog bigger-130"></i>
							</div>

							<div class="ace-settings-box clearfix" id="ace-settings-box">
								<div class="pull-left width-50">
									<!-- #section:settings.skins -->
									<div class="ace-settings-item">
										<div class="pull-left">
											<select id="skin-colorpicker" class="hide">
												<option data-skin="no-skin" value="#438EB9">#438EB9</option>
												<option data-skin="skin-1" value="#222A2D">#222A2D</option>
												<option data-skin="skin-2" value="#C6487E">#C6487E</option>
												<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
											</select>
										</div>
										<span>&nbsp; 选择皮肤</span>
									</div>

									<!-- /section:settings.skins -->

									<!-- #section:settings.navbar -->
									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-navbar" autocomplete="off" />
										<label class="lbl" for="ace-settings-navbar"> 固定导航栏</label>
									</div>

									<!-- /section:settings.navbar -->

									<!-- #section:settings.sidebar -->
									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-sidebar" autocomplete="off" />
										<label class="lbl" for="ace-settings-sidebar"> 固定侧边栏</label>
									</div>

									<!-- /section:settings.sidebar -->

									<!-- #section:settings.breadcrumbs -->
									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-breadcrumbs" autocomplete="off" />
										<label class="lbl" for="ace-settings-breadcrumbs"> 固定面包屑</label>
									</div>

									<!-- /section:settings.breadcrumbs -->

									<!-- #section:settings.rtl -->
									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" autocomplete="off" />
										<label class="lbl" for="ace-settings-rtl"> 切换至左边</label>
									</div>

									<!-- /section:settings.rtl -->

									<!-- #section:settings.container -->
									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-add-container" autocomplete="off" />
										<label class="lbl" for="ace-settings-add-container">
											切换宽窄度
										</label>
									</div>

									<!-- /section:settings.container -->
								</div><!-- /.pull-left -->

								<div class="pull-left width-50">
									<!-- #section:basics/sidebar.options -->
									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" autocomplete="off" />
										<label class="lbl" for="ace-settings-hover"> 折叠子菜单</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" autocomplete="off" />
										<label class="lbl" for="ace-settings-compact"> 压缩侧边栏</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" autocomplete="off" />
										<label class="lbl" for="ace-settings-highlight"> 当前位置</label>
									</div>

									<!-- /section:basics/sidebar.options -->
								</div><!-- /.pull-left -->
							</div><!-- /.ace-settings-box -->
						</div><!-- /.ace-settings-container -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
                                
<div class="row">
<form class="form-horizontal" action="<?php echo url('index',['act' => 'addurl']); ?>" method="post" id="messageForm" onsubmit="goSubmit(this)">
<input type="hidden" name="id" value="<?php echo isset($banner['id']) ? htmlentities($banner['id']) : 0; ?>">
<div class="space-4"></div>
<div class="form-group">
    <label class="col-sm-1 control-label no-padding-right" for="remarks"> 备注 </label>
    <div class="col-sm-9">
        <input type="text" name="remarks"  placeholder="例如：0612新域名" id="remarks" class="col-xs-10 col-sm-5" value="<?php echo isset($banner['remarks']) ? htmlentities($banner['remarks']) : ''; ?>" required="required">
        <span class="help-inline col-xs-12 col-sm-7">
            <span class="middle"></span>
        </span>
    </div>
</div>

<div class="space-4"></div>
<div class="form-group">
    <label class="col-sm-1 control-label no-padding-right" for="host_record"> 主机记录 </label>
    <div class="col-sm-9">
        <input type="text" name="host_record"  placeholder="例如： @" id="host_record" class="col-xs-10 col-sm-5" value="<?php echo isset($banner['host_record']) ? htmlentities($banner['host_record']) : '@'; ?>" required="required">
        <span class="help-inline col-xs-12 col-sm-7">
            <span class="middle">域名前缀</span>
        </span>
    </div>
</div>

<div class="space-4"></div>
<div class="form-group">
    <label class="col-sm-1 control-label no-padding-right" for="ip"> 记录值 </label>
    <div class="col-sm-9">
        <input type="text" name="ip"  placeholder="例如：127.0.0.1" id="ip" class="col-xs-10 col-sm-5" value="<?php echo isset($banner['ip']) ? htmlentities($banner['ip']) : '154.83.12.135'; ?>" required="required">
        <span class="help-inline col-xs-12 col-sm-7">
            <span class="middle">解析IP</span>
        </span>
    </div>
</div>

<div class="space-4"></div>
<div class="form-group">
    <label class="col-sm-1 control-label no-padding-right" for="domain"> 域名 </label>
    <div class="col-sm-9">
        <textarea class="ace_text-input col-xs-10 col-sm-5" id="domain" name="domain" placeholder="输入格式如：&#13;&#10;a001.com&#13;&#10;a001.com&#13;&#10;每个域名换一行" data-val="true" style="height: 200px" data-val-required="请输入正确的链接"></textarea>
        <span class="help-inline col-xs-12 col-sm-7">
            <span class="middle"></span>
        </span>
    </div>
</div>





<!-- <div class="space-4"></div>
<div class="form-group">
    <label class="col-sm-1 control-label no-padding-right" for="type"> 防红 </label>
    <div class="control-label col-sm-1">
        <label>
            <input name="type" id="type" <?php if(!(empty($banner) || (($banner instanceof \think\Collection || $banner instanceof \think\Paginator ) && $banner->isEmpty()))): if($banner['type'] == 1): ?>checked="checked"<?php endif; else: ?>checked="checked"<?php endif; ?> value="1" class="ace ace-switch ace-switch-2" type="checkbox" />
            <span class="lbl"></span>
        </label>
    </div>
    <span class="help-inline col-xs-12 col-sm-7">
            <span class="middle"></span>
    </span>
</div> -->

<div class="space-4"></div>
<div class="col-md-offset-2 col-md-9">
    <button id="submit" class="btn btn-info" type="submit">
        <i class="icon-ok bigger-110"></i>
        提交
    </button>

    &nbsp; &nbsp; &nbsp;
    <!-- <button class="btn" type="reset">
        <i class="icon-undo bigger-110"></i>
        重置
    </button> -->
</div>
</form>
</div>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

			<div class="footer">
				<div class="footer-inner">
					<div class="footer-content">
						<span class="bigger-120">
							Copyright &copy; <?php echo date('Y'); ?> <a href="/" target="_blank"><?php echo htmlentities($cyConfig['sitename']); ?></a> Some Rights Reserved.
						</span>
					</div>
				</div>
			</div>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="/static/admin/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
        <script src="/static/admin/js/jquery-1.11.3.min.js"></script>
        <![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='/static/admin/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="/static/admin/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->
        
		<!-- ace scripts -->
		<script src="/static/admin/js/ace-elements.min.js"></script>
		<script src="/static/admin/js/ace.min.js"></script>
        <script type="text/javascript" src="<?php echo url('admin/js/js'); ?>"></script>
		<!-- inline scripts related to this page -->
        
<script type="text/javascript">
   function goSubmit(){
        $("#submit").attr("disabled","true"); //设置变灰按钮  
        $("#submit").html('<i class="fa fa-spinner fa-spin"></i> 请不要关闭当前页，域名解析中，请等待2-5分钟');
    }
</script>

	</body>
</html>
