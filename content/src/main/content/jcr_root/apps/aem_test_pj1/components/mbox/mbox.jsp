<%@ page session="false"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@include file="/libs/foundation/global.jsp"%><%
    String mboxName = (String)properties.get("mboxName", "");
    String defaultHTMLContent = (String)properties.get("defaultHTMLContent", "");
%>

<% if(mboxName != "") { %>
<div class="mboxDefault">
<%= defaultHTMLContent %>
</div>
<script type="text/javascript">mboxCreate("<%= mboxName %>");</script>

<% } else { %>
<br>表示用mboxを設定してください。<br><br>
<% } %>