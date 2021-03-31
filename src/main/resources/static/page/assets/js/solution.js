var llist = document.querySelector('.solution').querySelector('.list').querySelectorAll('li');
var ulist = document.querySelector('.solution').querySelector('.list').querySelectorAll('ul');
var detail = document.querySelector('.solution').querySelectorAll('.article');
for (i = 0; i<llist.length; i++){
    llist[i].setAttribute('index',i);
    llist[i].onclick = function (){
        var v_id = $(this).attr("id");

        if (this.className == 'sub' || this.className == 'sub-focus') {
            for (i = 0; i < llist.length; i++) {
                if(llist[i].className == "sub-focus") {
                    llist[i].className = llist[i].className.replace("sub-focus", "sub");
                    var uul = document.getElementById(llist[i].innerHTML);
                    uul.style.display = 'none';
                    //llist2[i].next.style.display = 'none';
                }
            }
            var index = this.getAttribute('index');
            llist[index].className = llist[index].className.replace("sub", 'sub-focus');
            var ul = document.getElementById(this.innerHTML);

            ul.style.display = 'block';
        }
        if (this.className == ''){
            for (i = 0; i<llist.length; i++){
                if (llist[i].className == 'focus')
                    llist[i].className = '';
                if (llist[i].className == 'title1 focus')
                    llist[i].className = 'title1';
                //llist2[i].className = llist2[i].className.replace('focus', '');
            }
            for (i = 0; i<detail.length; i++){
                detail[i].style.display = 'none';
                if (detail[i].id == v_id)
                    detail[i].style.display = 'block';
            }
            var index = this.getAttribute('index');
            llist[index].className = llist[index].className.replace('', 'focus');
        }

        if (this.className == 'title1'){
            for (i = 0; i<llist.length; i++){
                if (llist[i].className == 'focus')
                    llist[i].className = '';
                if (llist[i].className == 'title1 focus')
                    llist[i].className = 'title1';
            }
            for (i = 0; i<detail.length; i++){
                detail[i].style.display = 'none';
                if (detail[i].id == v_id)
                    detail[i].style.display = 'block';
            }
            var index = this.getAttribute('index');
            llist[index].className = 'title1 focus';
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
function setFocus(res ,id){
    var listkey;
    if (res == null){
        res ='水环境';
    }


    for (i=0; i<llist.length; i++){
        var til = llist[i].innerHTML;
        if (til == res) {
            if (llist[i+1].className != ''){
                break;
            }
            else {
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
            for (j = 0; j<detail.length; j++){
                if (detail[j].id == llist[listkey].id){
                    detail[j].style.display = "block";
                    break;
                }
            }
            break;
        }

    }
}





