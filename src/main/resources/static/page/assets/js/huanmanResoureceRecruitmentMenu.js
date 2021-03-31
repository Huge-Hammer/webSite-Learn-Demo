function getRecruitData() {
    $.ajax({
        url: '/front/recruitment',
        async: false,
        success: function (res) {
            data = res;
        },
        error: function (msg) {
            alert("数据传输异常:" + msg);
        }
    });
    return data;
}

function showRecruitTitle(res) {
    for (i = 0;i<res.length;i++){
        data = res[i];
        let str = `<li id = ${data.id}>${data.article_name}</li>`;
        $("#招聘信息").append(str);
    }
}

function addArticle(res){
    for (i = 0;i<res.length;i++){
        data = res[i];
        let time = data.create_time;
        let newTime = time.substr(0,10);
        let str = `<div id= ${data.id} class="article" data-aos="fade-up" data-aos-delay="200" style="display: none;">
      <div class="title">
      <span style="color: #666666"> 人力资源 > 招聘信息 > </span>
      <span>${data.article_name}</span> 
      </div>
      <h3 style="text-align: center;margin: 20px 0 20px">${data.article_name}</h3>
      <p id="content">${data.content}</p>
                    </div>
    </div>`;
        $("#人力资源").append(str);
    }
}