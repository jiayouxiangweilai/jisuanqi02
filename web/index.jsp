<%--
  Created by IntelliJ IDEA.
  User: wei
  Date: 2018/11/30
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>标题</title>
  </head>
  <body>
  <form action="index.jsp" method="post">
    <table border="1">
      <tr>
        <td colspan="2">简单计数器</td>
        <td></td>
      </tr>

      <tr>
        <td>第一个参数</td>
        <td><input type="text" name="firstNum"> </td>
      </tr>

      <tr>
        <td>运算符</td>
        <td>
          <select name="oprator">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
          </select>
        </td>
      </tr>

      <tr>
        <td>第二个参数</td>
        <td><input type="text" name="secondNum"> </td>
      </tr>

      <tr>
        <td colspan="2"><input type="submit" value="提交"> </td>
      </tr>

    </table>
  </form>

  <jsp:useBean id="calulate" class="Calculator" scope="page"/>
  <jsp:setProperty name="calulator" property="*"/>
  <jsp:scriptlet>
    calculator.calculate();
  </jsp:scriptlet>
  <c:out value="计算得出的结果为："/>
  <jsp:getProperty name="calulator" property="firstNum"/>
  <jsp:getProperty name="calulator" property="operator"/>
  <jsp:getProperty name="calulator" property="secondNum"/>
  <c:out value=" = "/>
  <jsp:getProperty name="calulator" property="result"/>


  </body>
</html>
