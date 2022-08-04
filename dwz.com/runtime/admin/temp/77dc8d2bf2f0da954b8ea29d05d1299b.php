<?php /*a:1:{s:46:"/www/wwwroot/dwz.com/app/admin/view/js/js.html";i:1623497815;}*/ ?>
(function($ , undefined) {
	ace.vars['US_STATES'] = <?php echo $json; ?>;
	try {
		$('#nav-search-input').bs_typeahead({
			source: ace.vars['US_STATES'],
			updater:function (item) {
				$('#nav-search-input').focus();
				return item;
			}
		});
	} catch(e) {}

})(window.jQuery);
$(function(){
	$('#skin-colorpicker').on('change', function() {
		var skin = $(this).find("option:selected").attr('data-skin');
		$.get("<?php echo url('admin/user/skin'); ?>",{skin:skin});
	})

});
