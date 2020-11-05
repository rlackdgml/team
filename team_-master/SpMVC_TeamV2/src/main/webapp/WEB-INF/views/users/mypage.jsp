<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
         <c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name='viewport' content='width=device-width, initial-scale=1'>
<title>나의 홈페이지</title>
</head>
    <style>
    .member {
  font-size: 50px;
  text-shadow: 0 0 10px #666;
  color: blue;
  margin: 0 auto;
  text-align: center;
  text-transform: capitalize;
  font-family: "맑은 고딕";
  font-style: italic;
}

body {
  font-family: "맑은 고딕";
  font-size: 12px;
}

.form {
  width: 498px;
  height: 300px;
  border-radius: 25px;
  border: 5px double #999;
  margin: 30px auto;
  box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.5);
}

.form2 {
  width: 380px;
  min-width: 320px;
  height: 200px;
  margin: 60px auto;
  margin-left: 20px;
}

.form3 {
  float: left;
  /*   background:#f00;  */
}

.form3 label {
  width: 100px;

  /*  display: block; */
  float: left;
}

.form4 {
  padding: 0px 0px 0px 70px;
}

#wrap {
  width: 600px;
  height: 500px;
  margin: 0 auto;
}

.clear {
  clear: both;
}
label {
  padding: 3px;
  margin: 10px;
}
input#user {
  padding: 3px;
  margin: 10px;
  box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.5);
  border-bottom: 1px solid;
}
#team-button-box button {
  background-color: blue;
  padding: 10px 18px;
  color: whitesmoke;
  font-weight: bold;
  border-radius: 5px;
  margin: 10px;
  cursor: pointer;
  float: right;
  outline: 0;
  border: 0;
}

    </style>
  </head>
  <body>
    <form>
      <div id="wrap">
        <h1 class="member">My Page</h1>

        <div class="form">
          <div class="form2">
            <div class="form3">
              <label for="user">아이디</label><input type="text" id="user" />
              <div class="clear"></div>

              <label for="user">변경할 비밀번호</label
              ><input type="password" id="user" />

              <label for="user">비밀번호확인</label
              ><input type="password" id="user" />
              <div id="team-button-box">
                <button class="btn">저장</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </form>
  </body>
</html>
