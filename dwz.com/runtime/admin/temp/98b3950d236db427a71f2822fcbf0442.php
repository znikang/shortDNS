<?php /*a:1:{s:40:"/www/wwwroot/dwz.com/view/jump/jump.html";i:1623497815;}*/ ?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
<!--[if IE 8]><style>.ie8 .alert-circle,.ie8 .alert-footer{display:none}.ie8 .alert-box{padding-top:75px}.ie8 .alert-sec-text{top:45px}</style><![endif]-->
<title>跳转提示</title>
<style>
body {
	margin: 0;
	padding: 0;
	background: #E6EAEB;
	font-family: Arial, '微软雅黑', '宋体', sans-serif
}
.alert-box {
	position: relative;
	margin: 80px auto 0;
	padding: 80px 10px 22px;
	border-radius: 10px 10px 0 0;
	background: #FFF;
	box-shadow: 5px 9px 17px rgba(102,102,102,0.75);
	width: 300px;
	color: #FFF;
	text-align: center
}
.alert-box p {
	margin: 0
}
.alert-circle {
	position: absolute;
	top: -80px;
    left: 80px;
}
.alert-sec-circle {
	stroke-dashoffset: 0;
	stroke-dasharray: 735;
	transition: stroke-dashoffset 1s linear
}
.alert-sec-text {
    position: absolute;
	top: -10px;
	color: #000;
	font-size: 20px;
    left: 0;
    right: 0;
    text-align: center;
}
.alert-sec-unit {
	font-size: 34px
}
.alert-body {
	margin: 35px 0
}
.alert-head {
	color: #242424;
	font-size: 28px
}
.alert-concent {
	margin: 25px 0 14px;
	color: #7B7B7B;
	font-size: 18px
}
.alert-concent p {
	line-height: 27px
}
.alert-btn {
	display: block;
	border-radius: 10px;
	background-color: #4AB0F7;
	height: 55px;
	line-height: 55px;
	width: 300px;
	color: #FFF;
	font-size: 20px;
	text-decoration: none;
	letter-spacing: 2px
}
.alert-btn:hover {
	background-color: #6BC2FF
}
.alert-footer {
	margin: 0 auto;
	height: 42px;
	width: 120px
}
.alert-footer-icon {
	float: left
}
.alert-footer-text {
	float: left;
	border-left: 2px solid #EEE;
	padding: 3px 0 0 5px;
	height: 40px;
	color: #0B85CC;
	font-size: 12px;
	text-align: left
}
.alert-footer-text p {
	color: #7A7A7A;
	font-size: 22px;
	line-height: 18px
}
</style>
</head>
<body class="ie8">

<div id="js-alert-box" class="alert-box">
	<svg class="alert-circle" width="160" height="160">
		<circle cx="80" cy="80" r="60" fill="#FFF" stroke="#43AEFA" stroke-width="17"></circle>
	</svg>
	<div id="js-sec-text" class="alert-sec-text"><b id="wait"><?php echo($wait);?></b><b>秒</b></div>
	<div class="alert-body">
		<div id="js-alert-head" class="alert-head">
        <?php switch ($code) {case 1:?>
            <h1>:)</h1>
            <?php break;case 0:?>
            <h1>:(</h1>
            <?php break;} ?>
        <p><?php echo(strip_tags($msg));?></p>
        </div>
		<div class="alert-concent">
			<p>页面自动跳转等待时间</p>
		</div>
		<a class="alert-btn" id="href" href="<?php echo($url);?>">立即前往</a>
	</div>
	<div class="alert-footer clearfix">
		<svg width="46px" height="42px" class="alert-footer-icon">
			<circle fill-rule="evenodd" clip-rule="evenodd" fill="#7B7B7B" stroke="#DEDFE0" stroke-width="2" stroke-miterlimit="10" cx="21.917" cy="21.25" r="17"/>
			<path fill="#FFF" d="M22.907,27.83h-1.98l0.3-2.92c-0.37-0.22-0.61-0.63-0.61-1.1c0-0.71,0.58-1.29,1.3-1.29s1.3,0.58,1.3,1.29 c0,0.47-0.24,0.88-0.61,1.1L22.907,27.83z M18.327,17.51c0-1.98,1.61-3.59,3.59-3.59s3.59,1.61,3.59,3.59v2.59h-7.18V17.51z M27.687,20.1v-2.59c0-3.18-2.59-5.76-5.77-5.76s-5.76,2.58-5.76,5.76v2.59h-1.24v10.65h14V20.1H27.687z"/>
			<circle fill-rule="evenodd" clip-rule="evenodd" fill="#FEFEFE" cx="35.417" cy="10.75" r="6.5"/>
			<polygon fill="#7B7B7B" stroke="#7B7B7B" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" points="35.417,12.16 32.797,9.03 31.917,10.07 35.417,14.25 42.917,5.29 42.037,4.25 "/>
		</svg>
		<div class="alert-footer-text"><p>secure</p>安全加密 </div>
	</div>
</div>
<script>
(function(){
    var wait = document.getElementById('wait'),
        href = document.getElementById('href').href;
    var interval = setInterval(function(){
        var time = --wait.innerHTML;
        if(time <= 0) {
            location.href = href;
            clearInterval(interval);
        };
    }, 1000);
})();
</script>
 
</body>
</html>
