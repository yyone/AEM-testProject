<%@ page session="false"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.day.cq.commons.Doctype" %>
<%@ include file="/libs/foundation/global.jsp" %><%
    String xs = Doctype.isXHTML(request) ? "/" : "";
    String favIcon = currentDesign.getPath() + "/favicon.ico";
    if (resourceResolver.getResource(favIcon) == null) {
        favIcon = null;
    }
%>
<head>
	<cq:includeClientLib categories="cq.widgets" />
    <cq:includeClientLib categories="demo.common.styles" />
    <cq:include script="/libs/cq/cloudserviceconfigs/components/servicelibs/servicelibs.jsp"/>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="cleartype" content="on">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-Control" content="no-cache">
    <meta http-equiv="expires" content="1">

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

    <% if (favIcon != null) { %>
    <link rel="icon" type="image/vnd.microsoft.icon" href="<%= xssAPI.getValidHref(favIcon) %>"<%=xs%>>
    <link rel="shortcut icon" type="image/vnd.microsoft.icon" href="<%= xssAPI.getValidHref(favIcon) %>"<%=xs%>>
    <% } %>

    <!-- Isobar Sandbox DTM -->
    <script src="//assets.adobedtm.com/b289e74c035d548b146d772f9d7a139928952315/satelliteLib-0a81c2ca3b1ca8f699e69de99a0b80e5810ab184.js"></script>

    <title>Adobe Analytics 実装トレーニング用サイト</title>
</head>