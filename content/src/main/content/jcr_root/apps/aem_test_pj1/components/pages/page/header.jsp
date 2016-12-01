<%@ page session="false"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.day.cq.commons.Doctype,
                 com.day.text.Text" %>
<%@ include file="/libs/foundation/global.jsp" %><%
    int absLevel = 1;
    Page home = currentPage.getAbsoluteParent(absLevel);
    String currentRoot = home != null ? home.getPath() : Text.getAbsoluteParent(currentPage.getPath(), absLevel);
%>

<header id="main-header">
    <div id="searchform-wrapper">
        <form action="javascript:void(0);" id="search_mini_form" method="get" name="searchForm" role="search">
        <p class="clearfix">
        <input class="button" id="searchButton" name="q" value="GO" type="submit" onClick="set_query();" tabindex="3">
        <input value="" class="input-text" id="search" maxlength="128" name="" size="128" type="search" placeholder="" tabindex="2">
        <input type="hidden" id="search-url" value="">
        </p>

        <div id="search_autocomplete" class="search-autocomplete"></div>

        </form>
        <div class="text">
            <a href="<%= xssAPI.getValidHref(currentRoot+"/top/newsletter.html") %>" tabindex="4">ニュースレター</a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="<%= xssAPI.getValidHref(currentRoot+"/top/cart.html") %>" tabindex="5">ショッピングカート</a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="<%= xssAPI.getValidHref(currentRoot+"/top/cart/checkout.html") %>" tabindex="6">チェックアウト</a>
        </div>
    </div>
    <a href="<%= xssAPI.getValidHref(currentRoot+"/top.html") %>" class="logo" tabindex="1"><img alt="" src="/content/dam/demo/logo.png"></a>
    <!-- end of top navigation items and search -->

    <!-- primary navigation -->
    <div id="masthead">
        <nav id="top-menu">
        <ul>
            <li class="level0 nav-3 level-top dropdown">
            <a href="<%= xssAPI.getValidHref(currentRoot+"/top/women/womenlist.html") %>">WOMEN</a>
            <div class="links one-column-links">
            <div class="linksList">
            <ul class="clear">
                <li><a href="<%= xssAPI.getValidHref(currentRoot+"/top/women/onepiecelist.html") %>">ワンピース</a></li>
                <li><a href="<%= xssAPI.getValidHref(currentRoot+"/top/women/knitlist.html") %>">ニット</a></li>
                <li><a href="<%= xssAPI.getValidHref(currentRoot+"/top/women/skirtlist.html") %>">スカート</a></li>
                <li><a href="<%= xssAPI.getValidHref(currentRoot+"/top/women/walletlist.html") %>">財布</a></li>
            </ul>
            </div>
            </div>
            </li>

            <li class="level0 nav-3 level-top dropdown">
            <a href="<%= xssAPI.getValidHref(currentRoot+"/top/men/menlist.html") %>">MEN</a>
            <div class="links one-column-links">
            <div class="linksList">
            <ul class="clear">
                <li><a href="<%= xssAPI.getValidHref(currentRoot+"/top/men/suitelist.html") %>">スーツ</a></li>
                <li><a href="<%= xssAPI.getValidHref(currentRoot+"/top/men/vestlist.html") %>">ベスト</a></li>
                <li><a href="<%= xssAPI.getValidHref(currentRoot+"/top/men/t-shirtlist.html") %>">Tシャツ</a></li>
                <li><a href="<%= xssAPI.getValidHref(currentRoot+"/top/men/watchlist.html") %>">時計</a></li>
            </ul>
            </div>
            </div>
            </li>

            <li class="level0 nav-3 level-top dropdown">
            <a href="">CHILDREN</a>
            <div class="links one-column-links">
            <div class="linksList">
            <ul class="clear">
                <li><a href="">トップス</a></li>
                <li><a href="">パンツ</a></li>
                <li><a href="">シューズ</a></li>
                <li><a href="">アクセサリー</a></li>
            </ul>
            </div>
            </div>
            </li>

            <li class="level0 nav-3 level-top dropdown">
            <a href="">JEWELRY</a>
            <div class="links one-column-links">
            <div class="linksList">
            <ul class="clear">
                <li><a href="">ブレスレット</a></li>
                <li><a href="">イヤリング</a></li>
                <li><a href="">ネックレス</a></li>
                <li><a href="">リング</a></li>
            </ul>
            </div>
            </div>
            </li>

            <li class="level0 nav-3 level-top dropdown">
            <a href="">ACCESSORY</a>
            <div class="links one-column-links">
            <div class="linksList">
            <ul class="clear">
                <li><a href="">ピアス</a></li>
                <li><a href="">リストバンド</a></li>
                <li><a href="">ブレスレット</a></li>
                <li><a href="">アンクレット</a></li>
            </ul>
            </div>
            </div>
            </li>

            <li class="level0 nav-3 level-top dropdown">
            <a href="">SHOES</a>
            <div class="links one-column-links">
            <div class="linksList">
            <ul class="clear">
                <li><a href="">スニーカー</a></li>
                <li><a href="">サンダル</a></li>
                <li><a href="">パンプス</a></li>
                <li><a href="">ブーツ</a></li>
            </ul>
            </div>
            </div>
            </li>
        </ul>
        </nav>
    </div>
    <!-- end of primary navigation -->
</header>