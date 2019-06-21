<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/brand/css/style.css"/>
    <link rel="stylesheet" href="/brand/css/member.css?ver=1"/>
    <link rel="stylesheet" href="/brand/css/board.css?ver=1" />
    <link rel="stylesheet" href="/brand/css/sub.css?ver=5"/>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>   
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    
    <title>BRAND</title>

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
    <script src="/brand/js/menu.js"></script>
    <script src="/brand/js/top.js"></script>
    <script src="/brand/js/terms.js?ver=1"></script>
    <script src="/brand/js/login.js"></script>
    <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
	<script src="../js/postcode.js"></script>
    <script src="/brand/js/list.js?ver=1"></script>
    <script src="/brand/js/select_option.js?ver=3"></script>
    <script src="/brand/js/select_option_item.js"></script>
    <script src="/brand/js/cart.js"></script>
    <script src="/brand/js/check.js"></script>

  </head>

  <body>
    <div id="wrapper">

      <header>
        <a href="/brand" class="logo"><img src="/brand/img/logo.png" alt="브랜드로고" /></a>

        <nav>
        <c:if test="${ empty member }">
          <a class="login" href="/brand/member/login.do"></a>
        </c:if>
        <c:if test="${ !empty member }">
          <a class="logout" href="/brand/member/logout.do"></a>
          <a class="mypage" href="/brand/member/mypage.do"></a>
          <a class="cartmenu" href="/brand/shop/cart.do?bc_uid=${ member.bm_uid }"></a>
        </c:if>
        </nav>

        <ul class="gnb">
          <li>
            <a href="/brand/info/brand.do"></a>
            <ul class="sub">
              <li class="brand"><a href="/brand/info/brand.do"></a>
              <li class="store"><a href="/brand/info/store.do"></a>
            </ul>
          </li>

          <li>
            <a href="/brand/shop/list.do?cat=outer"></a>
            <ul class="sub">
              <li class="outer"><a href="/brand/shop/list.do?cat=outer"></a>
              <li class="top"><a href="/brand/shop/list.do?cat=top"></a>
              <li class="bottom"><a href="/brand/shop/list.do?cat=bottom"></a>
              <li class="acc"><a href="/brand/shop/list.do?cat=acc"></a>
            </ul>
          </li>

          <li>
            <a href="/brand/shop/sales.do"></a>
            <ul class="sub">
              <li class="sales"><a href="/brand/shop/sales.do"></a>
            </ul>
          </li>

          <li>
            <a href="/brand/board/board.do?bb_cat=notice"></a>
            <ul class="sub">
              <li class="notice"><a href="/brand/board/board.do?bb_cat=notice"></a>
              <li class="event"><a href="/brand/board/board.do?bb_cat=event"></a>
            </ul>
          </li>

          <li>
            <a href="/brand/board/board.do?bb_cat=faq"></a>
            <ul class="sub">
              <li class="faq"><a href="/brand/board/board.do?bb_cat=faq"></a>
              <li class="qna"><a href="/brand/board/qna.do"></a>
            </ul>
          </li>

        </ul>
      </header>