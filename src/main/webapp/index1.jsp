<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <title>基金</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="js/jquery.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/script.js"></script>
    <!--        <script type="text/javascript"></script>-->
</head>
<body>
<div id="nav-left">

    <a href="${pageContext.request.contextPath}/fund_1" style="text-decoration: none">
        <img src="image/icon.gif" id="logo" style="margin-bottom: 10px;">
        <h3 style="text-decoration: none; color: darkred; text-align: center">DoubleQ</h3>
    </a>
    <br><br><br>
    <%--            &nbsp;&nbsp;--%>
    <%--            <i class="bi-plus-circle-fill" style="width: 30px;"></i>--%>
    <%--&lt;%&ndash;            <a href="">&ndash;%&gt;--%>

    <%--&lt;%&ndash;            </a>&ndash;%&gt;--%>
    <%--            <br>--%>
    <table class="table table-hover table-col1" style="color: red;">
        <tr>
            <td><a href="http://www.doubleq666.cn/fund_1/fund_1">景顺长城新能源产业股票C 011329</a></td>
        </tr>
        <tr>
            <td><a href="http://www.doubleq666.cn/fund_2/fund_1">景顺长城电子信息产业股票A 010003</a></td>
        </tr>
        <tr>
            <td><a href="http://www.doubleq666.cn/fund_3/fund_1">景顺长城新兴成长混合 260108</a></td>
        </tr>
        <tr>
            <td><a href="http://www.doubleq666.cn/fund_4/fund_1">中欧医疗健康混合C 003096</a></td>
        </tr>
        <tr>
            <td><a href="http://www.doubleq666.cn/fund_5/fund_1">广发高端制造股票A 004997</a></td>
        </tr>
        <tr>
            <td><a href="./gain">收益统计</a></td>
        </tr>
    </table>
    <div id="record">
        <a href="https://beian.miit.gov.cn/">蜀ICP备 2021022086号</a>
    </div>
