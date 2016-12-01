<%@ page session="false"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.text.NumberFormat,
                 com.day.cq.commons.Doctype,
                 com.day.text.Text,
                 com.day.cq.wcm.api.components.DropTarget,
                 com.day.cq.wcm.foundation.Image,
                 com.day.cq.wcm.foundation.Placeholder" %><%
%><%@include file="/libs/foundation/global.jsp"%><%
    int absLevel = 1;
    Page home = currentPage.getAbsoluteParent(absLevel);
    String currentRoot = home != null ? home.getPath() : Text.getAbsoluteParent(currentPage.getPath(), absLevel);

    Image image = new Image(resource);
    image.setIsInUITouchMode(Placeholder.isAuthoringUIModeTouch(slingRequest));

    String imageTitle = properties.get("imageTitle", "");
    String alt = properties.get("alt", "");
    String filePath = (String)properties.get("fileReference","");
    String details = (String)properties.get("details","");
    details = details.replaceAll("[\r\n]", "<br>");

    int price = 0;
    if(properties.get("price", "")!= "") {
        price = Integer.parseInt(properties.get("price", ""));
    }
    String formatPrice = NumberFormat.getCurrencyInstance().format(price);
%>

<% if(filePath != "") { %>
<div class="product-view">
    <div class="product-img-box">
        <img style="opacity: 1;" src="<%= filePath %>" alt="<%= alt %>" width="408">
    </div>

    <div class="product-main-info">
       <div class="product-name"><h1><%= imageTitle %></h1></div>
       <div class="price-box"><span class="price"><%= formatPrice %></span></div>
       <h2 class="details-title">詳細</h2>
       <p class="details"><%= details %></p>

        <div class="product-section">
        <form action="<%= xssAPI.getValidHref(currentRoot+"/top/cart.html") %>" method="get">
        <button type="submit" class="btn-cart" value="cart">カートに入れる</button>
        </form>
        </div>

    </div>
</div>
<% } else { %>
<br>画像を設定してください。<br><br>
<% } %>