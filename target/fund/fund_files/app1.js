function sleep(sleepDuration) {
    var now = new Date().getTime();
    while(new Date().getTime() < now + sleepDuration){ /* Do nothing */ }
}


function satisfied() {
    $(function () {
        // alert("xixixi");
        var a = $("#pre-price").val();
        var b = $("#valuation").val();
        var c = $("#target").val();
        if (a === "") {
            alert("请输入昨日净值");
        } else if (b === "") {
            alert("请输入估值");
        } else {
            $(".tr2").each(function () {
                $(this).removeClass("selected");
                // alert(a * (1 + b / 100));
                // alert($(this).children("#up").html() * (1 + c / 100));
                if (a * (1 + b / 100) > $(this).children("#up").html() * (1 + c / 100)) {
                    // $(this).css("background", "darkred");
                    // alert("miaomiao");
                    $(this).addClass("selected");
                }
                // alert($(this).children("#up").html() * (1 + c / 100));
            })
        }
    });
}

function submit1(url) {
    $(function() {
        if ($("#hdate").val() == "") {
            alert("请输入买入时间");
        } else if ($("#unit_price").val() == "") {
            alert("请输入净值");
        } else if ($("#quantity").val() == "") {
            alert("请输入份额11");
        } else {
            // alert("提交成功");
            // $.ajax({
            //     url: "./xixix.html",
            //     type: "post",
            //     data: {
            //         "hdate": $("#hdate").val(),
            //         "unit_price": $("#unit_price").val(),
            //         "quantity": $("#quantity").val()
            //     },
            //     success: function(data) { // 传回一个json，分别有hold和profit
            //         $("#hold").html(data);
            //     },
            //
            // })
            // $.ajax({
            //     url: "/getHold",
            //     type: "get",
            //     success: function(data) {
            //         $("#hold").html(data);
            //     }
            // })

            $("#form1").attr("action", url);
            $("#form1").submit();

            // for (var i = 1; i <= 1; i++) {
            //     $.ajax({
            //         url: "http://localhost:8081/fund_war_exploded/addFund",
            //         type: "post",
            //         data: {
            //             fid: new Date().getTime(),
            //             fname: 666
            //         },
            //         success: function(data) {
            //             alert("haha");
            //             console.log("xixixi");
            //         },
            //         error: function() {
            //             alert("wangwang");
            //             console.log("wuwuwu")
            //         }
            //     })
            // }
            // sleep(100000);

        }
    });
}

function submit2(url) {
    $(function() {
        if ($("#sale_price").val() === "") {
            alert("请输入卖出净值");
        } else {
            $(".tr1").each(function() {
                if ($(this).children("#ck").children("#ok").is(":checked")) {
                    alert("miaomiao");
                    // alert($(this).attr("id"));
                    // alert(document.location.pathname"./delete_fund_1?id=" + $(this).attr("id") + "&sold_date=" + $("#sd").val() + "&sold_price=" + $("#sale_price").val());
                    // alert(document.domain + "/fund/delete_fund_1?id=" + $(this).attr("id") + "&sold_date=" + $("#sd").val() + "&sold_price=" + $("#sale_price").val());
                    window.location.href = "http://" + document.domain + url + "/delete_fund_1?id=" + $(this).attr("id") + "&sold_date=" + $("#sd").val() + "&sold_price=" + $("#sale_price").val();
                    // $.get("http://localhost/fund/delete_fund_1?id=12&sold_date=2021-08-30&sold_price=666");
                    // window.location.href="http://localhost/fund/delete_fund_1?id=12&sold_date=2021-08-30&sold_price=666";
                }
            })
        }
    });
}

