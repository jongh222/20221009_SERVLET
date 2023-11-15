<%@ page contentType = "text/html;charset=utf-8" %>
<nav class="navbar navbar-expand navbar-white bg-white">
    <div class="dropdown">
        
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
        카테고리
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="#">CPU</a>
            <a class="dropdown-item" href="#">RAM</a>
            <a class="dropdown-item" href="#">GPU</a>
            <a class="dropdown-item" href="#">PSU</a>
        </div>
    </div>
    <div>
        <a href="/index.jsp"><img src="/image/logo.png" class="img-fluid" alt="main_image"></a>
    </div>
    
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="index_ad.jsp">상품목록(기본 홈)</a>
            <a class="navbar-brand" href="">회원보기/추가/수정/삭제</a>
            <a class="navbar-brand" href="">상품보기</a>
            <a class="navbar-brand" href="product_add.jsp">등록</a>
            <a class="navbar-brand" href="index_ad.jsp">수정/삭제</a>
            <a class="navbar-brand" href="../index.jsp">일반모드</a>
            <a class="navbar-brand" href="/login/logout.jsp">로그아웃</a>
        </div>
    </div>
</nav>