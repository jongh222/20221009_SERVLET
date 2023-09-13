<header>
<%@ page import="example.*" %>
</header>
<%@ page contentType = "text/html;charset=utf-8" %>
<footer class="container">
    <p>&copy; 쇼핑몰 대표: 이종현, 고유번호: 20221009, 연락처: jongh22@sungkyul.ac.kr<br>
    <%
        ShopTime time = new ShopTime();
        %>
        오늘 날짜와 시간: <%=time.timenow() %>
    </p>
</footer>