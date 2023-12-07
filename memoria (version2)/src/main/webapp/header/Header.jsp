<%@page import="product.ProductDTO"%>
<%@page import="java.util.List"%>
<%@page import="product.ProductDAO"%>
<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
String role = (String)session.getAttribute("role");
String user = (String)session.getAttribute("user");

ProductDAO daoHeader = new ProductDAO();

List<ProductDTO> listProduct = daoHeader.getProductList();
%>

<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<style type="text/css">

/* 로고바 */
#logobar {
width : 100%;
height : 60px;
background-color : white;
position : fixed;
top : 0;
margin : 0;
z-index: 1;
}

#logobar > ul {
   list-style : none;
   margin-right : 50px;
}

#logobar > ul > li {
   float : right;
   margin-left : 15px;
   margin-top: 10px;
}
#logobar > ul > li > i{

	width : 50px;
	height : 50px;
	cursor : pointer;
}

.logo > img{
    width: 120px;
    height: 30px;
    display : block;
    margin-left : 47%;
    margin-top: 10px;

}

/* 네비바 */
#navbar {
   position : fixed;
   background-color : white;
   width : 100%;
   height : 60px;
   top : 60px;
   z-index: 1;   
   border-bottom : solid 1px lightgray;
}
#navbar > ul {
   list-style : none;
}

#navbar > ul > li {
   float : left;
   margin-left : 50px;
   margin-top : 15px;
   font-size: 12px;
   cursor: pointer;
}


#navbar > #mypage {
	position : absolute;
	width : 300px;
	height : 400px;
	background-color : rgba(255,255,255,0.5);
	right : 50px;
	top : -40px;
	text-align : center;
	border : solid 2px lightgray;
	border-radius : 20px;
	display : none;
	z-index : 3;
}

#loginbtn{
	width : 200px;
	height : 50px;
	margin-top : 100px;
}

#mypage > h2 {
margin-top : 100px;

}

/* 스크롤업 애니메이션 */
@keyframes logosilde {
   from {
   top : 0px;
   }
   to {
   top : -60px;
   }
}

@keyframes navsilde {
   from{
   top : 60px;
   }
   to{
   top : 0px;
   }
}

/* 스크롤업 애니메이션 */
@keyframes logodesilde {
   from {
   top : -60px;
   }
   to {
   top : 0px;
   }
}

@keyframes navdesilde {
   from{
   top : 0px;
   }
   to{
   top : 60px;
   }
 }
 
/* search */ 
#searchBar {
            display: none;
            border: none;
            z-index:2;
        }
#searchIcon {
            cursor: pointer;
        }

/*search result*/

.searchBarResult{
	border-style: solid;
	border-radius: 15px;
	z-index:5;
}
.list-item {
        display: none;
   		margin-right: 100px;
  		margin-left: 80%;
    }
.list-item > .item-name{
	float : right;
	margin-right: 10px;
	font-size: 15px
}
.list-item > .item-price{
	float : right;
	
}
.list-item > .item-img >img{
	float : right;
	width: 5%;
    height: 5%;
}

</style>
<script src="https://kit.fontawesome.com/0f39d0c4b4.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body>

<!-- 로고image -->
<header>
<div id="logobar">
      <ul>
   <% if (user==null){ %>
   <li onclick="location.href='../Login_Signup/Login_join.jsp'">
      <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
      <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
      </svg>
   </li>
   <% }else { %>
   <li onclick="location.href='../MyPage/MyPage.jsp'">
      <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
      <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
      </svg>
   </li>
   
   <li onclick="location.href='../payment/Cart.jsp'">
      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bag" viewBox="0 0 16 16">
      <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"/>
      </svg>
   <li>
   <%}%>
   <li>
      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16"  >
        <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
      </svg>
   </li>
   
   <!--  search bar -->
<li id="searchIcon" onclick="toggleSearchBar()">
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
    </svg>
</li>


