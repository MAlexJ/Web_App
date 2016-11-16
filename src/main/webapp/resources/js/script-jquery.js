$(document).ready(function () {

        $(".headroom").headroom({
            "tolerance": 20,
            "offset": 50,
            "classes": {
                "initial": "animated",
                "pinned": "slideDown",
                "unpinned": "slideUp"
            }
        });

        $("#tablediv").hide();
        $("#showTable").click(function (event) {
            $.get('tables', function (responseJson) {
                if (responseJson != null) {
                    $("#countrytable").find("tr:gt(0)").remove();
                    var table1 = $("#countrytable");
                    $.each(responseJson, function (key, value) {
                        var rowNew = $("<tr><td></td></tr>");
                        rowNew.children().eq(0).text(value.toString());
                        rowNew.appendTo(table1);
                    });
                }
            });
            $("#tablediv").show();
        });

        $("#tableFind").hide();
        $("#showFind").click(function (event) {
            var name = $('#inputFind').val();

            $.get('find', {tableName: name}, function (responseJson) {
                if (responseJson != null) {
                    $("#countryTableFind").find("tr:gt(0)").remove();
                    var table1 = $("#countryTableFind");
                    var flag = false;
                    $.each(responseJson, function (key, value) {
                        if (key.valueOf() == 0) {
                            flag = true;
                        }
                        var rowNew = $("<tr><td></td><td></td><td></td></tr>");
                        rowNew.children().eq(0).text(value['id']);
                        rowNew.children().eq(1).text(value['name']);
                        rowNew.children().eq(2).text(value['password']);
                        rowNew.appendTo(table1);
                    });
                    if (flag) {
                        $("#tableFind").show();
                    } else {
                        $("#tableFind").hide();
                    }

                }
            });

        });

        $('body').on('click', '.add', function () {
            $('<p></p><div class="row test"><div class="col-xs-5 col-sm-4 col-md-3"><input type="text" class="form-control" name="table_name" placeholder="name"></div> <div class="col-xs-5 col-sm-4 col-md-3"> <input type="text" class="form-control" name="table_password" placeholder="password"></div><button type="button" class="btn-sm btn-action remove"><i class="fa fa-minus-circle"></i>  </button></div>').fadeIn('slow').appendTo('.inputs');
        });
        $('body').on('click', '.remove', function () {
            $(this).parent().remove();
        });

        $("#showClear").click(function () {
            var name = $('#inputClear').val();
            $.get('clear', {clear: name});
        });

        $("#showCreate").click(function () {
            $.ajax({
                type: "POST",
                url: "./create",
                data: jQuery("#myForm").serialize()
            });
        });

        $(function () {
            $("[data-toggle='tooltip']").tooltip();
        });

        // >>>> Logout by the time if cookie 'Logout' eq true <<<<<<
        // https://github.com/maxfierke/jquery-sessionTimeout-bootstrap?__hstc=214758600.2dfd39bfa77e913256144dc32952dc8e.1479158118722.1479158118722.1479158118722.1&__hssc=214758600.1.1479158118722&__hsfp=3677484651


        var checkCookies = function () {
            var valueCookie = $.cookie("Login");
            if (valueCookie) {
                console.log(">> Login " + valueCookie);
                return true;
            } else {
                console.log("<<< Login || undefined : " + valueCookie);
                return false;
            }
        };

        //~~~~~~~~~~~~~~~~~~~~~~~~~~```````````````````````````````````````````````````
        var idleTimer = null;
        var idleState = false; // состояние отсутствия
        var idleWait = 3000; // время ожидания в мс. (1/1000 секунды)

        $(function () {

            $(document).bind('mousemove keydown scroll', function () {

                // проверка Cookies
                var isLogin = checkCookies();

                if (isLogin) {

                    // отменяем прежний временной отрезок
                    clearTimeout(idleTimer);

                    if (idleState == true) {

                        // Действия на возвращение пользователя
                        console.log("С возвращением!");

                    }

                    idleState = false;

                    idleTimer = setTimeout(function () {


                        // Действия на отсутствие пользователя
                        console.log("Вы отсутствовали более чем " + idleWait / 1000 + " секунд.");



                        idleState = true;
                    }, idleWait);

                }
            });

            $("body").trigger("mousemove"); // сгенерируем ложное событие, для запуска скрипта
        });

    }
);


