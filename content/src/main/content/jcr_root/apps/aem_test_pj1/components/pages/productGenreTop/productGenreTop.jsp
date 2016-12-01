<%@ page session="false"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ include file="/libs/foundation/global.jsp" %>

<html html="ja">
    <!-- サイドキック表示用 -->
    <cq:include script="/libs/wcm/core/components/init/init.jsp"/>

    <cq:include script="head.jsp"/>

    <body class="cms-index-index cms-home">
        <div id="container">
            <cq:include script="header.jsp"/>

            <div id="main" class="col1-layout">
                <cq:include path="parBreadcrumbs" resourceType="foundation/components/parsys"/>

                <!-- main page content -->
                <div id="product-group-1" class="category-products">
                <ul class="products-grid">
                    <li class="item first">
                    <cq:include path="parProduct1" resourceType="foundation/components/parsys"/>
                    </li>

                    <li class="item">
                    <cq:include path="parProduct2" resourceType="foundation/components/parsys"/>
                    </li>

                    <li class="item">
                    <cq:include path="parProduct3" resourceType="foundation/components/parsys"/>
                    </li>

                    <li class="item">
                    <cq:include path="parProduct4" resourceType="foundation/components/parsys"/>
                    </li>
                </ul>
                </div>
            </div>
            <div style="clear: both;"></div>

            <cq:include script="footer.jsp"/>
        </div>

        <!-- CloudService用 -->
        <cq:include path="cloudservices" resourceType="cq/cloudserviceconfigs/components/servicecomponents"/>
    </body>
</html>
