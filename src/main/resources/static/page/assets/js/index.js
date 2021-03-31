// Service
var list = document.querySelector('.cta').querySelector('.list').querySelectorAll('a');
var detail = document.querySelector('.cta').querySelectorAll('.serviceDetail');
for (i = 0; i < list.length; i++) {
  list[i].setAttribute('index',i);
  list[i].onmouseover = function() {
    for (i = 0; i < list.length; i++) {
      list[i].className = '';
      detail[i].style.display = 'none';
      if (i == 5)
        break;
    }
  var index = this.getAttribute('index');
  detail[index].style.display = 'block';
  list[index].className = 'focus';
  }
}

function getNewsData() {
  var newsData;
  $.ajax({
    url: '/front/news',
    async: false,
    success: function (res) {
      newsData = res;
    },
    error: function (msg) {
      alert("数据传输异常:" + msg);
    }
  });
  return newsData;
}


function showNewsData(res) {
  if (res[0] != undefined) {
    let mainNews = res[0];
    let mainPicStr = '<img onerror="this.src=\'assets/img/about/defaultArticleCover.png\';this.onerror=null;" src="' + mainNews.article_cover + '">';
    $(".pic").append(mainPicStr);
    let mainContentStr = '<h4>' + mainNews.article_name + '</h4><p>' + mainNews.article_outline + '......' + '</p>';
    $(".article").append(mainContentStr);
    let mainUrl = "<a href='/front/newsDetail?id=" + mainNews.id + "'>" + "查看详情" + "</a>";
    $(".detail").append(mainUrl);

    for (let i = 1; i < res.length; i++) {
      let newsData = res[i];
      let str = `<li>
                    <h4><a href="/front/newsDetail?id=${newsData.id}">${newsData.article_name}</a></h4>
                    <p id="content">${newsData.article_outline}</p>
                    <div class=\"date\">
                        ${newsData.create_time.substr(0, 10)}
                    </div>
                </li>`

      if (i <= 3)
        $("#newsData").append(str);
    }
  }
}

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

function showServiceSquirrel(res) {
  for (i = 0;i<res.length;i++){
    data = res[i];
    var pic = data.article_cover;
    if (pic == ''){
      pic = 'assets/img/about/defaultArticleCover.png';
    }
    let str = `<li>
                <h4><a  href="service.html?type=squirrel云平台&id=${data.id}"><img src="${pic}" alt=""></a> </h4>
                <h4><a href="service.html?type=squirrel云平台&id=${data.id}">${data.article_name}</a></h4>
               </li>`;
    if (i <= 5) {
      $("#squirrel云平台").append(str);
    }
  }

}

function showServiceInstrument(water, gas, security) {
  var num = 0;
  for (i = 0;i<water.length;i++){
    data = water[i];
    var pic = data.article_cover;
    if (pic == ''){
      pic = 'assets/img/about/defaultArticleCover.png';
    }
    str = `<li>
                <h4><a href="service.html?type=水环境&id=${data.id}"><img src="${pic}" alt="" ></a></h4>
                <h4><a href="service.html?type=水环境&id=${data.id}">${data.article_name}</a></h4>
           </li>`;
    num++;
    if (num <= 6)
      $("#环境监测仪器").append(str);
  }

  for (i=0;i<gas.length;i++){
    data = gas[i];
    var pic = data.article_cover;
    if (pic == ''){
      pic = 'assets/img/about/defaultArticleCover.png';
    }
    str = `<li>
                <h4><a href="href="service.html?type=气环境&id=${data.id}"><img src="${pic}" alt="" ></a></h4>
                <h4><a href="service.html?type=气环境&id=${data.id}">${data.article_name}</a></h4>
           </li>`;
    num++;
    if (num <= 6)
      $("#环境监测仪器").append(str);
  }


  for (i=0;i<security.length;i++){
    data = security[i];
    var pic = data.article_cover;
    if (pic == ''){
      pic = 'assets/img/about/defaultArticleCover.png';
    }
    str = `<li>
                <h4><a href="service.html?type=安全服务&id=${data.id}"><img src="${pic}" alt="" ></a></h4>
                <h4><a href="service.html?type=安全服务&id=${data.id}">${data.article_name}</a></h4>
           </li>`;
    num++;
    if (num <= 6)
      $("#环境监测仪器").append(str);
  }

}

function showServiceTerminal(res) {
  for (i = 0;i<res.length;i++){
    data = res[i];
    var pic = data.article_cover;
    if (pic == ''){
      pic = 'assets/img/about/defaultArticleCover.png';
    }
    let str = `<li>
                <h4><a href="service.html?type=通用智能终端&id=${data.id}"><img src="${pic}" alt="" ></a></h4>
                <h4><a href="service.html?type=通用智能终端&id=${data.id}">${data.article_name}</a></h4>
               </li>`;
    if (i <= 5) {
      $("#通用智能终端").append(str);
    }
  }

}

function showServiceThirdParty(res) {
  for (i = 0;i<res.length;i++){
    data = res[i];
    var pic = data.article_cover;
    if (pic == ''){
      pic = 'assets/img/about/defaultArticleCover.png';
    }
    let str = `<li>
                <h4><a href="service.html?type=第三方服务&id=${data.id}"><img src="${pic}" alt="" ></a></h4>
                <h4><a href="service.html?type=第三方服务&id=${data.id}">${data.article_name}</a></h4>
               </li>`;
    if (i <= 5) {
      $("#第三方服务").append(str);
    }
  }

}

function showSolutionCase(res) {

  for (i = 0;i<res.length;i++){
    data = res[i];
    var pic = data.article_cover;
    if (pic == ''){
      pic = 'assets/img/about/defaultArticleCover.png';
    }
    let str = `<div class="col-lg-4 col-md-6 portfolio-item filter-app">
                <a href ="solution.html?type=典型案例&id=${data.id}"><img src=${pic} class="img-fluid" alt="" style="width: 350px;height: 250px;"></a>
                <div class="portfolio-info">
                <h4>${data.article_name}</h4>
                <p>${data.article_name}</p>
                <a href="${pic}" data-gall="portfolioGallery" class="venobox preview-link" title="查看图片"><i
                 class="bx bx-photo-album"></i></a>
                </div>
                </div>`;
    if (i <= 2) {
      $("#经典案例").append(str);
    }
  }

}


