document.body.style.display = "block";
const E = window.wangEditor;
const editor = new E('#editor');
editor.config.placeholder = '开始创作';
// 配置字体
editor.config.fontNames = [
    '黑体',
    '仿宋',
    '楷体',
    '标楷体',
    '华文仿宋',
    '华文楷体',
    '宋体',
    '微软雅黑',
    'Arial',
    'Tahoma',
    'Verdana',
    'Times New Roman',
    'Courier New'
];
editor.config.uploadFileName = 'file';
editor.config.uploadImgServer = '/resource/uploadFile';
//图片大小限制为5M
editor.config.uploadImgMaxSize = 5 * 1024 * 1024;
//限制一次性上传3张图片
editor.config.uploadImgMaxLength = 3;
editor.config.height = 500;
editor.config.customAlert = function (s) {
};
editor.config.showLinkImg = false;
var index;
editor.config.uploadImgHooks = {
    // // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象
    // before: function (xhr) {
    //     index = layer.load(2, {shade: false});
    // },
    success: function (xhr) {
        layer.close(index);
    },
    fail: function (xhr, editor, resData) {
        // layer.msg(resData.message);
        layer.close(index);
    },
    error: function (xhr, editor, resData) {
        layer.close(index);
    },
    timeout: function (xhr) {
        layer.close(index);
        layer.msg("上传超时！");
    },
    customInsert: function (insertImg,result){
        var url = result.url;
        insertImg(url);
    }
};
editor.create();


$("#publish").click(function () {
    var menuData = {
        "title": $("#title").val(),
        "type":$("#type").val(),
        "cover":$("#cover").val(),
        "outline":$("#outline").val(),
        "content": editor.txt.html(),
    };

    if(!editor.txt.html()){
        layer.msg("请输入正文")
    }
    else if ($("#title").val()&&$("#type").val()&&$("#outline").val())
        $.ajax({
            type: "POST",
            url: '/article/saveArticle',
            dataType: 'json',
            contentType: 'application/json',
            data: JSON.stringify(menuData),
            success: function (res) {
                if (res.code == 1) {
                    layer.msg("成功");
                    window.location.href='/article/articleListPage?menuName=文章列表'

                } else {
                    layer.msg(res.message);
                }
            },
            error: function (res) {
            }
        });
});
