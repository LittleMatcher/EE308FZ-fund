<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:forEach items="${requestScope.funds_profit}" var="fund" varStatus="s">
  <tr class="${requestScope.mapstr[s.count % 2 == 0]}">
    <td>${s.count}</td>
    <td>${fund.ddate}</td>
    <td>${fund.ssold_date}</td>
    <td>${fund.unit_price}</td>
    <td>${fund.sold_price}</td>
    <td>${fund.quantity}</td>
    <td>${(fund.sold_price - fund.unit_price) * fund.quantity}</td>
  </tr>
</c:forEach>