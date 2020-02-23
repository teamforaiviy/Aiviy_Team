
/**
 * 添加用户
 */
function insertUser() {
    $.ajax({
        url:"user/insert",
        type:"get",
        data:$("#myModal form").serialize(),
        dataType:"json",
        success:function (data) {
            if(data){
                alert("添加成功！")
                window.location.reload();
            }else {
                alert("添加失败！")
            }
        }
    })
}
function addAdd(userId) {
    $("#insertAddress input[name=userId]").val(userId)
}

/**
 * 添加地址
 */
function insertAddress() {
    $.ajax({
        url:"address/insert",
        type:"get",
        data:$("#insertAddress form").serialize(),
        dataType:"json",
        success:function (data) {
            if(data){
                alert("添加成功！")
                window.location.reload()
            }else {
                alert("添加失败！")
            }
        }
    })
}