<%@ page session="false"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.text.NumberFormat,
                 com.day.cq.commons.Doctype,
                 com.day.cq.wcm.api.components.DropTarget,
                 com.day.cq.wcm.foundation.Image,
                 com.day.cq.wcm.foundation.Placeholder" %>
<%@include file="/libs/foundation/global.jsp"%><%
    Image image = new Image(resource);
    image.setIsInUITouchMode(Placeholder.isAuthoringUIModeTouch(slingRequest));

    String imageTitle = properties.get("imageTitle", "");
    String linkURL = properties.get("linkURL", "");
    String alt = properties.get("alt", "");
    String filePath = (String)properties.get("fileReference","");

    int price = 0;
    if(properties.get("price", "")!= "") {
        price = Integer.parseInt(properties.get("price", ""));
    }
    String formatPrice = NumberFormat.getCurrencyInstance().format(price);
%>

<% if(filePath != "") { %>
<a href="<%= linkURL %>.html"><img src="<%= filePath %>" alt="<%= alt %>"></a>
<h2 class="product-name"><a href="<%= linkURL %>.html"><%= imageTitle %></a></h2>
<div class="price-box"><%= formatPrice %></div>
<% } else { %>
<br>画像を設定してください。<br><br>
<% } %>