<li>
<form method = "get" id="searchForm">
    <input type="search" id="searchBar" name = "searchWord" placeholder="상품이름 입력하세요..." onblur="hideSearchBar()" onkeyup="search()">
</form>
</li>




   
   <%if(role!= null && role.equals("admin")){ %>
   <li onclick="location.href='../Admin/AdminPage.jsp'">
   <i class="fa-solid fa-user-tie" style="color: #000000"></i>
   </li>
   <%} %>
   </ul>
   <div class="logo">
       <img alt="로고" src="../Main-image/로고.png" onclick="location.href='../Main/PerfumeMain.jsp'">
    </div>
</div>

<div id="navbar">
<ul>
<li onclick="location.href='../productList/productList_test.jsp'">향수</li>
<li onclick="location.href='../Board/PerfumeDIYBoard.jsp'">나만의 커스텀</li>
</ul>
   <div id="mypage">
   <h2>마이페이지</h2>
   </div>
</div>

<!--메뉴바 생성 -->
</header>

<!--  result bar -->
<div class =searchBarResult>
<%
      for(ProductDTO dto : listProduct) {
   		%>
      
        <div class=list-item onclick="location.href='../Board/detailPage.jsp?pid=<%=dto.getP_id()%>'">
            <div class="item-img">
                 <img src="../productimg/<%=dto.getP_id()+".png"%>">
            </div>
            <div class="item-name">
                <i class = "ename"><%=dto.getP_ename() %></i>
                <i class = "kname"><%=dto.getP_kname() %></i>
            </div>
            <div class="item-price">
                <h4>₩<%=dto.getP_price() %></h4>    
            </div>
        </div>
        <%} %>
</div>

<script>
var logobar = document.getElementById('logobar');
var navbar = document.getElementById('navbar');
window.addEventListener("scroll",function(){
   if (window.scrollY >= 200) {
      logobar.style.animation = "logosilde 0.5s ease-out forwards";
      navbar.style.animation = "navsilde 0.5s ease-out forwards";
   }else if(window.scrollY <= 200) {
      logobar.style.animation = "logodesilde 0.5s ease-out forwards";
      navbar.style.animation = "navdesilde 0.5s ease-out forwards";
   }
   
})

function toggleSearchBar() {
       var searchBar = document.getElementById("searchBar");
       var searchIcon = document.getElementById("searchIcon");

       if (searchBar.style.display === 'none' || searchBar.style.display === '') {
           searchBar.style.display = 'block';
           searchIcon.style.opacity = 0;
           search();
       } else {
           searchBar.style.display = 'none';
           searchIcon.style.opacity = 1;
       }
   }
   function hideSearchBar() {
       var searchBar = document.getElementById("searchBar");
       var searchIcon = document.getElementById("searchIcon");

       searchBar.style.display = 'none';
       searchIcon.style.opacity = 1;
       
       var searchbox = document.getElementById("searchBar").value.toUpperCase();
	   var container = document.querySelector('.searchBarResult');
	   var products = container.querySelectorAll('.list-item');
       
       products.forEach(function(product) {
           product.style.display = "none";
       });
   }
   
   function search() {
	    var searchbox = document.getElementById("searchBar").value.toUpperCase();
	    var container = document.querySelector('.searchBarResult');
	    var products = container.querySelectorAll('.list-item');

	    products.forEach(function(product) {
	        var itemName = product.querySelector('.item-name');
	        var kname = itemName.querySelector('.kname').innerText;
	        var ename = itemName.querySelector('.ename').innerText;

	        if (kname.toUpperCase().indexOf(searchbox) > -1 || ename.toUpperCase().indexOf(searchbox) > -1 ) {
	            product.style.display = "block";
	        } else {
	            product.style.display = "none";
	        }

	    });
	    if (searchbox === "") {
	        // If the search box is empty, hide all products
	        products.forEach(function(product) {
	            product.style.display = "none";
	        });
	    }

	    console.log(searchbox);
	}


</script>
</body>
</html>