$(function() {
    $("#nav-left").css("height", $(window).height());
    // console.log($(window).height());
    $("#dashboard").css("width", $(window).width() - 300);
    $("#dashboard").css("min-height", $(window).height());
    $(".box").css("width", $("#dashboard").width() - 50);
    $("#half-box-left").css("width", ($("#dashboard").width() - 100) / 2);
    $("#half-box-right").css("width", ($("#dashboard").width() - 100) / 2);
    $("#logo").css("margin-left", ($("#nav-left").width() - 150) / 2);
    $("#record").css("margin-left", ($("#nav-left").width() - $("#record").width()) / 2);

    $("#sale").click(function() {
        // alert("xixixi");
        var a = $("#pre-price").val();
        var b = $("#valuation").val();
        var c = $("#target").val();
        if (a == "") {
            alert("请输入昨日净值");
        } else if (b == "") {
            alert("请输入估值");
        } else {
            $("#tab1 .tr1").each(function() {
                if (a * (1 + b / 100) > $(this).children("#up").html() * (1 + c / 100)) {
                    $(this).css("background", "darkred");
                }
                // alert($(this).children("#up").html() * (1 + c / 100));
            })
        }
    })
    // $("#delete").click(function() {
    //     if ($("#sale_price").val() == "") {
    //         alert("请输入卖出净值");
    //     } else {
    //         $("#tab1 .tr1").each(function() {
    //             // alert($(this).children("#ck").children("#ok").is(":checked"));
    //             // alert(document.domain);
    //             if ($(this).children("#ck").children("#ok").is(":checked")) {
    //                 // alert($(this).attr("id"));
    //                 // alert(document.location.pathname"./delete_fund_1?id=" + $(this).attr("id") + "&sold_date=" + $("#sd").val() + "&sold_price=" + $("#sale_price").val());
    //                 // alert(document.domain + "/fund/delete_fund_1?id=" + $(this).attr("id") + "&sold_date=" + $("#sd").val() + "&sold_price=" + $("#sale_price").val());
    //                 window.location.href = "http://" + document.domain + "/display/delete_fund_1?id=" + $(this).attr("id") + "&sold_date=" + $("#sd").val() + "&sold_price=" + $("#sale_price").val();
    //                 // $.get("http://localhost/fund/delete_fund_1?id=12&sold_date=2021-08-30&sold_price=666");
    //                 // window.location.href="http://localhost/fund/delete_fund_1?id=12&sold_date=2021-08-30&sold_price=666";
    //             }
    //         })
    //     }
    // })
});

function submit1(url) {
    $(function() {
        $("#form1").attr("action", url);
        $("#form1").submit();
        if ($("#hdate").val() == "") {
            alert("请输入买入时间");
        } else if ($("#unit_price").val() == "") {
            alert("请输入净值");
        } else if ($("#quantity").val() == "") {
            alert("请输入份额");
        } else {
            $("#form1").attr("action", url);
            $("#form1").submit();
        }
    });
}

// function submit2(url) {
//     $(function() {
//         if ($("#sale_price").val() == "") {
//             alert("请输入卖出净值");
//         } else {
//             $("#tab1 .tr1").each(function() {
//                 if ($(this).children("#ck").children("#ok").is(":checked")) {
//                     // alert($(this).attr("id"));
//                     // alert(document.location.pathname"./delete_fund_1?id=" + $(this).attr("id") + "&sold_date=" + $("#sd").val() + "&sold_price=" + $("#sale_price").val());
//                     // alert(document.domain + "/fund/delete_fund_1?id=" + $(this).attr("id") + "&sold_date=" + $("#sd").val() + "&sold_price=" + $("#sale_price").val());
//                     window.location.href = "http://" + document.domain + url + "/delete_fund_1?id=" + $(this).attr("id") + "&sold_date=" + $("#sd").val() + "&sold_price=" + $("#sale_price").val();
//                     // $.get("http://localhost/fund/delete_fund_1?id=12&sold_date=2021-08-30&sold_price=666");
//                     // window.location.href="http://localhost/fund/delete_fund_1?id=12&sold_date=2021-08-30&sold_price=666";
//                 }
//             })
//         }
//     });
// }