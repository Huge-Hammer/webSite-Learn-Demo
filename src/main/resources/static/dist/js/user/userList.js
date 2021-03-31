document.body.style.display = "block";
var $table = $('#user_table')
$(document).ready(function () {
    $table.bootstrapTable({
        url: '/userInfo/pageUserInfo',
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
            {radio: true},
            {
            field: 'user_name',
            title: '姓名'
        },
            {
            field: 'account',
            title: '账户名'
        },
            {
             field: 'role_name',
             title: '所属角色'
        },
            {
            field: 'create_time',
            title: '创建时间'
        }, {
            field: 'update_time',
            title: '修改时间'
        }],
        onDblClickRow: function (row) {
            layuiIframe("查看", "/userInfo/getUserInfo?id=" + row.id);
        }
    });
});

$(".user_add").click(function () {
    layuiIframe("新增", "/userInfo/userAdd");
});

$(".user_edit").click(function () {
    var row = $table.bootstrapTable('getSelections');
    if (row.length <= 0) {
        layer.msg('请选择一条记录！');
        return;
    }
    layuiIframe("编辑", "/userInfo/updateUserInfo?id=" + row[0].id);
});

$(".user_del").click(function () {
    var row = $table.bootstrapTable('getSelections');
    if (row.length <= 0) {
        layer.msg('请选择一条记录！');
        return;
    }
    layer.alert('确定进行删除操作吗？此操作不可恢复',{
        skin:'layui-layer-molv',
        closeBtn:1,
        title:'提示',
        anim:1,
        btn:['确定','取消'],
        yes:function (){
            $.ajax({
                type: 'GET',
                url: '/userInfo/deleteUser?id=' + row[0].id,
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
            // layer.msg('取消')
        }
    })
});
