<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>
<%@ include file="db/db_conn.jsp"%>

<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting="꾸팡.com에 방문하신걸 환영합니다";
    String tagline="하단 페이지: 확인";%>
    <div class="container">
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-4">
				<%=greeting%>
            </h3>
		</div>
	</div>
<%
        ProductRepository dao=ProductRepository.getInstance();
        ArrayList<Product> listOfProducts=dao.getAllProducts();
%> 	
<div class="container">
		<div class="row" align="center">
			<%
            String sql = "select * from product";
            pstmt=conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
			%>
			<div class="col-md-4">
                <div class="card bg-dark text-black">
                    <img src="/image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                         <div class="card-img-overlay">
                             <h5 class="card-title">
                                 그래픽 카드 이미지 샘플
                             </h5>
                             <p class="card-text text-white">
                                 출처: 구글 검색
                             </p>
                    </div>
                </div>
                <h3><%=rs.getString("p_name")%></h3>
                <p><%=rs.getString("p_description")%>
                <p><%= rs.getString("p_UnitPrice")%>원
                <p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button">상품 상세 정보 &raquo;</a>
            </div>
            <%
            }
            if (rs!= null)
                rs.close();
            if (pstmt != null)
                pstmt.close();
            if (conn != null)
                conn.close();
            %>
        </div>
    <hr>
	</div>
    <hr>
    </div>
    <div class="card bg-dark text-white">
    <img src="/image/gpu.jpg" class="card-img" alt="...">
    <div class="card-img-overlay">
        <h5 class="card-title">
            그래픽 카드 이벤트
        </h5>
        <p class="card-text">
            출처: 다나와
        </p>
    </div>
</div>
<div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
    MSI 지포스 RTX 30 시리즈
    </a>
    <a href="#" class="list-group-item list-group-item-action">
    MSI 지포스 RTX 40 시리즈
    </a>
    <a href="#" class="list-group-item list-group-item-action">
    MSI 라데온 RX 6000 시리즈
    </a>
</div>