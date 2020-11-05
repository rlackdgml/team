<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="static/css/input.css" rel="stylesheet" />
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
    
    <form id="write-form">
      <fieldset>
         <legend>글쓰기</legend>
         <div>
            <label>작성일자</label>
            <input name="b_date">
         </div>
         <div>
            <label>작성시각</label>
            <input name="b_time">
         </div>
         <div>
            <label>글쓴이</label>
            <input name="b_writer">
         </div>
         
         <div>
            <label>제목</label>
            <input name="b_subject">
         </div>
         <div>
            <label></label>
            <textarea id="b_content" rows="5" cols="20"></textarea>
            
         </div>
         <div class="button-box">
           <button type="button" id ="list">리스트</button>
           <button type="button" id ="save">저장</button>
         
         </div>
      </fieldset>
   </form>
   <script>
    $(function(){
      var toolbar = [
        ['style',['bold','italic','underline'] ],
        ['fontsize',['fontsize']],
        ['font Style',['fontname']],
        ['color',['color']],
        ['para',['ul','ol','paragraph']],
        ['height',['height']],
        ['table',['table']],
        ['insert',['link','hr','picture']],
        ['view',['fullscreen','codeview']]
        
      ]
      
      $("#b_content").summernote({lang:"ko-KR", 
                    width:"80%", 
                    height:"200px",
                    toolbar : toolbar
                  });
    })
  </script>
</body>
</html>