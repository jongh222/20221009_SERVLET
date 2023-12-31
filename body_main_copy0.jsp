<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

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
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
                <div class="card bg-dark text-black">
                    <img src="/image/product/<%=product.getFilename()%>" class="card-img" alt="...">
                         <div class="card-img-overlay">
                             <h5 class="card-title">
                                 그래픽 카드 이미지 샘플
                             </h5>
                             <p class="card-text text-white">
                                 출처: 구글 검색
                             </p>
                    </div>
                </div>
				<h3><%=product.getPname()%></h3>
                <p><%=product.getDescription()%>
                <p><%=product.getUnitPrice()%>원</p>
                <p><a href="product_detail.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button">상품 상세 정보 &raquo;</a>
            </div>
			<%
				}
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