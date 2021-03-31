var list = document.querySelector('.parnter').querySelector('.article').querySelector('.page').querySelectorAll('li');
var detail = document.querySelector('.parnter').querySelector('.article').querySelectorAll('.solution');
var input = document.querySelector('.parnter').querySelector('.article').querySelector('.page').querySelector('input');
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


var clist = document.querySelector('.parnter').querySelector('.cust').querySelector('.page').querySelectorAll('li');
var cdetail = document.querySelector('.parnter').querySelector('.cust').querySelectorAll('.solution');
var cinput = document.querySelector('.parnter').querySelector('.cust').querySelector('.page').querySelector('input');
for (i = 0; i < clist.length; i++) {
    clist[i].setAttribute('index',i);
    clist[i].onclick = function() {
        for (i = 0; i < clist.length; i++) {
            clist[i].className = '';
            cdetail[i].style.display = 'none';
        }
        var index = this.getAttribute('index');
        cdetail[index].style.display = 'block';
        clist[index].className = 'focus';
    }
}
cinput.addEventListener('keyup',function(e) {
    if (e.keyCode == 13) {
        for (i = 0; i < clist.length; i++) {
            clist[i].className = '';
            cdetail[i].style.display = 'none';
        }
        var value = this.value - 1;
        if (value <= clist.length) {
            cdetail[value].style.display = 'block';
            clist[value].className = 'focus'
        }else {
            alert("输入的数字不能超过最大页码");
            location.reload(true);
        }
    }
})

var llist = document.querySelector('.team').querySelector('.list').querySelectorAll('li');
var ldetail = document.querySelector('.team').querySelectorAll('.article');
for (i = 0; i < llist.length; i++) {
    llist[i].setAttribute('index',i);
    llist[i].onclick = function() {
        for (i = 0; i < llist.length; i++) {
            llist[i].className = '';
            ldetail[i].style.display = 'none';
        }
        var index = this.getAttribute('index');
        ldetail[index].style.display = 'block';
        llist[index].className = 'focus';
    }
}