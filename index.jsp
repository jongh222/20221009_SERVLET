<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="example.*" %>
<%@ page import="java.util.Date"%>
<%  HelloWorld h = new HelloWorld(); %>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <title>웹마켓</title>
    </head>
        <body> <%--JSP 주석 처리--%>
            <nav class="navbar navbar-expand navbar-dark bg-dark">
                <div class="container">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="./index.jsp">홈</a>
                    </div>
                </div>
            </nav>
</body>	
    <%-- CLASS는 스타일 적용시에 사용되는 이름, 중첩 가능함 --%>
    <%! String greeting="웹 쇼핑몰에 방문하신걸 환영합니다!";
    String tagline="웹마켓에 어서오세요!";%>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">
                <%=greeting%>
            </h1>
        </div>
    </div>
    <div class="container">
        <div class="text-center">
            <h3>
               <%=tagline%>
            </h3>
        </div>
        <hr>
    </div>
    <footer class="container">
    <p>
        &copy; 웹마켓
        </p>
        <%
        Date day = new java.util.Date();
        String am_pm;
        int hour = day.getHours();
        int minute=day.getMinutes();
        int second = day.getSeconds();
        if(hour/12==0){
            am_pm="AM";
        }else{
            am_pm="PM";
            hour=hour-12;
        }
        String CT=hour+":"+minute+":"+second+" "+am_pm;
        out.println("현재 접속 시각: "+CT+"\n");
        %>
    </footer>
</html>
