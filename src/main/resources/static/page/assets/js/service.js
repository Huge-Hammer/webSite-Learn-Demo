var llist = document.querySelector('.service').querySelector('.list').querySelectorAll('li');
var ulist = document.querySelector('.service').querySelector('.list').querySelectorAll('ul');
var detailA = document.querySelector('.service').querySelectorAll('.article');

for (i = 0;i<llist.length;i++) {
    llist[i].onclick = function () {
        var v_id = $(this).attr("id");
        if (this.className == 'sub') {
            for (i = 0; i < llist.length; i++) {
                if (llist[i].className == "sub3-focus") {
                    llist[i].className = llist[i].className.replace("sub3-focus", "sub3");
                    if (llist[i].className == 'sub3') {
                        var ul = document.getElementById(llist[i].innerHTML);
                        ul.style.display = 'none';
                    }
                }
            }
            var ul = document.getElementById(this.innerHTML);
            ul.style.display = 'block';
            this.className = 'sub-focus';
        }
        if (this.className == 'sub3') {
            for (i = 0; i < llist.length; i++) {
                llist[i].className = llist[i].className.replace("sub3-focus", "sub3");
                llist[i].className = llist[i].className.replace("sub-focus", "sub");
                if (llist[i].className == 'sub' || llist[i].className == 'sub3') {
                    var ul = document.getElementById(llist[i].innerHTML);
                    ul.style.display = 'none';
                }

            }
            this.className = 'sub3-focus';
            var ul = document.getElementById(this.innerHTML);
            ul.style.display = 'block';

        }

        if (this.className == 'sub2') {
            for (i = 0; i < llist.length; i++) {
                llist[i].className = llist[i].className.replace("sub2-focus", "sub2");
                if (llist[i].className == 'sub2') {
                    var ul = document.getElementById(llist[i].innerHTML);
                    ul.style.display = 'none';
                }

            }
            this.className = 'sub2-focus';
            var ul = document.getElementById(this.innerHTML);
            ul.style.display = 'block';
        }

        if (this.className == '') {
            for (i = 0; i < llist.length; i++) {
                if (llist[i].className == 'focus')
                    llist[i].className = '';

            }
            for (i = 0;i<detailA.length;i++){
                detailA[i].style.display = 'none';
                if (detailA[i].id == v_id)
                    detailA[i].style.display = 'block';
            }
            this.className = 'focus';

        }
    }
}
// if (llist[1].className == '') {
//     llist[1].className = "focus";
//     for (i = 0;i<detailA.length;i++){
//         if (detailA[i].id == llist[1].id){
//             detailA[i].style.display = "block";
//         }
//     }
// }

function setFocus(res, id){
    var flag = false;
    var keylist;
    for (i=0;i<llist.length;i++){
        var til = llist[i].innerHTML;
        if (til == res) {
            flag = true;
        }
    }
    if (flag == false){
        res = 'squirrel云平台';
    }
    for (i=0;i<llist.length;i++){
        var til = llist[i].innerHTML;

        if (til == res) {

            if (llist[i+1].className != ''){
                break;
            }
            else {

                if (llist[i].className == 'sub2'){
                    for (n = i;n>0;n--){
                        if (llist[n].className == 'sub'){
                            llist[n].className += '-focus';
                            for (k = 0;k<ulist.length;k++){
                                if (ulist[k].id == llist[n].innerHTML){
                                    ulist[k].style.display = 'block';
                                }
                            }
                            break;
                        }

                    }
                    // llist[i-1].className += '-focus';

                }
                llist[i].className += '-focus';
                // llist[i+1].style.display = 'block';
                if (id != null){
                    for (j=0; j<llist.length; j++){
                        if (llist[j].id == id) {
                            llist[j].className = "focus";
                            listkey = j;
                        }
                    }
                }
                else if (id == null){
                    llist[i+1].className = "focus";
                    listkey = i+1;
                }
                for (k = 0;k<ulist.length;k++){
                    if (ulist[k].id == res){
                        ulist[k].style.display = 'block';
                    }
                }

            }
            for (j = 0;j<detailA.length;j++){
                if (detailA[j].id == llist[listkey].id){
                    detailA[j].style.display = "block";
                    break;
                }
            }
            break;
        }

    }
}
function getQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null)
        return decodeURI(r[2]);
    return null;
}