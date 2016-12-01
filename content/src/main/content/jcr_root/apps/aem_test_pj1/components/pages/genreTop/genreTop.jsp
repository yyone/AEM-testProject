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
                <div class="genrelist-view">
                <section id="single-main-promo">
                    <div>
                        <div class="banner ps-white-ninety small left dark">
                        <cq:include path="parMain" resourceType="foundation/components/parsys"/>
                        </div>
                    </div>
                </section>

                <div class="promo-block tri-promos">
                    <div class="promo first">
                        <cq:include path="parSub1" resourceType="foundation/components/parsys"/>
                    </div>
                    <div class="promo">
                        <cq:include path="parSub2" resourceType="foundation/components/parsys"/>
                    </div>
                    <div class="promo">
                        <cq:include path="parSub3" resourceType="foundation/components/parsys"/>
                    </div>
                </div>
                </div>
            </div>
            <div style="clear: both;"></div>

            <cq:include script="footer.jsp"/>
        </div>

        <!-- CloudService用 -->
        <cq:include path="cloudservices" resourceType="cq/cloudserviceconfigs/components/servicecomponents"/>
    </body>
</html>
