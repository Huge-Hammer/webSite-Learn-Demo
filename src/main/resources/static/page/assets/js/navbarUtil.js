/**
 * 通过id pid生成树
 * @param {Object} data
 */
function toTree(data) {
	// 删除 所有 children,以防止多次调用
	data.forEach(function(item) {
		delete item.children;
	});

	// 将数据存储为 以 id 为 KEY 的 map 索引数据列
	var map = {};
	data.forEach(function(item) {
		map[item.id] = item;
	});
	//        console.log(map);
	var val = [];
	data.forEach(function(item) {
		// 以当前遍历项，的pid,去map对象中找到索引的id
		var parent = map[item.pid];
		// 好绕啊，如果找到索引，那么说明此项不在顶级当中,那么需要把此项添加到，他对应的父级中
		if (parent) {
			(parent.children || (parent.children = [])).push(item);
		} else {
			//如果没有在map中找到对应的索引ID,那么直接把 当前的item添加到 val结果集中，作为顶级
			val.push(item);
		}
	});
	return val;
}

/**
 * 递归树
 * @param {Object} data
 */
function dp(data) {
	let str;
	var serviceDOM = $("#service-ul");
	if (data.hasOwnProperty('children')) {
		for (var i=0; i<data.children.length; i++) {
			var url = data.children[i].url;
			var title = data.children[i].title;
			//console.log(url + " - " + title);
			// serviceDOM.append()
			str = "<li class=\"drop-down\"><a href=\"#\">" + title + "</a><ul>";
			str += dpChildren(data.children[i]);
			//console.log(str);

			serviceDOM.append(str);
		}

		// <li class="drop-down"><a href="#">Squirrel云平台服务</a></li>
	}

}

function dpChildren(data){
	let str = '';
	if (data.hasOwnProperty('children')) {
		for (var i=0; i<data.children.length; i++) {
			var url = data.children[i].url;
			var title = data.children[i].title;
			//console.log(url + " - " + title);
			if (url == '')
				url = '#';
			str += ("<li><a href=" + url + ">" + title + "</a></li>");
			if (i == 7){
				str += ("<li><a href=" + url + ">" + "查看更多  >>>" + "</a></li>");
				break;
			}
		}
		// <li class="drop-down"><a href="#">Squirrel云平台服务</a></li>
	}
	return str;
}


/**
 * 构建菜单
 * @param {Object} data
 */
function buildNavBar(data) {
	var obj;
	for (var i=0; i<data.length; i++) {
		if (data[i].title === '产品与服务') obj = data[i];
	}
	return obj;
}


