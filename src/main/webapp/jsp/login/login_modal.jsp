<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">Login Form</h4>
            </div>
            <form role="form" class="form-horizontal" method="post" action="login">
                <div class="modal-body">
                    <div class="form-group has-feedback">
                        <label class="control-label col-xs-3"> User name:</label>

                        <div class="col-xs-6">
                            <div class="input-group">
                                <input type="text" class="form-control" required="required" placeholder="admin" name="user_name"
                                       pattern="[A-Za-z]{1,}">
                            </div>

                        </div>
                    </div>
                    <div class="form-group has-feedback">
                        <label class="control-label col-xs-3"> Password:</label>

                        <div class="col-xs-6">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="111" required="required" name="password"
                                       pattern="[A-Za-z0-9]{1,}">
                            </div>

                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Back</button>
                    <button id="save" type="submit" class="btn btn-primary">Enter</button>
                </div>
            </form>
        </div>
    </div>
</div>