<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="static/css/notice.css" rel="stylesheet" />
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
    <div class="dataTbl1">
      <table summary="공지사항 목록입니다.">
        <!--표의 제목-->
        <h2>공지사항</h2>

        <colgroup>
          <!--col태그는 표에서 하나 이상의 td태그에 대해 속성값을 정의-->
          <!-- 여기서는 각 열의 크기를 지정-->
          <col width="10%" />
          <col width="*" />
          <!--나머지 크기-->
          <col width="14%" />
        </colgroup>

        <!--테이블 머리말 부분-->
        <thead>
          <th scope="번호">번호</th>
          <th scope="제목">제목</th>
          <th scope="등록일">등록일</th>
        </thead>

        <!--테이블 내용 부분-->
        <tbody>
          <tr>
            <td>1</td>
            <td class="article"><a href="#none">공지사항 내용</a></td>
            <td>2020-10-16</td>
          </tr>
          <tr>
            <td>2</td>
            <td class="article">
              <strong><a href="#none">공지사항 내용</a></strong>
            </td>
            <td>2020-10-16</td>
          </tr>
          <tr>
            <td>3</td>
            <td class="article"><a href="#none">공지사항 내용</a></td>
            <td>2020-10-16</td>
          </tr>
          <tr>
            <td colspan="3">등록된 뉴스가 없습니다</td>
          </tr>
        </tbody>

        <!--테이블 꼬리말-->
        <tfoot></tfoot>
      </table>
    </div>
    <div class="container">
      <ul>
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
      </ul>
    </div>
</body>
</html>