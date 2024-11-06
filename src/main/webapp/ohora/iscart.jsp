<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>오호라</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
<link rel="stylesheet" href="../resources/cdn-main/iscart.css">
<script src="../resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
</head>
<%@include file="header.jsp" %>
<body>
<!-- 장바구니 영역 -->
 <div id="SP_order_wrap" class="sub_container basket_container">
    <div class="SP_layoutFix">
        <!-- 타이틀 -->
         <div class="SP_subSection">
            <h2 class="SP_subTitle">
                <span class="eng_font">장바구니</span>
            </h2>
         </div>
         <!-- 타이틀 -->
          <div style="display:none;" class="xans-element- xans-order xans-order-normnormal xans-record-">
            <div class="xans-element- xans-order xans-order-list xans-record-">
                <!-- 일반 기본배송 -->
            </div>
          </div>
          <!-- 장바구니 모듈 -->
           <div class="xans-element- xans-order xans-order-basketpackage  order_page">
            <!-- 혜택 정보 -->
             <div style="display:none" class="xans-element- xans-order xans-order-dcinfo ec-base-box typeMember  ">
                <div class="SP_orderInformation_wrap">
                    <div class="information">
                        <div class="SP_contTitle">혜택정보</div>
                        <div class="description">
                            <div class="member ">
                                <p>
                                    <strong>이시훈</strong>
                                     님은, [Friend] 회원이십니다.
                                </p>
                            </div>
                            <div class="SP_orderMileage_wrap">
                                <ul class>
                                    <li>
                                        <a href="/myshop/mileage/historyList.html">
                                            가용적립금 : 
                                            <strong>0원</strong>
                                        </a>
                                    </li>
                                    <li class="displaynone">
                                        <a href="/myshop/deposits/historyList.html">
                                            예치금 : 
                                            <strong></strong>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/myshop/coupon/coupon.html">
                                            쿠폰 : 
                                            <strong>0개</strong>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="SP_optChangeGuide_wrap">
                                <ul class>
                                    <li class="txtWarn txt11">상품의 옵션 및 수량 변경은 상품상세 또는 장바구니에서 가능합니다.</li>
                                    <li class="txtWarn txt11 displaynone">할인 적용 금액은 주문서작성의 결제예정금액에서 확인 가능합니다.</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
             </div>
             <!-- // 혜택 정보 -->
              <!-- 장바구니 정보 -->
               <div class="xans-element- xans-order xans-order-tabinfo SP_order_tab displaynone ">
                <ul class="menu">
                </ul>
                <p class="right ">장바구니에 담긴 상품은 14일 동안 보관됩니다.</p>
               </div>
               <!-- // 장바구니 정보 -->
                <!-- 장바구니 상품 있을때 -->
                 <div class="xans-element- xans-order xans-order-emptyitem toggleArea eToggle selected basket_item_wrapper ">
                    <!-- 선택상품 제어 버튼 -->
                     <div class="xans-element- xans-order xans-order-selectorder ">
                        <a href="#none" class="mini SMScart_allsel_btnTD selected" id="product_select_all" data-status="off">
                            <div class="box">
                            	<div id="checkcolor1"></div>
                            </div>
                            <span class="count">
                                전체 상품 (
                                <span class="all-count">1</span>
                                )
                            </span>
                        </a>
                     </div>
                     <div class="contents chk_custom_studio order_table">
                        <!-- 일반상품 (기본배송) -->
                         <div class="xans-element- xans-order xans-order-normnormal xans-record-">
                            <!-- 주문 리스트 -->
                             <div class="xans-element- xans-order xans-order-list">
                                <div class="prdInfo xans-record-">
                                    <!-- 체크박스 -->
                                     <input type="checkbox" id="basket_chk_id_0" name="basket_product_normal_type_normal">
                                     <label for="basket_chk_id_0" class="label_for_check">
                                       <div id="checkcolor2"></div>
                                     </label>
                                      &nbsp;
                                      <!-- // 체크박스 -->
                                       <!-- 설명 -->
                                        <div class="description">
                                            <!-- 상품 이미지 -->
                                             <p class="prdImg">
                                                <a href="/product/detail.html?product_no=2104&cate_no=44">
                                                    <img loading="lazy" src="https://www.ohora.kr/web/product/tiny/202206/d6bd975b62d701230f1cb6336faea4fa.jpg" alt width="250" height="250">
                                                </a>
                                             </p>
                                             <!-- // 상품 이미지 -->
                                              <!-- 상품 설명 -->
                                               <div class="prdDesc">
                                                <!-- 상품명 -->
                                                 <strong class="prdName" title="상품명">
                                                    <a href="/product/detail.html?product_no=2104&cate_no=44">N 딥 네일</a>
                                                 </strong>
                                                 <!-- // 상품명 -->
                                                  <!-- 정보영역 -->
                                                   <ul class="info">
                                                    <li class="displaynone">
                                                        배송 : 
                                                        <span class>
                                                            3,000
                                                            <span class="displaynone"></span>
                                                        </span>
                                                         [조건] / 기본배송 
                                                         <span class="displaynone">(해외배송가능)</span>
                                                    </li>
                                                    <li title="적립금" class="mileage displaynone">적립금-</li>
                                                    <li class="price">
                                                        <span class="discount" title="판매가">
                                                            <strong>
                                                                14,800
                                                            </strong>
                                                            <span class="displaynone"></span>
                                                        </span>
                                                        <span class title="할인판매가">
                                                            <strong>
                                                                12,580
                                                            </strong>
                                                            <span class></span>
                                                        </span>
                                                        <span class="dc_percent">15%</span>
                                                    </li>
                                                    <li class="quantity">
                                                        <a href="javascript:void(0);" id="minusBtn">
                                                            <img class="QuantityDown" alt="down" src="/SkinImg/img/minus.svg" width="25" height="25" onclick="Basket.outQuantityShortcut('quantity_id_0', 0);">
                                                        </a>
                                                        <input id="quantity_id_0" name="quantity_name_0" size="2" value="1" type="text">
                                                        <a href="javascript:void(0);">
                                                            <img class="QuantityUp" id="plusBtn" alt="up" src="/SkinImg/img/plus.svg" width="25" height="25" onclick="Basket.addQuantityShortcut('quantity_id_0', 0);">
                                                        </a>
                                                    </li>
                                                   </ul>
                                                   <!-- // 정보 영역 -->
                                                    <!-- 합계 -->
                                                     <div class="prdTotal">
                                                         합계 : 
                                                         <strong>12,580</strong>
                                                         <span class="displaynone"></span>
                                                     </div>
                                                     <!-- // 합계 -->
                                               </div>
                                               <!-- // 상품 설명 -->
                                        </div>
                                        <!-- // 설명 -->
                                         <!-- 버튼 영역 -->
                                          <a href="#none" onclick="basketItemChk('basket_chk_id_0');" class="btnNormal SMScart_option_del_btnTD">삭제</a>
                                          <div class="btnArea typeFull displaynone">
                                            <span class="gLeft">
                                                <a href="#none" onclick="selBasketDel('basket_chk_id_0');" class="btnNormal SMScart_option_del_btnTD">삭제</a>
                                                <a href="#none" onclick="BasketNew.moveWish(0);" class="btnNormal SMScart_option_wish_btnTD">관심상품</a>
                                            </span>
                                            <span class="gRight">
                                                <a href="#none" onclick="Basket.orderBasketItem(0);" class="btnStrong SMScart_option_buy_btnTD">주문하기</a>
                                            </span>
                                          </div>
                                          <!-- // 버튼 영역 -->
                                </div>
                                <!-- // 참고 -->
                             </div>
                             <!-- // 주문 리스트 -->
                              <!-- 주문 요약 -->
                               <div class="totalPrice toggleArea type2 eToggle displaynone">
                                <h3 class="txtTitle title">[기본배송]</h3>
                                <div class="contents">
                                     상품구매금액 
                                     <strong>14,800</strong>
                                     <span class="displaynone">()</span>
                                     <span class="displaynone"></span>
                                      + 배송비 
                                      <strong>3,000</strong>
                                      <span class="displaynone"></span>
                                      <span class="sale ">
                                         - 상품할인금액 
                                         <strong>2,220</strong>
                                      </span>
                                       =
                                       <br>
                                        합계 : 
                                        <strong class="total">15,580</strong>
                                        <span class="displaynone"> </span>
                                </div>
                               </div>
                               <!-- // 주문 요약 -->
                         </div>
                     </div>
                 </div>
                 <!-- 총 주문금액 영역 -->
                  <div class="xans-element- xans-order xans-order-emptyitem total_order_wrapper " style="top: 157px;">
                    <div class="total_order_inner">
                        <div class="xans-element- xans-order xans-order-totalsummary  totalSummary ">
                            <!-- 총 상품 금액 -->
                             <div class="toggleArea type1 eToggle">
                                <div class="total title item">
                                    <h3>총 상품금액</h3>
                                    <p>
                                        <strong class="prdPriceAll">
                                            14,800
                                        </strong>
                                        <span class="refer displaynone">
                                            <span class="total_product_price_display_back"></span>
                                        </span>
                                    </p>
                                </div>
                                <div class="more contents displaynone">
                                    <ul>
                                        <li>
                                            <strong>상품금액</strong>
                                            <span>
                                                <span class="total_product_price_display_front_mobile">0</span>
                                            </span>
                                        </li>
                                        <li>
                                            <strong>부가세</strong>
                                            <span>
                                                <span class="total_product_vat_price_front_mobile">0</span>
                                            </span>
                                        </li>
                                    </ul>
                                </div>
                             </div>
                             <!-- // 총 상품 금액 -->
                              <!-- 배송비 -->
                               <div class="toggleArea type1 eToggle">
                                <div class="item total title">
                                    <h3>총 배송비</h3>
                                    <p class="delivery_price_wrap">
                                        <strong class="prdDelvAll">
                                            3,000
                                        </strong>
                                        <span class="refer displaynone">
                                            <span class="total_delv_price_back"></span>
                                        </span>
                                    </p>
                                    <div class="shippingArea displaynone">
                                        (
                                        <span></span>
                                        <div class="shippingFee">
                                            <a href="#none" class="btnNormal" id>자세히</a>
                                            ) 
                                            <div class="ec-base-tooltip" style="display: none;">
                                                <h3>배송비할인</h3>
                                                <div class="content">
                                                    <h4></h4>
                                                    <table border="1" summary>
                                                        <caption>배송비 할인 이벤트 정보</caption>
                                                        <tbody>
                                                            <tr>
                                                                <th scope="row">혜택</th>
                                                                <td>
                                                                    <strong class="txtEm"></strong>
                                                                    <p></p>
                                                                </td>
                                                            </tr>
                                                            <tr class="displaynone">
                                                                <th scope="row">기간</th>
                                                                <td>
                                                                    <strong class="txtEm"></strong>
                                                                    <p></p>
                                                                </td>
                                                            </tr>
                                                            <tr class="displaynone">
                                                                <th scope="row">대상</th>
                                                                <td></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <a href="#none" class="btnClose">
                                                    <img src="//img.echosting.cafe24.com/skin/base/common/btn_close_tip.gif" alt="닫기">
                                                </a>
                                                <span class="edge"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="total_info_txt delv">
                                        <span class="amount">37,420</span>
                                        원 추가 구매시 
                                        <b>
                                            무료배송
                                            <b></b>
                                        </b>
                                    </div>
                                </div>
                                <div id="SMS_freeDelv" class="displaynone">
                                    <p class="ment">
                                        <b id="needPrice">0</b>
                                         추가 주문 시, 
                                         <span id="delvPrice" class="xans-element- xans-order xans-order-totalsummary ">
                                            <span class="total_delv_price_front">3,000</span>
                                         </span>
                                         <b>무료배송</b>
                                    </p>
                                </div>
                               </div>
                               <!-- // 배송비 -->
                                <!-- 상품 할인 금액 -->
                                 <div class="toggleArea type1 eToggle ">
                                    <div class="total title item">
                                        <h3>상품할인금액</h3>
                                        <!-- 총 상품 할인 금액 -->
                                         <p class="discountAll">
                                             - 
                                             <span class="discount">
                                                <strong class="prdDiscountAll">
                                                    2,220
                                                </strong>
                                             </span>
                                             <span class="refer displaynone"></span>
                                         </p>
                                    </div>
                                    <div class="more contents displaynone ">
                                        <ul>
                                            <li class>
                                                <strong>기간할인</strong>
                                                <span id="mBenefitPeriodSale">2,220</span>
                                            </li>
                                            <li class="displaynone">
                                                <strong>회원할인</strong>
                                                <span id="mBenefitMemberSale">0</span>
                                            </li>
                                            <li class="displaynone">
                                                <strong>재구매할인</strong>
                                                <span id="mBenefitRebuySale">0</span>
                                            </li>
                                            <li class="displaynone">
                                                <strong>대량구매할인</strong>
                                                <span id="mBenefitBulkSale">0</span>
                                            </li>
                                            <li class="displaynone">
                                                <strong>바로가기(링콘)할인</strong>
                                                <span id="mBenefitLivelinkonSale">0</span>
                                            </li>
                                            <li class="displaynone">
                                                <strong>어바웃pbp할인</strong>
                                                <span id></span>
                                            </li>
                                            <li class="displaynone">
                                                <strong>신규상품할인</strong>
                                                <span id="mBenefitNewproductSale">0</span>
                                            </li>
                                            <li class="displaynone">
                                                <strong>결제수단할인</strong>
                                                <span id></span>
                                            </li>
                                            <li class="displaynone">
                                                <strong>회원등급할인</strong>
                                                <span id="mBenefitMembergroupSale">0</span>
                                            </li>
                                        </ul>
                                    </div>
                                 </div>
                                 <!-- // 상품할인금액 -->
                                  <!-- 결제예정금액 -->
                                   <div class="toggleArea type1 eToggle order final">
                                    <div class="item total title">
                                        <h3>총 결제예정금액</h3>
                                        <p class="price_final">
                                            <strong class="prdFinalAll">
                                                15,580
                                            </strong>
                                            <span class="refer displaynone"></span>
                                        </p>
                                        <!-- 예상 적립금 -->
                                         <div class="mileage total_info_txt">
                                            <!-- 회원 -->
                                             <div class="xans-element- xans-layout xans-layout-statelogon member ">
                                                <div class="xans-element- xans-order xans-order-dcinfo displaynone ">
                                                    <div class="group_name">Friend</div>
                                                </div>
                                                <div class="mileage_txt">
                                                    구매시 125원 
                                                    <b>적립예정</b>
                                                </div>
                                             </div>
                                             <!-- 비회원 -->
                                         </div>
                                         <!-- // 예상 적립금 -->
                                    </div>
                                   </div>
                                   <!-- // 결제예정금액 -->
                        </div>
                        <div class="xans-element- xans-order xans-order-totaloversea displaynone totalSummary ">
                            <div class="type1 eToggle">
                                <div class="total title">
                                    <h3>총 상품금액</h3>
                                    <p>
                                        <strong>
                                            <span class="total_product_price_display_front">14,800</span>
                                        </strong>
                                        <span class="refer displaynone">
                                            <span class="total_product_price_display_back"></span>
                                        </span>
                                    </p>
                                </div>
                                <div class="more contents displaynone">
                                    <ul>
                                        <li>
                                            <strong>상품금액</strong>
                                            <span>
                                                <span class="total_product_price_display_front_mobile">0</span>
                                            </span>
                                        </li>
                                        <li>
                                            <strong>부가세</strong>
                                            <span>
                                                <span class="total_product_vat_price_front_mobile">0</span>
                                            </span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="toggleArea type1 eToggle ">
                                <div class="total title item">
                                    <h3>총 할인금액</h3>
                                    <p>
                                        <strong>2,220</strong>
                                        <span class="refer displaynone"></span>
                                    </p>
                                </div>
                                <div class="more contents displaynone ">
                                    <ul>
                                        <li class>
                                            <strong>기간할인</strong>
                                            <span id="mBenefitPeriodSale">2,220</span>
                                        </li>
                                        <li class="displaynone">
                                            <strong>회원할인</strong>
                                            <span id="mBenefitMemberSale">0</span>
                                        </li>
                                        <li class="displaynone">
                                            <strong>재구매할인</strong>
                                            <span id="mBenefitRebuySale">0</span>
                                        </li>
                                        <li class="displaynone">
                                            <strong>대량구매할인</strong>
                                            <span id="mBenefitBulkSale">0</span>
                                        </li>
                                        <li class="displaynone">
                                            <strong>바로가기(링콘)할인</strong>
                                            <span id="mBenefitLivelinkonSale">0</span>
                                        </li>
                                        <li class="displaynone">
                                            <strong>어바웃pbp할인</strong>
                                            <span id></span>
                                        </li>
                                        <li class="displaynone">
                                            <strong>신규상품할인</strong>
                                            <span id="mBenefitNewproductSale">0</span>
                                        </li>
                                        <li class="displaynone">
                                            <strong>결제수단할인</strong>
                                            <span id></span>
                                        </li>
                                        <li class="displaynone">
                                            <strong>회원등급할인</strong>
                                            <span id="mBenefitMembergroupSale">0</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="total title">
                                <h3>총 합계</h3>
                                <p>
                                    <strong>15,580</strong>
                                    <span class="refer displaynone"></span>
                                </p>
                            </div>
                        </div>
                        <div class="xans-element- xans-order xans-order-totalorder SP_tableBtn_wrap">
                            <div class="SP_tableBtnAlign_right">
                                <div class="btn buy_btn">
                                    <a href="#none" onclick="Basket.orderSelectBasket(this)" link-order="/order/orderform.html?basket_type=all_buy" link-login="/member/login.html" class="SP_cm_btn ">구매하기</a>
                                </div>
                                <div class="displaynone">
                                    <a href="/" class="SP_cm_btn">계속 쇼핑하기</a>
                                    <a href="#none" onclick="Basket.orderSelectBasket(this)" link-order="/order/orderform.html?basket_type=all_buy" link-login="/member/login.html" class="SP_cm_btn ">선택상품 주문</a>
                                    <a href="#none" onclick="Basket.orderAll(this)" link-order="/order/orderform.html?basket_type=all_buy" link-login="/member/login.html" class="SP_cm_btn   ">전체 상품주문</a>
                                    <div id="appPaymentButtonBox" style="display:block; max-width:365px; margin:10px auto 0; text-align:center;"></div>
                                </div>
                                <div id="NaverChk_Button" class="naver_Wrap displaynone"></div>
                            </div>
                        </div>
                    </div>
                  </div>
                  <!-- 총 주문금액 영역 -->
           </div>
           <!-- // 장바구니 모듈 -->
            <div class="xans-element- xans-myshop xans-myshop-wishlist ec-base-table typeList displaynone xans-record-">
                <h3 class="SP_contTitle">관심상품</h3>
                <table border="1" summary class="SP_tableSt01_isThumNail">
                    <caption>관심상품 목록</caption>
                    <colgroup>
                        <col style="width:92px">
                        <col style="width:auto">
                        <col style="width:105px">
                        <col style="width:100px">
                        <col style="width:100px">
                        <col style="width:85px">
                        <col style="width:105px">
                        <col style="width:110px">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col">이미지</th>
                            <th scope="col">상품정보</th>
                            <th scope="col">판매가</th>
                            <th scope="col">배송구분</th>
                            <th scope="col">배송비</th>
                            <th scope="col">합계</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                </table>
                <p class="SP_message ">관심상품 내역이 없습니다.</p>
            </div>
    </div>
    <div class="common_list_container reco_new_container">
        <div class="text_area">
            <h3 class="basketRcmdTit">추천 상품</h3>
        </div>
        <div class="SMS_Product_display SMSprdSortTarget common_list_box" data-sort="2col">
            <div class="swiper-container swiper-lazy-init swiper-container-initialized swiper-container-horizontal" data-swiper-key="reconewContainer">
                <!-- 상품리스트영역 ul -->
                 <ul class="items SMSitems common_items swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-2543.33px, 0px, 0px);">

                    <li class="xans-record- append_item swiper-slide" style="width: 323.333px; margin-right: 40px;">
                        <div class="complete container " data-prd-no="776" data-filter="#마블#데일리">
                            <dl>
                                <a href="/product/detail.html?product_no=776&cate_no=120&display_group=1" class="viewlink"></a>
                                <div class="base_img">
                                    <div class="BR_icon">
                                        <p>
                                            <b>BEST</b>
                                            리뷰
                                        </p>
                                    </div>
                                    <div class="thumb">
                                        <img loading="lazy" class="*lazyload thumb_img swiper-lazy swiper-lazy-loaded" data-original alt width="800" height="800" src="https://www.ohora.kr/web/product/medium/202206/b6fe4302016acc84bfbf25e779d307f2.jpg">
                                        <img loading="lazy" decoding="async" class="*lazyload hover_img swiper-lazy swiper-lazy-loaded" data-original alt width="800" height="800" src="">
                                        <div class="sticker">
                                            <div class="new">NEW</div>
                                            <div class="percent">
                                                <div class="dcPercent"></div>
                                            </div>
                                            <div class="best">BEST</div>
                                        </div>
                                        <span class="soldout_img" style="display: none;">
                                            <span>
                                                coming
                                                <br>
                                                soon
                                            </span>
                                        </span>
                                    </div>
                                </div>
                                <div class="base_mask">
                                    <dd class="info_container">
                                        <p class="name">
                                            <span style="font-size:16px;color:#000000;font-weight:bold;">N 멀베리 네일</span>
                                        </p>
                                        <p class="subname"></p>
                                        <p class="subnameSimple"></p>
                                    </dd>
                                    <dd class="soldout_container" style="display: none;">
                                        <p class="soldout">(품절)</p>
                                    </dd>
                                    <dd class="price_container">
                                        <p class="custom_price displaynone">0</p>
                                        <p class="setCustomPrice displaynone">0</p>
                                        <p class="price">
                                            14,800
                                        </p>
                                        <p class="sale_price displaynone"></p>
                                    </dd>
                                    <dd class="icons  displaynone" style="display: none;" "></dd>
                                    <div class="prdInfo_bottom">
                                        <div class="crema_container">
                                            <div class="crema_wrap">
                                                <p class="rv_value">
                                                    <span class="crema-product-reviews-score crema-applied" data-product-code="776" data-star-style="single" data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1" data-applied-widgets="[".crema-product-reviews-score"]">
                                                        <div class="crema_product_reviews_score__container" style="display: inline-block; font-family: inherit;">
                                                            <div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full " style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;">
                                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
                                                                    <defs>
                                                                        <path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"></path>
                                                                    </defs>
                                                                    <use xlink:href="#star-full"></use>
                                                                </svg>
                                                            </div>
                                                             4.9
                                                        </div>
                                                    </span>
                                                </p>
                                                <p class="rv_count">
                                                    <span class="rv_icon">
                                                        <img src="/web/upload/rv_icon2.png">
                                                    </span>
                                                    <span class="count crema-product-reviews-count crema-applied" data-product-code="776" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[".crema-product-reviews-count"]">
                                                        1,817
                                                    </span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="hash_container done">
                                        <div class="hash_wrap"></div>
                                    </div>
                                    <div class="Prev_Cart" onclick="basketConfirmShow(this);">
                                        <img src="https://www.ohora.kr/web/upload/common/mobile/icon_cart_gray.png" onclick="category_add_basket('776','120', '1', 'A0000', false, '1', 'P0000BDW', 'A', 'F', '0');" alt="장바구니 담기" class="ec-admin-icon cart">
                                    </div>
                                    <div class="rv_icon">
                                        <a href="/product/detail.html?product_no=776&cate_no=120&display_group=1">
                                            <img src="/web/upload/rv_icon1.png">
                                            <span class="count crema-product-reviews-count crema-applied" data-product-code="776" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[".crema-product-reviews-count"]">1,817</span>
                                        </a>
                                    </div>
                                    <div class="only_info_chk displaynone">
                                        <div class="xans-element- xans-product xans-product-listitem">
                                            <div class=" display_가격 xans-record-">
                                                <strong class="title displaynone">
                                                    <span style="font-size:12px;color:#555555;font-weight:bold;">가격</span>
                                                </strong>
                                                <span style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">14,800</span>
                                                <span id="span_product_tax_type_text" style="text-decoration:line-through;"> </span>
                                            </div>
                                            <div class=" display_사용후기 xans-record-">
                                                <strong class="title displaynone">
                                                    <span style="font-size:12px;color:#555555;">사용후기</span>
                                                </strong>
                                                <span style="font-size:12px;color:#555555;">234</span>
                                            </div>
                                            <div class="xans-record-">
                                                <strong class="title displaynone"></strong>
                                            </div>
                                            <div class=" display_해시태그 xans-record-">
                                                <strong class="title displaynone">
                                                    <span style="font-size:12px;color:#555555;">해시태그</span>
                                                </strong>
                                                <span style="font-size:12px;color:#555555;">#네일 #아트 #버건디 #레드 #마블 #가을네일</span>
                                            </div>
                                            <div class=" display_상품필터값 xans-record-">
                                                <strong class="title displaynone">
                                                    <span style="font-size:12px;color:#555555;">상품필터값</span>
                                                </strong>
                                                <span style="font-size:12px;color:#555555;">마블,데일리</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="restockIcon"></div>
                                </div>
                            </dl>
                        </div>
                    </li>

                    <li class="xans-record- append_item swiper-slide" style="width: 323.333px; margin-right: 40px;">
                        <div class="complete container " data-prd-no="776" data-filter="#마블#데일리">
                            <dl>
                                <a href="/product/detail.html?product_no=776&cate_no=120&display_group=1" class="viewlink"></a>
                                <div class="base_img">
                                    <div class="BR_icon">
                                        <p>
                                            <b>BEST</b>
                                            리뷰
                                        </p>
                                    </div>
                                    <div class="thumb">
                                        <img loading="lazy" class="*lazyload thumb_img swiper-lazy swiper-lazy-loaded" data-original alt width="800" height="800" src="https://www.ohora.kr/web/product/medium/202207/a01ac461b36b71f78270548dbc29b121.jpg">
                                        <img loading="lazy" decoding="async" class="*lazyload hover_img swiper-lazy swiper-lazy-loaded" data-original alt width="800" height="800" src="">
                                        <div class="sticker">
                                            <div class="new">NEW</div>
                                            <div class="percent">
                                                <div class="dcPercent"></div>
                                            </div>
                                            <div class="best">BEST</div>
                                        </div>
                                        <span class="soldout_img" style="display: none;">
                                            <span>
                                                coming
                                                <br>
                                                soon
                                            </span>
                                        </span>
                                    </div>
                                </div>
                                <div class="base_mask">
                                    <dd class="info_container">
                                        <p class="name">
                                            <span style="font-size:16px;color:#000000;font-weight:bold;">N 멀베리 네일</span>
                                        </p>
                                        <p class="subname"></p>
                                        <p class="subnameSimple"></p>
                                    </dd>
                                    <dd class="soldout_container" style="display: none;">
                                        <p class="soldout">(품절)</p>
                                    </dd>
                                    <dd class="price_container">
                                        <p class="custom_price displaynone">0</p>
                                        <p class="setCustomPrice displaynone">0</p>
                                        <p class="price">
                                            14,800
                                        </p>
                                        <p class="sale_price displaynone"></p>
                                    </dd>
                                    <dd class="icons  displaynone" style="display: none;" "></dd>
                                    <div class="prdInfo_bottom">
                                        <div class="crema_container">
                                            <div class="crema_wrap">
                                                <p class="rv_value">
                                                    <span class="crema-product-reviews-score crema-applied" data-product-code="776" data-star-style="single" data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1" data-applied-widgets="[".crema-product-reviews-score"]">
                                                        <div class="crema_product_reviews_score__container" style="display: inline-block; font-family: inherit;">
                                                            <div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full " style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;">
                                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
                                                                    <defs>
                                                                        <path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"></path>
                                                                    </defs>
                                                                    <use xlink:href="#star-full"></use>
                                                                </svg>
                                                            </div>
                                                             4.9
                                                        </div>
                                                    </span>
                                                </p>
                                                <p class="rv_count">
                                                    <span class="rv_icon">
                                                        <img src="/web/upload/rv_icon2.png">
                                                    </span>
                                                    <span class="count crema-product-reviews-count crema-applied" data-product-code="776" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[".crema-product-reviews-count"]">
                                                        1,817
                                                    </span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="hash_container done">
                                        <div class="hash_wrap"></div>
                                    </div>
                                    <div class="Prev_Cart" onclick="basketConfirmShow(this);">
                                        <img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif" onclick="category_add_basket('776','120', '1', 'A0000', false, '1', 'P0000BDW', 'A', 'F', '0');" alt="장바구니 담기" class="ec-admin-icon cart">
                                    </div>
                                    <div class="rv_icon">
                                        <a href="/product/detail.html?product_no=776&cate_no=120&display_group=1">
                                            <img src="/web/upload/rv_icon1.png">
                                            <span class="count crema-product-reviews-count crema-applied" data-product-code="776" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[".crema-product-reviews-count"]">1,817</span>
                                        </a>
                                    </div>
                                    <div class="only_info_chk displaynone">
                                        <div class="xans-element- xans-product xans-product-listitem">
                                            <div class=" display_가격 xans-record-">
                                                <strong class="title displaynone">
                                                    <span style="font-size:12px;color:#555555;font-weight:bold;">가격</span>
                                                </strong>
                                                <span style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">14,800</span>
                                                <span id="span_product_tax_type_text" style="text-decoration:line-through;"> </span>
                                            </div>
                                            <div class=" display_사용후기 xans-record-">
                                                <strong class="title displaynone">
                                                    <span style="font-size:12px;color:#555555;">사용후기</span>
                                                </strong>
                                                <span style="font-size:12px;color:#555555;">234</span>
                                            </div>
                                            <div class="xans-record-">
                                                <strong class="title displaynone"></strong>
                                            </div>
                                            <div class=" display_해시태그 xans-record-">
                                                <strong class="title displaynone">
                                                    <span style="font-size:12px;color:#555555;">해시태그</span>
                                                </strong>
                                                <span style="font-size:12px;color:#555555;">#네일 #아트 #버건디 #레드 #마블 #가을네일</span>
                                            </div>
                                            <div class=" display_상품필터값 xans-record-">
                                                <strong class="title displaynone">
                                                    <span style="font-size:12px;color:#555555;">상품필터값</span>
                                                </strong>
                                                <span style="font-size:12px;color:#555555;">마블,데일리</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="restockIcon"></div>
                                </div>
                            </dl>
                        </div>
                    </li>

                    <li class="xans-record- append_item swiper-slide" style="width: 323.333px; margin-right: 40px;">
                        <div class="complete container " data-prd-no="776" data-filter="#마블#데일리">
                            <dl>
                                <a href="/product/detail.html?product_no=776&cate_no=120&display_group=1" class="viewlink"></a>
                                <div class="base_img">
                                    <div class="BR_icon">
                                        <p>
                                            <b>BEST</b>
                                            리뷰
                                        </p>
                                    </div>
                                    <div class="thumb">
                                        <img loading="lazy" class="*lazyload thumb_img swiper-lazy swiper-lazy-loaded" data-original alt width="800" height="800" src="https://www.ohora.kr/web/product/medium/202409/91c66d67ae4ff36b421aebdc8bb4d028.jpg">
                                        <img loading="lazy" decoding="async" class="*lazyload hover_img swiper-lazy swiper-lazy-loaded" data-original alt width="800" height="800" src="">
                                        <div class="sticker">
                                            <div class="new">NEW</div>
                                            <div class="percent">
                                                <div class="dcPercent"></div>
                                            </div>
                                            <div class="best">BEST</div>
                                        </div>
                                        <span class="soldout_img" style="display: none;">
                                            <span>
                                                coming
                                                <br>
                                                soon
                                            </span>
                                        </span>
                                    </div>
                                </div>
                                <div class="base_mask">
                                    <dd class="info_container">
                                        <p class="name">
                                            <span style="font-size:16px;color:#000000;font-weight:bold;">N 멀베리 네일</span>
                                        </p>
                                        <p class="subname"></p>
                                        <p class="subnameSimple"></p>
                                    </dd>
                                    <dd class="soldout_container" style="display: none;">
                                        <p class="soldout">(품절)</p>
                                    </dd>
                                    <dd class="price_container">
                                        <p class="custom_price displaynone">0</p>
                                        <p class="setCustomPrice displaynone">0</p>
                                        <p class="price">
                                            14,800
                                        </p>
                                        <p class="sale_price displaynone"></p>
                                    </dd>
                                    <dd class="icons  displaynone" style="display: none;" "></dd>
                                    <div class="prdInfo_bottom">
                                        <div class="crema_container">
                                            <div class="crema_wrap">
                                                <p class="rv_value">
                                                    <span class="crema-product-reviews-score crema-applied" data-product-code="776" data-star-style="single" data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1" data-applied-widgets="[".crema-product-reviews-score"]">
                                                        <div class="crema_product_reviews_score__container" style="display: inline-block; font-family: inherit;">
                                                            <div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full " style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;">
                                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
                                                                    <defs>
                                                                        <path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"></path>
                                                                    </defs>
                                                                    <use xlink:href="#star-full"></use>
                                                                </svg>
                                                            </div>
                                                             4.9
                                                        </div>
                                                    </span>
                                                </p>
                                                <p class="rv_count">
                                                    <span class="rv_icon">
                                                        <img src="/web/upload/rv_icon2.png">
                                                    </span>
                                                    <span class="count crema-product-reviews-count crema-applied" data-product-code="776" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[".crema-product-reviews-count"]">
                                                        1,817
                                                    </span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="hash_container done">
                                        <div class="hash_wrap"></div>
                                    </div>
                                    <div class="Prev_Cart" onclick="basketConfirmShow(this);">
                                        <img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif" onclick="category_add_basket('776','120', '1', 'A0000', false, '1', 'P0000BDW', 'A', 'F', '0');" alt="장바구니 담기" class="ec-admin-icon cart">
                                    </div>
                                    <div class="rv_icon">
                                        <a href="/product/detail.html?product_no=776&cate_no=120&display_group=1">
                                            <img src="/web/upload/rv_icon1.png">
                                            <span class="count crema-product-reviews-count crema-applied" data-product-code="776" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[".crema-product-reviews-count"]">1,817</span>
                                        </a>
                                    </div>
                                    <div class="only_info_chk displaynone">
                                        <div class="xans-element- xans-product xans-product-listitem">
                                            <div class=" display_가격 xans-record-">
                                                <strong class="title displaynone">
                                                    <span style="font-size:12px;color:#555555;font-weight:bold;">가격</span>
                                                </strong>
                                                <span style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">14,800</span>
                                                <span id="span_product_tax_type_text" style="text-decoration:line-through;"> </span>
                                            </div>
                                            <div class=" display_사용후기 xans-record-">
                                                <strong class="title displaynone">
                                                    <span style="font-size:12px;color:#555555;">사용후기</span>
                                                </strong>
                                                <span style="font-size:12px;color:#555555;">234</span>
                                            </div>
                                            <div class="xans-record-">
                                                <strong class="title displaynone"></strong>
                                            </div>
                                            <div class=" display_해시태그 xans-record-">
                                                <strong class="title displaynone">
                                                    <span style="font-size:12px;color:#555555;">해시태그</span>
                                                </strong>
                                                <span style="font-size:12px;color:#555555;">#네일 #아트 #버건디 #레드 #마블 #가을네일</span>
                                            </div>
                                            <div class=" display_상품필터값 xans-record-">
                                                <strong class="title displaynone">
                                                    <span style="font-size:12px;color:#555555;">상품필터값</span>
                                                </strong>
                                                <span style="font-size:12px;color:#555555;">마블,데일리</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="restockIcon"></div>
                                </div>
                            </dl>
                        </div>
                    </li>

                    <li class="xans-record- append_item swiper-slide" style="width: 323.333px; margin-right: 40px;">
                        <div class="complete container " data-prd-no="776" data-filter="#마블#데일리">
                            <dl>
                                <a href="/product/detail.html?product_no=776&cate_no=120&display_group=1" class="viewlink"></a>
                                <div class="base_img">
                                    <div class="BR_icon">
                                        <p>
                                            <b>BEST</b>
                                            리뷰
                                        </p>
                                    </div>
                                    <div class="thumb">
                                        <img loading="lazy" class="*lazyload thumb_img swiper-lazy swiper-lazy-loaded" data-original alt width="800" height="800" src="https://www.ohora.kr/web/product/medium/202410/8b4bb562a09100244fa6cd0ef361f550.jpg">
                                        <img loading="lazy" decoding="async" class="*lazyload hover_img swiper-lazy swiper-lazy-loaded" data-original alt width="800" height="800" src="">
                                        <div class="sticker">
                                            <div class="new">NEW</div>
                                            <div class="percent">
                                                <div class="dcPercent"></div>
                                            </div>
                                            <div class="best">BEST</div>
                                        </div>
                                        <span class="soldout_img" style="display: none;">
                                            <span>
                                                coming
                                                <br>
                                                soon
                                            </span>
                                        </span>
                                    </div>
                                </div>
                                <div class="base_mask">
                                    <dd class="info_container">
                                        <p class="name">
                                            <span style="font-size:16px;color:#000000;font-weight:bold;">N 멀베리 네일</span>
                                        </p>
                                        <p class="subname"></p>
                                        <p class="subnameSimple"></p>
                                    </dd>
                                    <dd class="soldout_container" style="display: none;">
                                        <p class="soldout">(품절)</p>
                                    </dd>
                                    <dd class="price_container">
                                        <p class="custom_price displaynone">0</p>
                                        <p class="setCustomPrice displaynone">0</p>
                                        <p class="price">
                                            14,800
                                        </p>
                                        <p class="sale_price displaynone"></p>
                                    </dd>
                                    <dd class="icons  displaynone" style="display: none;" "></dd>
                                    <div class="prdInfo_bottom">
                                        <div class="crema_container">
                                            <div class="crema_wrap">
                                                <p class="rv_value">
                                                    <span class="crema-product-reviews-score crema-applied" data-product-code="776" data-star-style="single" data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1" data-applied-widgets="[".crema-product-reviews-score"]">
                                                        <div class="crema_product_reviews_score__container" style="display: inline-block; font-family: inherit;">
                                                            <div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full " style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;">
                                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
                                                                    <defs>
                                                                        <path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"></path>
                                                                    </defs>
                                                                    <use xlink:href="#star-full"></use>
                                                                </svg>
                                                            </div>
                                                             4.9
                                                        </div>
                                                    </span>
                                                </p>
                                                <p class="rv_count">
                                                    <span class="rv_icon">
                                                        <img src="/web/upload/rv_icon2.png">
                                                    </span>
                                                    <span class="count crema-product-reviews-count crema-applied" data-product-code="776" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[".crema-product-reviews-count"]">
                                                        1,817
                                                    </span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="hash_container done">
                                        <div class="hash_wrap"></div>
                                    </div>
                                    <div class="Prev_Cart" onclick="basketConfirmShow(this);">
                                        <img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif" onclick="category_add_basket('776','120', '1', 'A0000', false, '1', 'P0000BDW', 'A', 'F', '0');" alt="장바구니 담기" class="ec-admin-icon cart">
                                    </div>
                                    <div class="rv_icon">
                                        <a href="/product/detail.html?product_no=776&cate_no=120&display_group=1">
                                            <img src="/web/upload/rv_icon1.png">
                                            <span class="count crema-product-reviews-count crema-applied" data-product-code="776" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[".crema-product-reviews-count"]">1,817</span>
                                        </a>
                                    </div>
                                    <div class="only_info_chk displaynone">
                                        <div class="xans-element- xans-product xans-product-listitem">
                                            <div class=" display_가격 xans-record-">
                                                <strong class="title displaynone">
                                                    <span style="font-size:12px;color:#555555;font-weight:bold;">가격</span>
                                                </strong>
                                                <span style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">14,800</span>
                                                <span id="span_product_tax_type_text" style="text-decoration:line-through;"> </span>
                                            </div>
                                            <div class=" display_사용후기 xans-record-">
                                                <strong class="title displaynone">
                                                    <span style="font-size:12px;color:#555555;">사용후기</span>
                                                </strong>
                                                <span style="font-size:12px;color:#555555;">234</span>
                                            </div>
                                            <div class="xans-record-">
                                                <strong class="title displaynone"></strong>
                                            </div>
                                            <div class=" display_해시태그 xans-record-">
                                                <strong class="title displaynone">
                                                    <span style="font-size:12px;color:#555555;">해시태그</span>
                                                </strong>
                                                <span style="font-size:12px;color:#555555;">#네일 #아트 #버건디 #레드 #마블 #가을네일</span>
                                            </div>
                                            <div class=" display_상품필터값 xans-record-">
                                                <strong class="title displaynone">
                                                    <span style="font-size:12px;color:#555555;">상품필터값</span>
                                                </strong>
                                                <span style="font-size:12px;color:#555555;">마블,데일리</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="restockIcon"></div>
                                </div>
                            </dl>
                        </div>
                    </li>

                 </ul>
                 <!-- // 상품리스트영역 ul -->
                  <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
            </div>
            <div class="swiper-button-next swiper-button-disabled" tabindex="0" role="button" aria-label="Next slide" aria-disabled="true"></div>
            <div class="swiper-button-prev" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="false"></div>
            <div class="swiper-scrollbar"></div>
        </div>
    </div>
 </div>
 <!-- // 장바구니 영역 -->
  <div id="spm_page_type" style="display:none">sq_basket_page</div>
  <div id="spm_banner_main"></div>
  <div id="spm_cafe_basket_wrap" style="display:none" class="xans-element- xans-order xans-order-totalsummary ">
    <input type="hidden" id="sf_basket_total_price" value="14,800">
     &nbsp; 
  </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script>
