<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>게시판</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <link href="static/css/main.css" rel="stylesheet" />
    <link href="static/css/board.css" rel="stylesheet" />
    <script src="main.js"></script>
  </head>

  <body>
    <h1>문화탐방</h1>
    <nav id="main-nav">
      <ul id="main-menu">
        <li><a href="list.html">고궁/성</a></li>
        <li><a href="list2.html">고택/생가</a></li>
        <li><a href="list3.html">유적지/사적지</a></li>
        <li><a href="k.html">공지사항</a></li>
        <li><a href="g.html">게시판</a></li>
        <li><a href="login.html">로그인</a></li>
      </ul>
    </nav>
    <header>
      <h2>게시판</h2>
    </header>
    <table class="table-striped">
      <thead>
        <tr>
          <th>번호</th>
          <th>작성자</th>
          <th>제목</th>
          <th>날짜</th>
          <th>조회수</th>
        </tr>
      </thead>

      <tbody>
        <tr>
          <td>1</td>
          <td>aaa</td>
          <td id="title">게시글</td>
          <td>2020-10-16</td>
          <td>2</td>
        </tr>
        <tr>
          <td>2</td>
          <td>bbb</td>
          <td id="title">게시글</td>
          <td>2020-10-16</td>
          <td>3</td>
        </tr>
        <tr>
          <td>3</td>
          <td>ccc</td>
          <td id="title">게시글</td>
          <td>2020-10-16</td>
          <td>3</td>
        </tr>
      </tbody>
    </table>
    <div class="container">
      <ul>
        <li><a>처음</a></li>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#">6</a></li>
        <li><a href="#">7</a></li>
        <li><a href="#">8</a></li>
        <li><a href="#">9</a></li>
        <li><a href="#">10</a></li>
        <li><a>끝</a></li>
      </ul>
    </div>
    <div class="btn">
      <button><a href="g_input.html">작성</a></button>
    </div>
  </body>
</html>
