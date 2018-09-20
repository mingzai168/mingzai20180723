<%--
  Created by IntelliJ IDEA.
  User: wenpeng23
  Date: 2016-10-10
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html>
<head>
    <title>本科毕业设计（论文）中期检查</title>
    <style type="text/css">
        table{
            border-collapse: collapse;
        }
        table > tbody > tr > td{
            border: 1px solid black;
            padding-left: 4px;
            padding-right: 4px;
        }
        pre {
            white-space: pre-wrap;
            white-space: -moz-pre-wrap;
            white-space: -pre-wrap;
            white-space: -o-pre-wrap;
            word-wrap: break-word;
            height: 120px;
            font-size: 14px;
        }
    </style>
</head>
<body>
<table align="center">
    <tr>
        <th align="center">
            <font size="4">华南农业大学${currentOrg.name}</font>
            <br/>
            <font size="5">本科毕业设计（论文）中期检查</font>
        </th>
    </tr>
</table>
<table width="700" align="center" border="1" cellspacing="0" bordercolor="#666666">
    <tr>
        <td colspan="3" height="40" align="justify" width="80">论文题目</td>
        <td colspan="11" height="40" align="left" width="340">${thesis.topic}</td>
    </tr>
    <tr>
        <td colspan="3" height="40" align="justify" width="90">指导老师</td>
        <td colspan="2" height="40" align="left" width="80">${teacher.username}</td>
        <td colspan="2" height="40" align="justify" width="60">职 称</td>
        <td colspan="2" height="40" align="left" width="80">${teacher.info.title}</td>
        <td colspan="2" height="40" align="justify" width="100">检查日期</td>
        <td colspan="3" height="40" align="justify" width="140">
            <fmt:formatDate value="${midcheck.cdate}" pattern="yyyy.MM.dd"/>
        </td>
    </tr>
    <tr>
        <td colspan="3" height="40" align="justify" width="80">学生姓名</td>
        <td colspan="2" height="40" align="left" width="80">${student.username}</td>
        <td colspan="2" height="40" align="justify" width="60">学号</td>
        <td colspan="2" height="40" align="left" width="120">${student.account}</td>
        <td colspan="2" height="40" align="justify" width="100">专业班级</td>
        <td colspan="5" height="40" align="left" width="190">${student.info.grade}级${student.info.clazz}</td>
    </tr>
    <tr>
        <td colspan="16" width="640" align="left">
            <span style="font-weight:bold;">内容要求（含技术路线）检查</span><br/>
            <pre>${midcheck.content}</pre>
        </td>
    </tr>
    <tr>
        <td colspan="16" width="640" align="left">
            <span style="font-weight:bold;">进度检查</span><br/>
            <pre>${midcheck.schedule}</pre>
        </td>
    </tr>
    <tr>
        <td colspan="16" width="640" align="left">
            <span style="font-weight:bold;">阅读文献检查</span><br/>
            <pre>${midcheck.reference}</pre>
        </td>
    </tr>
    <tr>
        <td colspan="16" width="640" align="left">
            <span style="font-weight:bold;">存在问题及指导老师意见</span><br/>
            <pre>${midcheck.advice}</pre>
        </td>
    </tr>
    <tr>
        <td colspan="4" align="justfity" height="40" width="160">指导老师签名</td>
        <td colspan="4" align="justfity" height="40" width="160"></td>
        <td colspan="4" align="justfity" height="40" width="140"> 学生签名</td>
        <td colspan="4" align="justfity" height="40" width="180"></td>
    </tr>
</table>
</body>
</html>
