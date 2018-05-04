<%@ page import="com.example.employeeapi.model.Employee" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工列表</title>
    <script type="text/javascript">
        function switchRowColor(id) {
            if(document.getElementsByTagName){
                var table = document.getElementById(id);
                var rows = table.getElementsByTagName("tr");
                for (i = 0; i < rows.length; i++) {
                    rows[i].className = i % 2==0 ? "evenBgColor" : "oddBgColor";
                }
            }
        }
        window.onload =  function () {
            switchRowColor("switchRowColor")
        }
    </script>
</head>
<style type="text/css">
    table.switchRowTable {
        font-family: 宋体;
        font-weight: bolder;
        font-size: 22px;
        border-color: black;
        border: solid 2px;
        width: 90%;
        border-collapse: collapse;
    }

    table.switchRowTable th {
        color: #FFFFFF;
        background-color: black;
        border: solid 2px;
        padding: 10px;
        border-color: black;
    }

    table.switchRowTable td {
        text-align: center;
        border: solid 2px;
        padding: 10px;
        border-color: black;
    }

    .oddBgColor {
        background-color: #FFFFFF;
    }

    .evenBgColor {
        background-color: #EEEEEE;
    }
</style>
<body>
<% List<Employee> mEmployees = (List<Employee>) request.getAttribute("employeeList"); %>
<table class="switchRowTable" id="switchRowColor" align="center">
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>年龄</th>
        <th>性别</th>
    </tr>
    <%

        for (Employee em : mEmployees) {
            out.print("<tr><td>" + em.getId() + "</td>");
            out.print("<td>" + em.getName() + "</td>");
            out.print("<td>" + em.getAge() + "</td>");
            out.print("<td>" + em.getGender() + "</td></tr>");
        }
    %>
</table>

</body>
</html>
