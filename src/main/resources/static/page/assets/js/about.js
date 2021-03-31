// Service
var list = document.querySelector('.about').querySelector('.list').querySelectorAll('li');
var detail = document.querySelector('.about').querySelectorAll('.article');
for (i = 0; i < list.length; i++) {
  list[i].setAttribute('index',i);
  list[i].onclick = function() {
    for (i = 0; i < list.length; i++) {
      list[i].className = '';
      detail[i].style.display = 'none';
    }
  var index = this.getAttribute('index');
  detail[index].style.display = 'block';
  list[index].className = 'focus';
  }
}
function getQueryString(name) {
  var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
  var r = window.location.search.substr(1).match(reg);
  if (r != null)
    return decodeURI(r[2]);
  return null;
}

function setFocus(res) {
  if (res != '新闻资讯')
    return ;
  else{
    for (i = 0;i<list.length;i++){
      list[i].className = list[i].className.replace('focus', '');
      detail[i].style.display = 'none';
      if (list[i].id == res){
        list[i].className = 'focus';
        for (j = 0;j<detail.length;j++){
          if (detail[j].id == res)
            detail[j].style.display = 'block';
        }
      }
    }
  }

}