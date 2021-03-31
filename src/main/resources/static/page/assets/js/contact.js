// Service
var list = document.querySelector('.contact-us').querySelector('.list').querySelectorAll('li');
var detail = document.querySelector('.contact-us').querySelectorAll('.article');
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
