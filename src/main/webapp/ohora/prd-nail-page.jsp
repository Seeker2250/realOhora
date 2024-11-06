<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오호라</title>
<link rel="shortcut icon" type="image/x-icon"
	href="http://localhost/jspPro/images/SiSt.ico">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
<link rel="stylesheet" href="../resources/cdn-main/prd-page.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<script
	src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
span.material-symbols-outlined {
	vertical-align: text-bottom;
}
</style>
<style>
.alert-box {
	background-color: skyblue;
	padding: 20px;
	color: white;
	border-radius: 5px;
	display: none;
}
</style>

<style>
.popup-wrap {
	background-color: #fff;
	justify-content: center;
	align-items: center;
	position: fixed;
	top: 100px;
	left: 300px;
	right: 200px;
	bottom: 1200px;
	display: none; /* 이벤트가 발생할 때 띄우기 위해 숨김 */
	padding: 15px;
	align-items: center;
	justify-content: center;
}

.popup {
	width: 100%; /*  반응형 이기 때문에 가로값은 100% */
	max-width: 400px; /*  팝업의 최대 크기지정 */
	border: 1px solid #eeeeee;
	border-radius: 10px; /*  둥글둥글한 디자인을 위해 각을 없앱니다. */
	overflow: hidden; /*  각을 없앴을 때 내부 영역이 튀어나오는걸 방지 */
	background-color: #ffffff;
	box-shadow: 5px 10px 10px 1px rgba(0, 0, 0, .3); /* 그림자 효과. */
}