var swiper = new Swiper(".swiper-container", {
    slidesPerView: 3,
    spaceBetween: 30,
    pagination: {
        el: ".swiper-pagination",
        clickable: true,
    },
    scrollbar: {
        el: ".swiper-scrollbar",
        hide: true,
    },
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
});

swiper.update();
</script>

<script>
// 수량 감소, 증가
$("#minusBtn").on("click", function() {
    let value = parseInt($("#quantity_id_0").val()) || 0; // 값을 정수로 변환합니다.
    if (value > 1) { // 1 이상일 때만 감소하도록 합니다.
        $("#quantity_id_0").val(value - 1);
    } else {
        $("#quantity_id_0").val(1); // 0 이하로 내려가지 않도록 1로 고정합니다.
    }
});

$("#plusBtn").on("click", function() {
    let value = parseInt($("#quantity_id_0").val()) || 0; // 현재 값을 정수로 변환
    $("#quantity_id_0").val(value + 1); // 1을 더한 후 다시 설정
});
</script>

<script>
// 전체 버튼, 상품 버튼 체크 색상 변경
let allChecked = false;

// 전체 체크 버튼 색 변경
$("#checkcolor1").on("click", function() {
    allChecked = !allChecked; // 전체 체크 상태 반전

    // 전체와 상품 버튼 모두 같은 색으로 변경
    if (allChecked) {
        $("#checkcolor1, #checkcolor2").css("background-color", "black");
    } else {
        $("#checkcolor1, #checkcolor2").css("background-color", "#eee");
    }
});

