<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculation Result</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: #1a1a1a;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        color: #e0e0e0;
    }

    .container {
        background: #2b2b2b;
        padding: 30px 50px;
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.5);
        text-align: center;
        width: 400px;
    }

    h1 {
        color: #00e5ff;
        margin-bottom: 20px;
        font-size: 28px;
    }

    .result {
        font-size: 22px;
        font-weight: bold;
        color: #00ff99;
        margin-top: 20px;
    }

    .error {
        font-size: 20px;
        color: #ff4d4d;
        margin-top: 20px;
    }
</style>
</head>
<body>

<div class="container">
    <h1>Calculation Result</h1>

    <%
        String n1 = (String) request.getAttribute("num1");
        String n2 = (String) request.getAttribute("num2");
        String op = (String) request.getAttribute("op");

        double num1 = Double.parseDouble(n1);
        double num2 = Double.parseDouble(n2);
        double result = 0;

        boolean error = false;

        if(op.equals("+")){
            result = num1 + num2;
        } else if(op.equals("-")){
            result = num1 - num2;
        } else if(op.equals("*")){
            result = num1 * num2;
        } else if(op.equals("/")){
            if(num2 == 0){
                out.println("<div class='error'>Cannot divide by zero</div>");
                error = true;
            } else {
                result = num1 / num2;
            }
        }

        if(!error){
            out.println("<div class='result'>The Result of Calculation: " + result + "</div>");
        }
    %>
</div>

</body>
</html>

