<%@ page session="false"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@include file="/libs/foundation/global.jsp"%><%
    String content = (String)properties.get("content", "");
%>

<% if(content!="") { %>
<div><%= content %></div>
<% } else { %>
<div><h2>----- HTML Component -----</h2></div>
<% } %>
