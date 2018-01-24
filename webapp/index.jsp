<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<title>优为尔后台登陆</title>

<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/index.css">

</head>

<body>
<div style="position:absolute; left:0; top:0; width:100%; height:100%;z-index:-1"><img src="img/bg.jpg" width="100%" height="100%" /></div>
<!-- <div class="login-box"> -->
  <div class="login">
    <h1>优为尔后台登陆</h1>
    <form action="login" id="form" method="post">
      <div class="input-group">
        <span class="input-group-addon"><img src="img/indexUser.png"></span>
        <input type="text" class="form-control" name="username" id="username" placeholder="用户名">
      </div>
      <div class="input-group">
        <span class="input-group-addon"><img src="img/indexPwd.png"></span>
        <input type="password" class="form-control" name="password" id="password" placeholder="密码">
      </div>
<!--       <div class="input-group">
        <input type="text" id="codeInput" class="codeInput form-control" placeholder="输入验证码" required="required" style="width: 220px;" />
        <input type="button" id="code" class="btn btn-default" onclick="createCode()" title='点击更换验证码'/>
      </div> -->
      <button type="button" class="btn btn-primary btn-block btn-large" value="登录" id="login">登录</button>
    </form>
  </div>
<!-- </div> -->

<script src="vendor/jquery.min.js"></script>
<!-- <script src="vendor/jquery.cookie.js"></script> -->
<script src="vendor/layer/layer.min.js"></script>
<script src="vendor/md5.js"></script>
<!-- <script src="../js/ajax.js"></script> -->
<script src="js/public.js"></script>
<script src="js/index/index.js"></script>

<script type="text/javascript">
</script> 



</body>
</html>
