<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:forEach items="${requestScope.funds_hold}" var="fund" varStatus="s">
    <tr class="${requestScope.mapstr[s.count % 2 == 0]}">

        <td class="d-none d-md-table-cell sorting" tabindex="0"
            aria-controls="datatables-dashboard-projects" rowspan="1" colspan="1"
            aria-label="Assignee: activate to sort column ascending">${s.count}</td>
        <td class="d-none d-md-table-cell sorting" tabindex="0"
            aria-controls="datatables-dashboard-projects" rowspan="1" colspan="1"
            aria-label="Assignee: activate to sort column ascending">${fund.ddate}</td>
        <td class="d-none d-md-table-cell sorting" tabindex="0"
            aria-controls="datatables-dashboard-projects" rowspan="1" colspan="1"
            aria-label="Assignee: activate to sort column ascending">${fund.unit_price}</td>
        <td class="d-none d-md-table-cell sorting" tabindex="0"
            aria-controls="datatables-dashboard-projects" rowspan="1" colspan="1"
            aria-label="Assignee: activate to sort column ascending">${fund.quantity}</td>
    </tr>
</c:forEach>