
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<h2>${messge}</h2>
<table>
<c:forEach items="${list}" var="book">
    <tr>
        <td>${book}</td>
    </tr>
</c:forEach>
</table>
</body>
</html>