// 상품 체크 버튼
$("#checkcolor2").on("click", function() {
    const isCurrentlyChecked = $("#checkcolor2").css("background-color") === "rgb(0, 0, 0)"; // 현재 색상이 검정인지 확인

    // 상품 버튼 색상 변경
    if (isCurrentlyChecked) {
        $("#checkcolor2").css("background-color", "#eee");
    } else {
        $("#checkcolor2").css("background-color", "black");
    }

    // 상품 버튼이 하나라도 해제되면 전체 버튼도 해제
    if ($("#checkcolor2").css("background-color") === "rgb(238, 238, 238)") {
        allChecked = false;
        $("#checkcolor1").css("background-color", "#eee");
    } else {
        // 상품 버튼이 모두 체크되면 전체 버튼도 체크
        allChecked = true;
        $("#checkcolor1").css("background-color", "black");
    }
});
</script>
<script>
//cart.jsp 또는 다른 페이지에서 사용할 쿠키 관련 함수들
document.addEventListener('DOMContentLoaded', function() {
    // 쿠키에서 장바구니 정보 가져오기
    let basketItems = getCookie("basketItems");
    
    if(basketItems) {
        let items = JSON.parse(basketItems);
        
        // 장바구니 아이템 표시
        displayCartItems(items);
        
        // 총 금액 계산
        updateTotalPrice(items);
        
        // 총 수량 표시
        updateQuantityDisplay(items);
    }
});
//쿠키 조회 함수 (동일한 함수 재사용)
function getCookie(name) {
    let matches = document.cookie.match(new RegExp(
        "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
    ));
    return matches ? decodeURIComponent(matches[1]) : undefined;
}

