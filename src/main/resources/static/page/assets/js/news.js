var list = document.querySelector('.news').querySelector('.article').querySelector('.page').querySelectorAll('li');
var detail = document.querySelector('.news').querySelector('.article').querySelectorAll('.news');
var input = document.querySelector('.news').querySelector('.article').querySelector('.page').querySelector('input');
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
input.addEventListener('keyup',function(e) {
    if (e.keyCode == 13) {
        for (i = 0; i < list.length; i++) {
            list[i].className = '';
            detail[i].style.display = 'none';
        }
        var value = this.value - 1;
        if (value <= list.length) {
        detail[value].style.display = 'block';
        list[value].className = 'focus'
        }else {
            alert("输入的数字不能超过最大页码");
            location.reload(true);
        }
    }
})