<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<c:forEach items="${requestScope.fundList}" var="fundList" varStatus="s">
    <tr class="${requestScope.mapstr[s.count % 2 == 0]}">
        <td id="ck">
            <input id="ok" type="checkbox" class="form-check-input" name="validation-checkbox-group-1">
        </td>
        <td class="d-none d-md-table-cell sorting" tabindex="0">${fundList.fname}</td>
        <td class="d-none d-md-table-cell sorting" tabindex="0">${fundList.fid}</td>
    </tr>
</c:forEach>