var list = document.querySelector('.humanResource').querySelector('.list').querySelectorAll('li');
var detail = document.querySelector('.humanResource').querySelectorAll('.article');
for (i = 0; i < list.length; i++) {
    list[i].onclick = function () {
        var v_id = $(this).attr("id");
        if (this.className == 'sub') {
            for (i = 0; i < list.length; i++) {
                list[i].className = list[i].className.replace('sub2-focus', 'sub2');
            }
            var ul = document.getElementById(this.innerHTML);
            ul.style.display = 'block';
            this.className = 'sub-focus';
        }

        if (this.className == 'sub2') {
            for (i = 0;i < list.length; i++) {
                list[i].className = list[i].className.replace('sub-focus', 'sub');
                if (list[i].className == 'focus'){
                    list[i].className = '';
                }
                if (list[i].className == 'sub') {
                    var ul = document.getElementById(list[i].innerHTML);
                    ul.style.display = 'none';
                }
            }

            for (i = 0;i<detail.length;i++){
                detail[i].style.display = 'none';
                if (detail[i].id == v_id)
                    detail[i].style.display = 'block';
            }
            this.className = 'sub2-focus';
        }

        if (this.className == ''){
            for (i = 0;i < list.length; i++) {
                list[i].className = list[i].className.replace('sub2-focus', 'sub2');
                if (list[i].className == 'focus'){
                    list[i].className = '';
                }

            }
            for (i = 0;i<detail.length;i++){
                detail[i].style.display = 'none';
                if (detail[i].id == v_id)
                    detail[i].style.display = 'block';
            }
            this.className = 'focus';
        }
    }

}
