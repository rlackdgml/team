<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />        
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>home</title>
<style>

* {
  margin: 0;
  padding: 0;
  font-family: sans-serif;
}

.wrap,
#wrap-img {
  height: 100%;
  width: 100%;
  background-position: center;
  background-size: cover;
  position: absolute;
}
.form-wrap {
  width: 380px;
  height: 480px;
  position: relative;
  margin: 6% auto;
  background: #fff;
  padding: 5px;
  overflow: hidden;
  animation-name: login_box_top_down;
  animation-duration: 1s;
}
.button-wrap {
  width: 230px;
  margin: 35px auto;
  position: relative;
  box-shadow: 0 0 600px 9px #fcae8f;
  border-radius: 30px;
}
.togglebtn {
  padding: 10px 30px;
  cursor: pointer;
  background: transparent;
  border: 0;
  outline: none;
  position: relative;
}
#btn {
  top: 0;
  left: 0;
  position: absolute;
  width: 110px;
  height: 100%;
  background: linear-gradient(to right, #2bd8d8, #e0f804);
  border-radius: 30px;
  transition: 0.5s;
}
.social-icons {
  margin: 30px auto;
  text-align: center;
}
.social-icons img {
  width: 30px;
  cursor: pointer;
}
.input-group {
  top: 180px;
  position: absolute;
  width: 280px;
  transition: 0.5s;
}
.input-field {
  width: 100%;
  padding: 10px 0;
  margin: 5px 0;
  border: none;
  border-bottom: 1px solid #999;
  outline: none;
  background: transparent;
}
.submit {
  width: 85%;
  padding: 10px 30px;
  cursor: pointer;
  display: block;
  margin: auto;
  background: linear-gradient(to right, #2bd8d8, #e0f804);
  border: 0;
  outline: none;
  border-radius: 30px;
}
.checkbox {
  margin: 30px 10px 30px 0;
}
span {
  color: #777;
  font-size: 12px;
  bottom: 68px;
  position: absolute;
}
#login {
  left: 50px;
}
#register {
  left: 450px;
}
@keyframes login_box_top_down {
  from {
    top: -300px;
    opacity: 0;
  }
  to {
    top: 120px;
    opacity: 1;
  }
}


</style>
<script>
 $(function(){
	$("#btn-login").click(function(){
		document.location.href = "${rootPath}/team/list/1"
	}) 
 })
 
 
</script>
</head>
<body>
<div class="wrap">
      <img id="wrap-img" src="${rootPath}/resources/imga/0.jpg" />
      <div class="form-wrap">
        <div class="button-wrap">
          <div id="btn"></div>
          <button type="button" class="togglebtn" onclick="login()">
            로그인
          </button>
          <button type="button" class="togglebtn" onclick="register()">
            회원가입
          </button>
        </div>
        <div class="social-icons">
          <img src="${rootPath}/resources/imga/fb.jpg" alt="facebook" />
          <img src="${rootPath}/resources/imga/gl.jpg" alt="google" />
        </div>
        
        
        <form id="login" class="input-group" action="${rootPath}/login" method="POST">
         
         
         <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
		
		<h4 id="login-fail">${SPRING_SECURITY_LAST_EXCEPTION.message}</h4>
		<c:remove var="SPRING_SECURITY_LAST_EXCEPTION" scope="session"/>
		</c:if>
        
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
         
          <input
            type="text"
            class="input-field"
           	name="username" 
            placeholder="아이디"
          />
          <input
            type="password"
            class="input-field"
            placeholder="비밀번호"
          />
    

          <button class="submit" id="btn-login" >로그인</button>
        </form>
        <form id="register" class="input-group">
        
        
		
          <input
            type="text"
            class="input-field"
            placeholder="아이디"
            required="required"
          />
         
          <input
            type="password"
            class="input-field"
            name="password"
            placeholder="비밀번호"
            
          />
                  <input
            type="password"
            class="input-field"
            placeholder="비밀번호확인"
          
          />

          <button class="submit" >회원가입</button>
        </form>
      </div>
    </div>
    <script>
      var x = document.getElementById("login");
      var y = document.getElementById("register");
      var z = document.getElementById("btn");

      function login() {
        x.style.left = "50px";
        y.style.left = "450px";
        z.style.left = "0";
      }

      function register() {
        x.style.left = "-400px";
        y.style.left = "50px";
        z.style.left = "110px";
      }
    </script>
  </body>
</html>