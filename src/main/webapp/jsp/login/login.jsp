<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="container text-center">
    <br>
    <br>
    <h2 class="thin">What Is The Flower Market?</h2>
    <p class="text-muted"> Wilmington Flower Market Inc. is a tradition, a corporation and an all volunteer fundraising
        organization dedicated to improving the lives of Delaware’s children.</p>
    <p class="text-muted">Most Delawarean’s are familiar with this annual event, but for the volunteers, it is a year’s
        worth of hard work and planning, capped off by a fun-filled three-day event at Rockford Park. The dedicated
        volunteers of Flower Market work with one goal in mind and that is to help make children’s dreams come true.
        When you visit the Flower Market, you will feel the excitement. You’ll hear the ring of laughter in the air as
        children share their delight in all the carnival rides and games. You’ll find a large selection of plants and
        flowers for your garden, as well as a multitude of crafts and merchant wares for sale. As you stroll through the
        park and listen to live music performed on the WDEL stage, you’ll find a variety of delicious food, and meet
        local celebrities such as Miss Delaware. This well-known tradition is held every Mother’s Day weekend, Thursday
        and Friday 10am-8pm, Saturday 10am-7pm.</p>
    <br>
    <br>
</div>

<div class="container text-center">
    <div class="row">
        <div class="col-lg-offset-4 col-xs-4">
            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal"
                    title="Database Connection">
                <i class="fa fa-sign-in"></i>
                Login
            </button>
        </div>
    </div>
</div>

<jsp:include page="login_modal.jsp" flush="true"/>