</div>
<div id="dashboard">
    <div class="box shadow">
        <h3>广发高端制造股票A</h3>
        <h4>004997</h4>
    </div>
    <div class="box shadow">
        <i class="bi-house"></i>
        &nbsp;
        <h5 class="no-enter">持有</h5>
        <br><br>
        <table border="1" class="table table-bordered table-hover">
            <tr class="table-success">
                <th>编号</th>
                <th>买入时间</th>
                <th>买入净值</th>
                <th>份额</th>
            </tr>
            <c:forEach items="${requestScope.funds_hold}" var="fund" varStatus="s">
                <tr>
                    <td>${s.count}</td>
                    <td>${fund.ddate}</td>
                    <td>${fund.unit_price}</td>
                    <td>${fund.quantity}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <div class="box shadow">
        <i class="bi-sticky"></i>
        &nbsp;
        <h5 class="no-enter">收益</h5>
        <br><br>
        <table border="1" class="table table-bordered table-hover">
            <tr class="table-success">
                <th>编号</th>
                <th>买入时间</th>
                <th>卖出时间</th>
                <th>买入净值</th>
                <th>卖出净值</th>
                <th>份额</th>
                <th>收益</th>
            </tr>
            <c:forEach items="${requestScope.funds_profit}" var="fund" varStatus="s">
                <tr>
                    <td>${s.count}</td>
                    <td>${fund.ddate}</td>
                    <td>${fund.ssold_date}</td>
                    <td>${fund.unit_price}</td>
                    <td>${fund.sold_price}</td>
                    <td>${fund.quantity}</td>
                    <td>${(fund.sold_price - fund.unit_price) * fund.quantity}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <%--            <div class="box shadow">--%>
    <%--                <i class="bi-window-sidebar"></i>--%>
    <%--                &nbsp;--%>
    <%--                <h5 class="no-enter">预期查询</h5>--%>
    <%--            </div>--%>
    <div id="half-box-left" class="shadow">
        <i class="bi-download"></i>
        &nbsp;
        <h5 class="no-enter">买入</h5>
        <br><br>
        <%--                <form action="${pageContext.request.contextPath}/addTo_fund_1", method="post">--%>
        <form method="post" id="form1">
            <label for="hdate">买入时间</label>
            <input type="text" class="form-control"
                   value="${requestScope.simpleDateFormat.format(requestScope.now)}" id="hdate" name="hdate">
            <br>
            <label for="unit_price">净值</label>
            <input type="text" class="form-control" id="unit_price" name="unit_price">
            <br>
            <label for="quantity">份额</label>
            <input type="text" class="form-control" id="quantity" name="quantity">
            <br>
            <div style="text-align: center">
                <input type="button" value="提交" class="btn btn-success" id="buy"
                <%--                               onclick="this.value = '${pageContext.request.contextPath}/addTo_fund_1'">--%>
                <%--                               onclick="this.form.action='/display/addTo_fund_1'; this.form.submit()">--%>
                       onclick="submit1('${pageContext.request.contextPath}/addTo_fund_1')">
                <%--                               onclick="location.href='${pageContext.request.contextPath}/fund_1'">--%>
                &nbsp;&nbsp;
                <input type="reset" value="重置" class="btn btn-warning">
            </div>
        </form>
    </div>
    <div id="half-box-right" class="shadow">
        <i class="bi-upload"></i>
        &nbsp;
        <h5 class="no-enter">卖出</h5>
        <br><br>
        <form action="#" method="post">
            <label for="target">目标收益率</label>
            &nbsp;&nbsp;
            <input type="text" value="8.00" class="form-control" style="display: inline; width: 80px"
                   id="target" name="target">&nbsp;%
            <br><br>
            <label for="pre-price" style="float: left">昨日净值</label>
            &nbsp;&nbsp;
            <input type="text" class="form-control" style="display: inline; width: auto;" id="pre-price"
                   name="pre-price">
            <br><br>
            <label for="valuation">估值</label>
            &nbsp;&nbsp;
            <input type="text" class="form-control" style="display: inline; width: 80px;" id="valuation"
                   name="valuation">&nbsp;%
            <br><br>
            <div style="text-align: center">
                <%--                        <button value="查找" onclick="search()"></button>--%>
                <input type="button" value="查找" class="btn btn-success" id="sale" onclick="satified()">
                &nbsp;&nbsp;
                <input type="reset" value="重置" class="btn btn-warning">
            </div>
        </form>
        <br>
        <form action="">
            <table border="1" class="table table-bordered table-hover" id="tab1">
                <tr class="table-success">
                    <th>选择</th>
                    <th>买入时间</th>
                    <th>买入净值</th>
                    <th>份额</th>
                </tr>
                <c:forEach items="${requestScope.funds_hold}" var="fund" varStatus="s">
                    <tr class="tr1" id="${fund.id}">
                        <td id="ck"><input type="checkbox" class="form-check-input" id="ok"></td>
                        <td>${fund.ddate}</td>
                        <td id="up">${fund.unit_price}</td>
                        <td id="num">${fund.quantity}</td>
                    </tr>
                </c:forEach>
            </table>
            <label for="sd">卖出时间</label>
            &nbsp;&nbsp;
            <input type="text" class="form-control" style="width: auto; display: inline;"
                   value="${requestScope.simpleDateFormat.format(requestScope.now)}" id="sd" name="sd">
            <br><br>
            <label for="sale_price">卖出净值</label>
            &nbsp;&nbsp;
            <input type="text" class="form-control" style="width: auto; display: inline;" id="sale_price"
                   name="sale_price">
            <br><br>
            <div style="text-align: center">
                <input type="submit" value="卖出" class="btn btn-success" id="delete"
                       onclick="submit2('${pageContext.request.contextPath}')">
            </div>
        </form>
    </div>
</div>
</body>
</html>