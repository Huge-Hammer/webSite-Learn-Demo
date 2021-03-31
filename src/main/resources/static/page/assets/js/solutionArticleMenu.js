function getSolutionWaterData() {
    $.ajax({
        url: '/front/solutionWater',
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
function getSolutionGasData() {
    $.ajax({
        url: '/front/solutionGas',
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

function getSolutionSecurityData() {
    $.ajax({
        url: '/front/solutionSecurity',
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

function getSolutionSOData(){
    $.ajax({
        url: '/front/solutionSO',
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

function getSolutionCaseData(){
    $.ajax({
        url: '/front/solutionCase',
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

function showSolutionWaterTitle(res){
    for (i = 0;i<res.length;i++){
        data = res[i];
        let str = `<li id = ${data.id}>${data.article_name}</li>`;
        $("#水环境").append(str);
    }
}

function showSolutionGasTitle(res){
    for (i = 0;i<res.length;i++){
        data = res[i];
        let str = `<li id = ${data.id}>${data.article_name}</li>`;
        $("#气环境").append(str);
    }
}

function showSolutionSecurityTitle(res){
    for (i = 0;i<res.length;i++){
        data = res[i];
        let str = `<li id = ${data.id}>${data.article_name}</li>`;
        $("#安全服务").append(str);
    }
}

function showSolutionSOTitle(res){
    for (i = 0;i<res.length;i++){
        data = res[i];
        let str = `<li id = ${data.id}>${data.article_name}</li>`;
        $("#服务与运营").append(str);
    }

}

function showSolutionCaseTitle(res){
    for (i = 0;i<res.length;i++){
        data = res[i];
        let str = `<li id = ${data.id}>${data.article_name}</li>`;
        $("#典型案例").append(str);
    }
}

function addArticle(res ,title){
    for (i = 0;i<res.length;i++){
        data = res[i];
        let time = data.create_time;
        let newTime = time.substr(0,10);
        let str = `<div id= ${data.id} class="article" data-aos="fade-up" data-aos-delay="200" style="display: none;" >
      <div class="title"><span style="color: #666666">解决方案 > ${title} ></span>
      <span>${data.article_name}</span></div>
      <h3 style="text-align: center;margin: 20px 0 20px;font-size: 16px;font-weight: 700">${data.article_name}</h3>
      <p id="content">${data.content}</p>
                    
                    </div>
    </div>`;
        $("#文章").append(str);
    }
}
// <div class=\"date\">${newTime}</div>