// 장바구니 아이템 표시
function displayCartItems(items) {
    const cartContainer = document.querySelector('.cart-items-container');
    
    items.forEach(item => {
        cartContainer.innerHTML += `
            <div class="cart-item" data-id="${item.id}">
                <div class="item-info">
                    <p>상품번호: ${item.id}</p>
                    <p>가격: ${Number(item.price).toLocaleString()}원</p>
                    <p>수량: ${item.quantity}</p>
                </div>
                <div class="item-control">
                    <button onclick="updateItemQuantity('${item.id}', 1)">+</button>
                    <button onclick="updateItemQuantity('${item.id}', -1)">-</button>
                    <button onclick="removeItem('${item.id}')">삭제</button>
                </div>
            </div>
        `;
    });
}

// 수량 업데이트
function updateItemQuantity(itemId, change) {
    let basketItems = getCookie("basketItems");
    let items = JSON.parse(basketItems);
    
    let item = items.find(item => item.id === itemId);
    if(item) {
        item.quantity = Math.max(1, (item.quantity || 1) + change);
        document.cookie = "basketItems=" + JSON.stringify(items) + "; path=/";
        
        // 페이지 새로고침 대신 동적 업데이트
        updateCartDisplay(items);
    }
}

// 아이템 삭제
function removeItem(itemId) {
    let basketItems = getCookie("basketItems");
    let items = JSON.parse(basketItems);
    
    items = items.filter(item => item.id !== itemId);
    document.cookie = "basketItems=" + JSON.stringify(items) + "; path=/";
    
    // 페이지 새로고침 대신 동적 업데이트
    updateCartDisplay(items);
}

// 총 금액 계산
function updateTotalPrice(items) {
    const total = items.reduce((sum, item) => 
        sum + (item.price * (item.quantity || 1)), 0);
    
    document.querySelector('.total-price').textContent = 
        `총 금액: ${total.toLocaleString()}원`;
}

// 전체 화면 업데이트
function updateCartDisplay(items) {
    // 목록 새로 그리기
    const cartContainer = document.querySelector('.cart-items-container');
    cartContainer.innerHTML = '';
    displayCartItems(items);
    
    // 총 금액 업데이트
    updateTotalPrice(items);
    
    // 헤더의 장바구니 카운트 업데이트
    let totalQuantity = items.reduce((sum, item) => sum + (item.quantity || 1), 0);
    document.querySelector(".count.EC-Layout-Basket-count").textContent = totalQuantity;
}
</script>
<%@include file="footer.jsp" %>
</html>
