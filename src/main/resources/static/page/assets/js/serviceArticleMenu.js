function getServiceSquirrelData() {
    $.ajax({
        url: '/front/serviceSquirrel',
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

function getServiceWaterData() {
    $.ajax({
        url: '/front/serviceWater',
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

function getServiceGasData() {
    $.ajax({
        url: '/front/serviceGas',
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

function getServiceSecurityData() {
    $.ajax({
        url: '/front/serviceSecurity',
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

function getServiceTerminalData() {
    $.ajax({
        url: '/front/serviceTerminal',
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

function getServiceThirdPartyData() {
    $.ajax({
        url: '/front/serviceThirdParty',
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

function showServiceSquirrelTitle(res){
    for (i = 0;i<res.length;i++){
        data = res[i];
        let str = `<li id = ${data.id}>${data.article_name}</li>`;
        $("#squirrel云平台").append(str);
    }
}

function showServiceWaterTitle(res){
    for (i = 0;i<res.length;i++){
        data = res[i];
        let str = `<li id = ${data.id}>${data.article_name}</li>`;
        $("#水环境").append(str);
    }
}
function showServiceGasTitle(res){
    for (i = 0;i<res.length;i++){
        data = res[i];
        let str = `<li id = ${data.id}>${data.article_name}</li>`;
        $("#气环境").append(str);
    }
}
function showServiceSecurityTitle(res){
    for (i = 0;i<res.length;i++){
        data = res[i];
        let str = `<li id = ${data.id}>${data.article_name}</li>`;
        $("#安全服务").append(str);
    }
}
function showServiceTerminalTitle(res){
    for (i = 0;i<res.length;i++){
        data = res[i];
        let str = `<li id = ${data.id}>${data.article_name}</li>`;
        $("#通用智能终端").append(str);
    }
}
function showServiceThirdPartyTitle(res){
    for (i = 0;i<res.length;i++){
        data = res[i];
        let str = `<li id = ${data.id}>${data.article_name}</li>`;
        $("#第三方服务").append(str);
    }
}

function addArticle(res ,title){
    for (i = 0;i<res.length;i++){
        data = res[i];
        let time = data.create_time;
        let newTime = time.substr(0,10);
        let str = `<div id= ${data.id} class="article" data-aos="fade-up" data-aos-delay="200" style="display: none;">
      <div class="title"><span style="color: #666666">产品与服务 > ${title} ></span>
      <span>${data.article_name}</span></div>
      <h3 style="text-align: center;margin: 20px 0 20px;font-size: 16px;font-weight: 700">${data.article_name}</h3>
      <p id="content">${data.content}</p>
                   
                    </div>
    </div>`;
        $("#文章").append(str);
    }
}
// <div class=\"date\">${newTime}</div>