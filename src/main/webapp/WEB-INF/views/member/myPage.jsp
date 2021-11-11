<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<link rel="stylesheet" type="text/css" href="/css/myPage.css">
<section class="section hero is-fullheight pr-0 pl-0 pb-0">
   <div class="teeto-container container columns">
       <tiles:insertAttribute name="myAside" />
       <tiles:insertAttribute name="myMain" />
   </div>
</section>