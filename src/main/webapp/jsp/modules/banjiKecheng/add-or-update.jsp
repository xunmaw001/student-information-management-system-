<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑班级_课程</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">班级_课程管理</li>
                        <li class="breadcrumb-item active">编辑班级_课程</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">班级_课程信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6">
                                        <label>班级</label>
                                        <div>
                                            <select id="banjiSelect" name="banjiSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>专业</label>
                                        <input id="zhuanyeValue" name="zhuanyeValue" class="form-control"
                                               placeholder="专业" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>班级名称</label>
                                        <input id="banjiName" name="banjiName" class="form-control"
                                               placeholder="班级名称" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>课程</label>
                                        <div>
                                            <select id="kechengSelect" name="kechengSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>课程名称</label>
                                        <input id="kechengName" name="kechengName" class="form-control"
                                               placeholder="课程名称" readonly>
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>老师姓名</label>
                                        <input id="name" name="name" class="form-control"
                                               placeholder="老师姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>老师手机号</label>
                                        <input id="phone" name="phone" class="form-control"
                                               placeholder="老师手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>老师身份证号</label>
                                        <input id="idNumber" name="idNumber" class="form-control"
                                               placeholder="老师身份证号" readonly>
                                    </div>

                                <%--<div class="form-group col-md-6">--%>
                                    <%--<label>老师</label>--%>
                                    <%--<input id="laoshiId" name="laoshiId" class="form-control"--%>
                                           <%--placeholder="老师" readonly>--%>
                                <%--</div>--%>


                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="banjiId" name="banjiId" type="hidden">
                                <input id="kechengId" name="kechengId" type="hidden">
                                <div class="form-group col-md-12 mb-3">
                                    <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                    <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js">
</script><script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "banjiKecheng";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
        <!-- 级联表的下拉框数组 -->
    var banjiOptions = [];
    var kechengOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
           if($("#banjiId") !=null){
               var banjiId = $("#banjiId").val();
               if(banjiId == null || banjiId =='' || banjiId == 'null'){
                   alert("班级不能为空");
                   return;
               }
           }
           if($("#kechengId") !=null){
               var kechengId = $("#kechengId").val();
               if(kechengId == null || kechengId =='' || kechengId == 'null'){
                   alert("课程不能为空");
                   return;
               }
           }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                successMes = '添加成功';
            }
            httpJson("banjiKecheng/" + urlParam, "POST", data, (res) => {
                if(res.code == 0)
                {
                    window.sessionStorage.removeItem('addbanjiKecheng');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        <!-- 查询级联表的所有列表 -->
        function banjiSelect() {
            //填充下拉框选项
            http("banji/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    banjiOptions = res.data.list;
                }
            });
        }

        function banjiSelectOne(id) {
            http("banji/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                banjiShowImg();
                banjiDataBind();
            }
        });
        }
        function kechengSelect() {
            //填充下拉框选项
            http("kecheng/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    kechengOptions = res.data.list;
                }
            });
        }

        function kechengSelectOne(id) {
            http("kecheng/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                kechengShowImg();
                kechengDataBind();
            }
        });
        }

        function laoShiSelectOne(id) {
            http("laoshi/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                $("#name").val(res.data.name);
                $("#phone").val(res.data.phone);
                $("#idNumber").val(res.data.idNumber);
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->

    <!-- 初始化级联表的下拉框(要根据内容修改) -->
    <!-- 初始化级联表的下拉框(要根据内容修改) -->
    <!-- 初始化级联表的下拉框(要根据内容修改) -->
    <!-- 初始化级联表的下拉框(要根据内容修改) -->
    <!-- 初始化级联表的下拉框(要根据内容修改) -->
    <!-- 初始化级联表的下拉框(要根据内容修改) -->
        function initializationbanjiSelect() {
            var banjiSelect = document.getElementById('banjiSelect');
            if(banjiSelect != null && banjiOptions != null  && banjiOptions.length > 0 ) {
                for (var i = 0; i < banjiOptions.length; i++) {
                        banjiSelect.add(new Option(banjiOptions[i].banjiName, banjiOptions[i].id));
                }

                $("#banjiSelect").change(function(e) {
                        banjiSelectOne(e.target.value);
                });
            }

        }

        function initializationkechengSelect() {
            var kechengSelect = document.getElementById('kechengSelect');
            if(kechengSelect != null && kechengOptions != null  && kechengOptions.length > 0 ) {
                for (var i = 0; i < kechengOptions.length; i++) {
                        kechengSelect.add(new Option(kechengOptions[i].kechengName, kechengOptions[i].id));
                }

                $("#kechengSelect").change(function(e) {
                        kechengSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->
        <!--  级联表的下拉框回显  -->
            var banjiSelect = document.getElementById("banjiSelect");
            if(banjiSelect != null && banjiOptions != null  && banjiOptions.length > 0 ) {
                for (var i = 0; i < banjiOptions.length; i++) {
                    if (banjiOptions[i].id == ruleForm.banjiId) {//下拉框value对比,如果一致就赋值汉字
                        banjiSelect.options[i+1].selected = true;
                        $("#banjiSelect" ).selectpicker('refresh');
                    }
                }
            }
            var kechengSelect = document.getElementById("kechengSelect");
            if(kechengSelect != null && kechengOptions != null  && kechengOptions.length > 0 ) {
                for (var i = 0; i < kechengOptions.length; i++) {
                    if (kechengOptions[i].id == ruleForm.kechengId) {//下拉框value对比,如果一致就赋值汉字
                        kechengSelect.options[i+1].selected = true;
                        $("#kechengSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addbanjiKecheng');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                banjiId: "required",
                kechengId: "required",
            },
            messages: {
                banjiId: "班级不能为空",
                kechengId: "课程不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addbanjiKecheng = window.sessionStorage.getItem("addbanjiKecheng");
        if (addbanjiKecheng != null && addbanjiKecheng != "" && addbanjiKecheng != "null") {
            window.sessionStorage.removeItem('addbanjiKecheng');
            //注册表单验证
            $(validform());
            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("banjiKecheng/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {

    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        banjiDataBind();
        kechengDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#banjiId").val(ruleForm.banjiId);
        $("#kechengId").val(ruleForm.kechengId);

    }
    <!--  级联表的数据回显  -->
    function banjiDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#banjiId").val(ruleForm.id);

        $("#zhuanyeValue").val(ruleForm.zhuanyeValue);
        $("#banjiName").val(ruleForm.banjiName);
    }

    function kechengDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#kechengId").val(ruleForm.id);

        $("#laoshiId").val(ruleForm.laoshiId);
        $("#kechengName").val(ruleForm.kechengName);
        $("#kechengContent").val(ruleForm.kechengContent);


        <!-- 查询老师信息 级联展示 -->
        laoShiSelectOne(ruleForm.laoshiId);


    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        banjiShowImg();
        kechengShowImg();
    }


    <!--  级联表的图片  -->

    function banjiShowImg() {
    }


    function kechengShowImg() {
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            banjiSelect();
            kechengSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            <!--  初始化级联表的下拉框  -->
            initializationbanjiSelect();
            initializationkechengSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') != '管理员') {
            $('#jifen').attr('readonly', 'readonly');
            //$('#money').attr('readonly', 'readonly');
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>