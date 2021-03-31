/**
 * 请求导航栏list
 */
function getNavBar() {
	var data;
	$.ajax({
		url: "/front/getNavBar",
		async: false,
		success: function(res) {
			data = res;
		}
	});
	return data;
}