.popup-head {
	width: 100%;
	height: 50px;
	display: flex;
	align-items: center;
	justify-content: center;
}
</style>
</head>
<body>

	<%@include file="header.jsp"%>

	<div id="first-wrap">
		<div id="cate-layout">
			<div id="cate-wrap">
				<div id="cate_name">
					<ul>
						<li>전체상품</li>
					</ul>
				</div>

				<div id="cate_list">

					<ul class="menu_1ul" style="display: none">
						<li class="selected-menu-1" id="selected-menu-all"><a
							href="#">전체상품</a></li>
						<li id="selected-menu-nail"><a href="#">베스트</a></li>
						<li id="selected-menu-strip"><a href="#">신상품</a></li>
						<li id="selected-menu-care"><a href="#">outlet</a></li>
					</ul>

					<ul class="menu_2ul">
						<li class="selected-menu-2" id="selected-menu-all"><a
							href="#">ALL</a></li>
						<li id="selected-menu-nail"><a href="#">네일</a></li>
						<li id="selected-menu-strip"><a href="#">페디</a></li>
						<li id="selected-menu-care"><a href="#">케어&amp;툴</a></li>
					</ul>

					<ul class="menu_3ul" style="display: none">
						<li class="selected-menu-3 selected submenu"><a href="#">ALL</a></li>
						<li class="selected-menu-3"><a href="#">케어&amp;툴</a></li>
						<li class="selected-menu-3"><a href="#">커스텀</a></li>
					</ul>

				</div>


			</div>
		</div>
	</div>


	<script>
				// 모든 메뉴 항목을 선택합니다
				var menuItems = document.querySelectorAll("#cate_list ul li");
	
				// 각 메뉴 항목에 대해 클릭 이벤트를 추가합니다
				menuItems.forEach(function(item) {
					item.addEventListener("click", function(e) {
						e.preventDefault();
	
						// 기존 selected-menu 클래스를 제거합니다
						document.querySelector(".selected-menu-2").classList
								.remove("selected-menu-2");
	
						// 클릭된 항목에 selected-menu 클래스를 추가합니다
						this.classList.add("selected-menu-2");
	
						// 상단의 카테고리 이름을 업데이트합니다
						document.querySelector("#cate_name ul li").innerText = document.querySelector(".selected-menu-1").innerText;
					});
				});
			</script>

	</div>
	</div>
	<div id="mainImg_layout">
		<div id="banner-image-wrap">
			<img src="//ohora.kr/web/upload/category/shop1_44_top_718895.jpg"
				alt="메인이미지" />
		</div>
	</div>
	</div>
	<!--위 div-->

	<div id="second-wrap">
		<div id="second-wrap-layout">
			<div id="sort-menu-wrap">
				<div id="sort-type-wrap">
					<div id="select-sort-wrap">
						<span class="selected-type">정렬방식</span>
						<ul class="sort_type_list" style="display: none;">
							<li class="sort-way"><a href="">신상품</a></li>
							<li class="sort-way"><a href="">인기상품</a></li>
							<li class="sort-way"><a href="">조회수</a></li>
						</ul>
						<script>
								document
										.querySelector(".selected-type")
										.addEventListener(
												"click",
												function() {
													let st = document
															.querySelector(".sort_type_list");
													if (st.style.display == "none") {
														st.style.display = "block";
													} else {
														st.style.display = "none"
													}
												});
							</script>
					</div>

					<button type="button" id="my-design">내가 원하는 디자인 찾기</button>
				</div>
			</div>

			<div id="custom-filter-wrap">
				<div class="swiper-container" id="custom-filter">
					<ul class="swiper-wrapper">

						<li class="swiper-slide"><a href="">젤네일팁 <input
								type="checkbox" name="filter" id="custom-filter-젤네일팁" /> <label
								for="custom-filter-젤네일팁"></label>
						</a></li>
						<li class="swiper-slide"><a href="">숏 <input
								type="checkbox" name="filter" id="custom-filter-숏" /> <label
								for="custom-filter-숏"></label>
						</a></li>
						<li class="swiper-slide"><a href="">미디엄 <input
								type="checkbox" name="filter" id="custom-filter-미디엄" /> <label
								for="custom-filter-미디엄"></label>
						</a></li>
						<li class="swiper-slide"><a href="">롱 <input
								type="checkbox" name="filter" id="custom-filter-롱" /> <label
								for="custom-filter-롱"></label>
						</a></li>
						<li class="swiper-slide"><a href="">데일리 <input
								type="checkbox" name="filter" id="custom-filter-데일리" /> <label
								for="custom-filter-데일리"></label>
						</a></li>
						<li class="swiper-slide"><a href="">풀컬러 <input
								type="checkbox" name="filter" id="custom-filter-풀컬러" /> <label
								for="custom-filter-풀컬러"></label>
						</a></li>
						<li class="swiper-slide"><a href="">웨딩 <input
								type="checkbox" name="filter" id="custom-filter-웨딩" /> <label
								for="custom-filter-웨딩"></label>
						</a></li>
						<li class="swiper-slide"><a href="">시럽 <input
								type="checkbox" name="filter" id="custom-filter-시럽" /> <label
								for="custom-filter-시럽"></label>
						</a></li>
						<li class="swiper-slide"><a href="">파츠 <input
								type="checkbox" name="filter" id="custom-filter-파츠" /> <label
								for="custom-filter-파츠"></label>
						</a></li>
						<li class="swiper-slide"><a href="">무채색 <input
								type="checkbox" name="filter" id="custom-filter-무채색" /> <label
								for="custom-filter-무채색"></label>
						</a></li>
						<li class="swiper-slide"><a href="">키치 <input
								type="checkbox" name="filter" id="custom-filter-키치" /> <label
								for="custom-filter-키치"></label>
						</a></li>
						<li class="swiper-slide"><a href="">드로잉 <input
								type="checkbox" name="filter" id="custom-filter-드로잉" /> <label
								for="custom-filter-드로잉"></label>
						</a></li>
						<li class="swiper-slide"><a href="">마블 <input
								type="checkbox" name="filter" id="custom-filter-마블" /> <label
								for="custom-filter-마블"></label>
						</a></li>
						<li class="swiper-slide"><a href="">자개 <input
								type="checkbox" name="filter" id="custom-filter-자개" /> <label
								for="custom-filter-자개"></label>
						</a></li>
						<li class="swiper-slide"><a href="">글리터 <input
								type="checkbox" name="filter" id="custom-filter-글리터" /> <label
								for="custom-filter-글리터"></label>
						</a></li>
					</ul>
				</div>
				<div id="swiper-button-prev"></div>
				<div id="swiper-button-next"></div>

				<script>
						// Swiper 초기화
						const swiper = new Swiper(".swiper-container", {
							slidesPerView : 'auto', // 여러 슬라이드가 한 화면에 보이도록 설정
							spaceBetween : 8, // 슬라이드 간격
							navigation : {
								nextEl : "#swiper-button-next",
								prevEl : "#swiper-button-prev",
							},
						});
					</script>

				<script>
		               document.querySelectorAll('.swiper-slide a').forEach(link => {
		            	    link.style.pointerEvents = 'auto'; // 초기화 시 활성화
		
		            	    link.addEventListener('click', function(event) {
		            	        event.preventDefault();
		
		            	        // 체크박스 토글
		            	        const checkbox = link.querySelector('input[type="checkbox"]');
		            	        checkbox.checked = !checkbox.checked; // 체크박스 상태 토글
		
		            	        // 색상 토글
		            	        if (link.style.backgroundColor === 'black') {
		            	            link.style.backgroundColor = '';
		            	            link.style.color = '';
		            	        } else {
		            	            link.style.backgroundColor = 'black';
		            	            link.style.color = 'white';
		            	        }
		            	    });
		            	});
	               </script>

			</div>

			<div id="item-list-wrap">
				<div id="item-list">
					<ul id="item-list-ul">
						<!--상품 하나마다 li 하나씩 복붙-->

						<c:choose>
							<c:when test="${ empty list }">
								<li>No Data</li>
							</c:when>
							<c:otherwise>
								<c:forEach items="${ list }" var="pdt" varStatus="status">


									<li id="itembox${ status.index + 1 }" class="item-wrap">
										<div class="item-container">
											<dl>
												<a href="" class="item-viewlink"></a>
												<div class="item-image">
													<img src="../resources/images/prd_image/마롱네일1jpg.jpg"
														alt="" width="800" height="800" /> <img
														src="../resources/images/prd_image/마롱네일2.jpg" alt=""
														width="800" height="800" />
												</div>
												<div class="item-info">
													<dd class="name-container">
														<p class="item-name">${pdt.pdt_name}</p>
													</dd>
													<dd class="price-container">
														<c:choose>
															<c:when test="${pdt.pdt_discount_rate != 0}">
																<p class="dcRate">${pdt.pdt_discount_rate}%</p>
																<p class="sale-price">
																	<fmt:formatNumber value="${pdt.pdt_discount_amount}"
																		type="number" pattern="#,##0" />
																</p>
																<p class="normal-price">
																	<fmt:formatNumber value="${pdt.pdt_amount}"
																		type="number" pattern="#,##0" />
																</p>
															</c:when>
															<c:otherwise>
																<p class="dcRate"></p>
																<p class="sale-price">
																	<fmt:formatNumber value="${pdt.pdt_amount}"
																		type="number" pattern="#,##0" />
																</p>
																<p class="normal-price"></p>
															</c:otherwise>
														</c:choose>
													</dd>
													<div class="review-container">
														<p class="rvCount-wrap">
															<span class="rvCount">${pdt.pdt_review_count}</span>
														</p>
													</div>
													<div class="cart-in">
														<img src="../image/btn_list_cart.gif"
															data-pdtid="${pdt.pdt_id}" alt="" />
													</div>
												</div>
											</dl>
										</div>
									</li>
								</c:forEach>
							</c:otherwise>
						</c:choose>

					</ul>
				</div>

				<!-- 장바구니 알림 모달창 -->
				<div class="container">
					<div class="popup-wrap" id="popup">
						<div class="popup">
							<div class="popup-head">
								<span class="head-title"><img
									src="/projectOhora/resources/images/cart_image/icon_cart_gray.png">
									장바구니에 상품을 담았습니다.</span>
							</div>
						</div>
					</div>
				</div>

				<!-- <div class="alert-box" id="alert">알림창 입니다.</div>
				    <button onclick="alertOpen()">확인</button>
				    <button onclick="alertClose()">취소</button> -->

				<script>
					 // 상품 페이지의 JavaScript에서 실행
					    function setProductIdCookie(pdtid) {
					        // 쿠키에 pdt_id 값을 저장 (유효 기간은 1시간으로 설정)
					        document.cookie = "pd_tid=" + pd_tid + "; path=/; max-age=" + (1 * 60 * 60);
					    }
		
					    // 예: pdt_id가 101인 경우 쿠키에 저장
					    setProductIdCookie($(this).data("pdtid")); // 받아온 상품번호를 쿠키에 저장
	
				    </script>

				<script>
	
				        /* function alertOpen() {
				            document.getElementById('alert').style.display = 'block';
				        }
				        function alertClose() {
				            document.getElementById('alert').style.display = 'none';
				        } */
				
				    </script>


				<script>
				$("div.cart-in img").on("click", function(event) {
				    let clickedPdtId = $(this).data("pdtid");
				    console.log("클릭 상품 ID:", clickedPdtId);
				    
				    // 상품 정보 가져오기
				    let $productInfo = $(this).closest('.item-container');
				    let price = $productInfo.find('.sale-price').text().replace(/[^0-9]/g, '');
				    
				    // 현재 시간 
				    let currentTime = new Date().getTime();
				    
				    // 장바구니 쿠키 확인
				    let basketItems = getCookie("basketItems");
				    let items = basketItems ? JSON.parse(basketItems) : [];
				    console.log("현재 장바구니:", items);
				    
				    // 이미 담긴 상품인지 확인  
				    let existingItem = items.find(item => item.id === String(clickedPdtId));
				    if(existingItem) {
				        // 이미 있는 상품이면 수량만 증가
				        if(confirm("장바구니에 동일한 상품이 있습니다.\n수량을 추가하시겠습니까?")) {
				            existingItem.quantity = (existingItem.quantity || 1) + 1;
				            document.cookie = "basketItems=" + JSON.stringify(items) + "; path=/";
				            alert("수량이 추가되었습니다.");
				        }
				        return;
				    }
				    
				    // 새 상품 정보 객체
				    let newItem = {
				        id: String(clickedPdtId),
				        price: price,
				        quantity: 1,  // 처음 담을 때는 수량 1
				        addedTime: currentTime
				    };
				    
				    // 배열에 추가
				    items.push(newItem);
				    
				    // 쿠키에 JSON 문자열로 저장
				    document.cookie = "basketItems=" + JSON.stringify(items) + "; path=/";
				    
				    // 총 상품 개수 계산
				    let totalQuantity = items.reduce((sum, item) => sum + (item.quantity || 1), 0);
				    
				    // 카운트 업데이트
				    $(".count.EC-Layout-Basket-count").text(totalQuantity);
				    
				    // 모달창 표시
				    $("#popup").fadeIn(500).delay(1000).fadeOut(500);
				});

				// 쿠키 조회 함수 
				function getCookie(name) {
				    let matches = document.cookie.match(new RegExp(
				        "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
				    ));
				    return matches ? decodeURIComponent(matches[1]) : undefined;
				}

				// 장바구니 정보 확인용
				function showBasketItems() {
				    let items = getCookie("basketItems");
				    if(items) {
				        let parsedItems = JSON.parse(items);
				        parsedItems.forEach(item => {
				            console.log("상품ID:", item.id);
				            console.log("가격:", item.price);
				            console.log("수량:", item.quantity);
				            console.log("담은 시간:", new Date(item.addedTime));
				            console.log("---------------");
				        });
				    }
				}

				// 페이지 로드시 장바구니 카운트 업데이트
				$(document).ready(function() {
				    let basketItems = getCookie("basketItems");
				    if(basketItems) {
				        let items = JSON.parse(basketItems);
				        let totalQuantity = items.reduce((sum, item) => sum + (item.quantity || 1), 0);
				        $(".count.EC-Layout-Basket-count").text(totalQuantity);
				    }
				});
		            </script>

				<div id="page-container">
					<a href="" class="first">first</a> <a href="" class="prev">prev</a>
					<ol>
						<li class="on"><a href="#" class="this">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">6</a></li>
						<li><a href="#">7</a></li>
						<li><a href="#">8</a></li>
						<li><a href="#">9</a></li>
						<li><a href="#">10</a></li>
					</ol>
					<a href="" class="next">next</a> <a href="" class="last">last</a>
				</div>

				<script>
						var pageLinks = document
								.querySelectorAll("#page-container ol li a");
						var pageItems = document
								.querySelectorAll("#page-container ol li");
	
						pageLinks.forEach(function(link) {
							link.addEventListener("click", function(e) {
								e.preventDefault();
	
								// 모든 li에서 on 클래스 제거
								pageItems.forEach(function(item) {
									item.classList.remove("on");
								});
	
								// 모든 a 태그에서 this 클래스 제거
								pageLinks.forEach(function(pageLink) {
									pageLink.classList.remove("this");
								});
	
								// 클릭된 링크에 this 클래스 추가
								this.classList.add("this");
	
								// 클릭된 링크의 부모 li에 on 클래스 추가
								this.parentElement.classList.add("on");
							});
						});
					</script>

			</div>
		</div>
	</div>
	<!--아래 div-->





	<div id="third-wrap";>
		<form class="side-filter-main" action="" method="get">
			<div id="searchArea" ; style="height: 919px; display: none;">
				<h1 id="side-title">
					내가 원하는 디자인 찾기 <span> <img
						src="../resources/images/close_icon.png" alt="" />
					</span>
				</h1>

				<script>
						document
								.querySelector("#my-design")
								.addEventListener(
										"click",
										function() {
											document.querySelector("#searchArea").style.display = "block";
										})
	
						document
								.querySelector("#side-title span")
								.addEventListener(
										"click",
										function() {
											document.querySelector("#searchArea").style.display = "none";
										})
					</script>

				<div class="side-filter">
					<div class="filterTitle">
						<h2 class="side-filter-title">카테고리</h2>

						<div class="side-check-type">
							<ul class="side-type-list">
								<li class="side-type"><input type="checkbox"
									class="side-type-check" id="side-check-네일" /> <label
									for="side-check-네일">네일</label></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="side-filter">
					<div class="filterTitle">
						<h2 class="side-filter-title">라인업</h2>
					</div>
					<div class="side-check-type">
						<ul class="side-type-list">
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-라인업" /> <label
								for="side-check-라인업">아트</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-라인업" /> <label
								for="side-check-라인업">풀컬러</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-라인업" /> <label
								for="side-check-라인업">파츠</label></li>
						</ul>
					</div>
				</div>

				<div class="side-filter">
					<div class="filterTitle">
						<h2 class="side-filter-title">디자인</h2>
					</div>
					<div class="side-check-type">
						<ul class="side-type-list">
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">시럽</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">자개</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">그라데이션</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">글리터</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">프렌치</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">시스루</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">체크</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">마블</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">패턴</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">드로잉</label></li>
						</ul>
					</div>
				</div>

				<div class="side-filter">
					<div class="filterTitle">
						<h2 class="side-filter-title">컬러</h2>
					</div>
					<div class="side-check-type-color">
						<ul class="side-type-list-color">
							<li class="side-type-color"><input type="checkbox"
								class="side-type-check" id="side-check-코랄핑크" value="코랄핑크" /> <label
								for="side-check-코랄핑크">코랄핑크</label></li>
							<li class="side-type-color"><input type="checkbox"
								class="side-type-check" id="side-check-블루네이비" value="블루네이비" />
								<label for="side-check-블루네이비">블루네이비</label></li>
							<li class="side-type-color"><input type="checkbox"
								class="side-type-check" id="side-check-누드베이지" value="누드베이지" />
								<label for="side-check-누드베이지">누드베이지</label></li>
							<li class="side-type-color"><input type="checkbox"
								class="side-type-check" id="side-check-레드버건디" value="레드버건디" />
								<label for="side-check-레드버건디">레드버건디</label></li>
							<li class="side-type-color"><input type="checkbox"
								class="side-type-check" id="side-check-화이트" value="화이트" /> <label
								for="side-check-화이트">화이트</label></li>
							<li class="side-type-color"><input type="checkbox"
								class="side-type-check" id="side-check-골드" value="골드" /> <label
								for="side-check-골드">골드</label></li>
							<li class="side-type-color"><input type="checkbox"
								class="side-type-check" id="side-check-그린" value="그린" /> <label
								for="side-check-그린">그린</label></li>
							<li class="side-type-color"><input type="checkbox"
								class="side-type-check" id="side-check-옐로우" value="옐로우" /> <label
								for="side-check-옐로우">옐로우</label></li>
							<li class="side-type-color"><input type="checkbox"
								class="side-type-check" id="side-check-퍼플" value="퍼플" /> <label
								for="side-check-퍼플">퍼플</label></li>
							<li class="side-type-color"><input type="checkbox"
								class="side-type-check" id="side-check-블랙" value="블랙" /> <label
								for="side-check-블랙">블랙</label></li>
							<li class="side-type-color"><input type="checkbox"
								class="side-type-check" id="side-check-브라운" value="브라운" /> <label
								for="side-check-브라운">브라운</label></li>
							<li class="side-type-color"><input type="checkbox"
								class="side-type-check" id="side-check-실버그레이" value="실버그레이" />
								<label for="side-check-실버그레이">실버그레이</label></li>
							<li class="side-type-color"><input type="checkbox"
								class="side-type-check" id="side-check-네온" value="네온" /> <label
								for="side-check-네온">네온</label></li>
							<li class="side-type-color"><input type="checkbox"
								class="side-type-check" id="side-check-오렌지" value="오렌지" /> <label
								for="side-check-오렌지">오렌지</label></li>
						</ul>
					</div>
				</div>

				<div class="side-filter">
					<div class="filterTitle">
						<h2 class="side-filter-title">해시태그</h2>
					</div>
					<div class="side-check-type">
						<ul class="side-type-list">
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">0531</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">2020연말컬렉션</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">FW신상컬렉션</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">event1</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">event3</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">n차재입고</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">가을</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">가을네일</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">갈색</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">검정</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">겨울</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">꽃</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">네이비</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">노란색</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">노랑</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">누드</label></li>
							<li class="side-type"><input type="checkbox"
								class="side-type-check" id="side-check-디자인" /> <label
								for="side-check-디자인">데일리</label></li>
						</ul>
					</div>
				</div>

				<div id="side-filter-search">
					<button type="button" id="side-reset">
						초기화 <span></span>
					</button>
					<button type="button" id="side-search">검색하기</button>
				</div>
			</div>

			<script>
					document.querySelectorAll('.side-type').forEach(item => {
					    item.addEventListener('click', function(event) {
					        event.preventDefault(); // 클릭 이벤트의 기본 동작 방지
					        
					        const checkbox = this.querySelector('.side-type-check');
					        checkbox.checked = !checkbox.checked; // 체크박스의 상태를 토글
					        if (checkbox.checked) {
					            // 체크되었을 때 라벨에 스타일 추가
					            this.querySelector('label').style.border = '1px solid black';
					            this.querySelector('label').style.backgroundColor = ''; // 배경색 변경
					        } else {
					            // 체크 해제되었을 때 라벨 스타일 원래대로
					            this.querySelector('label').style.border = '1px solid #E6E6E6';
					            this.querySelector('label').style.backgroundColor = ''; // 배경색 초기화
					        }
					    });
					});
	
				</script>

		</form>
		<!--나만의 디자인 찾기-->
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>