document.body.style.display = "block";
var $table = $('#user_table')
$(document).ready(function () {
    $table.bootstrapTable({
        url: '/recruitment/pageRecruitment',
        pagination: true,
        sortable: false,
        locale: 'zh-CN',
        virtualScroll: true,
        totalField: 'total',
        dataField: 'list',
        sidePagination: 'server',
        pageSize: 10,
        pageList: [10, 20, 50],
        search: false,
        idField: 'id',
        showRefresh: false,
        columns: [
            {
                // radio: true
                checkbox:true
            }, {
                field: 'article_name',
                title: '标题'
            }, {
                field: 'create_time',
                title: '创建时间'
            }, {
                field: 'update_time',
                title: '修改时间',
            }, {
                field: 'create_by',
                title: '创建人',
            }, {
                field: 'update_by',
                title: '修改人'
            }, {
                field: 'article_type',
                title: '文章类型'
            }],
        onDblClickRow: function (row) {
            window.location.href = '/article/articleDetail?articleName=' + row.articleName + '&id=' + row.id
        }
    });
});

$(".article_edit").click(function () {
    var row = $table.bootstrapTable('getSelections');
    if (row.length !=1) {
        layer.msg('请选择一条记录！');
        return;
    }
    window.location.href = '/article/updateDetail?menuName=修改文章' + '&id=' + row[0].id
});

$(".article_del").click(function () {
    var row = $table.bootstrapTable('getSelections');
    if (row.length <= 0) {
        layer.msg('请至少选择一条记录！');
        return;
    }
    let ids = '';
    for(let i=0;i<row.length;i++){
        ids += row[i]['id']+","
    }
    ids = ids.substring(0,ids.length-1);
    layer.alert('确定进行删除操作吗？此操作不可恢复',{
        skin:'layui-layer-molv',
        closeBtn:1,
        title:'提示',
        anim:1,
        btn:['确定','取消'],
        yes:function (){
            $.ajax({
                type: 'GET',
                url: '/article/delArticle?id=' + ids,
                success: function (res) {
                    if (1 == res.code) {
                        window.location.reload();
                        return;
                    }
                }, error: function () {
                    layer.msg('失败');
                }
            });
        },
        btn2:function (){
        }
    })
});
