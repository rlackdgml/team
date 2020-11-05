<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>로그인</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <link href="static/css/login.css" rel="stylesheet" />
    <script src="main.js"></script>
  </head>

  <body>
    <div class="wrap">
      <img id="wrap-img" src="static/images/0.jpg" />
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
          <img src="static/images/fb.jpg" alt="facebook" />
          <img src="static/images/gl.jpg" alt="google" />
        </div>
        <form id="login" action="" class="input-group">
          <input
            type="text"
            class="input-field"
            placeholder="아이디"
            required=""
          />
          <input
            type="password"
            class="input-field"
            placeholder="비밀번호"
            required=""
          />

          <button class="submit">로그인</button>
        </form>
        <form id="register" action="" class="input-group">
          <input
            type="text"
            class="input-field"
            placeholder="아이디"
            required=""
          />
          <input
            type="email"
            class="input-field"
            placeholder="이메일"
            required=""
          />
          <input
            type="password"
            class="input-field"
            placeholder="비밀번호"
            required=""
          />

          <button class="submit">회원가입</button>
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
