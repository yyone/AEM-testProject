<%@ page session="false"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ include file="/libs/foundation/global.jsp" %>

<body class="cms-index-index cms-home">
    <div id="container">
        <cq:include script="header.jsp"/>

        <div id="main" class="col1-layout">
            <cq:include path="par" resourceType="foundation/components/parsys"/>
        </div>
        <div style="clear: both;"></div>

        <cq:include script="footer.jsp"/>
    </div>

    <!-- CloudService用 -->
    <cq:include path="cloudservices" resourceType="cq/cloudserviceconfigs/components/servicecomponents"/>
</body>