<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
 <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>고택/생가</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script src="main.js"></script>
    <link href="static/css/list.css" rel="stylesheet" />
    <link href="static/css/menu.css" rel="stylesheet" />
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

    <div>
      <div class="searchUtill">
        <p><strong>총 데이터 수</strong><span id="number">9</span>개</p>
        <hr />

        <div>
          <select name="arrange" id="arrange" title="정렬항목 선택">
            <option value="NEW" selected="">최신순</option>
            <option value="TITLE">제목순</option>
            <option value="LOC">지역순</option>
            <option value="READCOUNT">인기순</option>
            <option value="IMAGE">사진순</option>
          </select>
          <button id="btn1">보기</button>

          <select name="numofpage" id="numofpage" title="정렬개수 선택">
            <option value="10">10개씩 보기</option>
            <option value="20" selected="">20개씩 보기</option>
            <option value="30">30개씩 보기</option>
            <option value="40">40개씩 보기</option>
            <option value="50">50개씩 보기</option>
          </select>
          <button id="btn1">보기</button>
        </div>
      </div>
    </div>
    <section id="search-list">
      <div id="search-div">
        <h2>충주고구려비전시관</h2>
        <img src="static/images/13.jpg" align="left" />
        <p>
          계백 장군이 전장에 나서기 전, 가족이 적에게 붙잡혀 노비가 될 것을
          염려해 죽였다는 설과 포로가 된 신라 화랑 관창을 살려 보낸 일화가
          황산벌 전투 당시 이야기다. 계백 장군이 전사한 곳으로 알려진 부적면
          충곡로에 장군과 5000결사대를 기리는 계백장군유적지가 있다. 묘와 사당,
          충혼공원, 백제군사박물관, 야외 체험 시설 등으로 구성되어 역사 학습을
          겸한 나들이 코스로 제격이다. 백제군사박물관을 관람하고 나머지 시설을
          둘러보면 좋다.
        </p>
      </div>
    </section>
  </body>
</html>
