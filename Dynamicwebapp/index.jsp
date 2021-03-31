<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="rs" dataSource="jdbc/TestDB">
select empid, empname, empsal from emp
</sql:query>

<html>
  <head>
    <title>Emp Table</title>
  </head>
  <body>

  <h2>Results</h2>

<c:forEach var="row" items="${rs.rows}">
    empID ${row.empid}<br/>
    empName ${row.empname}<br/>
    empSal ${row.empsal}<br/>
</c:forEach>

  </body>
</html>
