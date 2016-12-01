<%@ page session="false"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.day.cq.commons.Doctype,
                 com.day.cq.wcm.api.components.DropTarget,
                 com.day.cq.wcm.foundation.Image,
                 com.day.cq.wcm.foundation.Placeholder" %>
<%@include file="/libs/foundation/global.jsp"%><%
    Image image = new Image(resource);
    image.setIsInUITouchMode(Placeholder.isAuthoringUIModeTouch(slingRequest));

    String imageTitle = (String)properties.get("imageTitle", "");
    String linkURL = (String)properties.get("linkURL", "");
    String height = (String)properties.get("height", "");
    String width = (String)properties.get("width", "");
    String alt = (String)properties.get("alt", "");
    String filePath = (String)properties.get("fileReference","");
%>

<% if(filePath != "") { %>
<a href="<%= linkURL %>.html">
    <img src="<%= filePath %>" alt="<%= alt %>" height="<%= height %>px" width="<%= width %>px">
</a>
<h3 class="promo-title"><%= imageTitle %></h3>
<% } else { %>
<br>画像を設定してください。<br><br>
<% } %>