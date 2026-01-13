<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dark Mode Calculator</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: #1a1a1a; /* Dark background */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        color: #e0e0e0;
    }


    .calculator {
        background: #2b2b2b; /* Slightly lighter dark card */
        padding: 40px 50px;
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.5);
        text-align: center;
        width: 400px;
    }

    h1 {
        color: #00e5ff; /* Accent color */
        margin-bottom: 30px;
        font-size: 28px;
    }

    input[type="number"] {
        width: 80px;
        padding: 10px;
        margin: 10px;
        border: 1px solid #555;
        border-radius: 8px;
        font-size: 16px;
        outline: none;
        background: #1f1f1f;
        color: #e0e0e0;
        transition: 0.3s;
    }

    input[type="number"]:focus {
        border-color: #00e5ff;
        box-shadow: 0 0 5px #00e5ff;
    }

    button {
        padding: 10px 18px;
        margin: 10px 5px;
        font-size: 18px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        background: #00e5ff;
        color: #1a1a1a;
        transition: 0.3s;
    }

    button:hover {
        background: #00b8cc;
    }

    form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .inputs {
        margin-bottom: 20px;
    }
</style>
</head>
<body>

<div class="calculator">
    <h1>Calculator</h1>
    <form action="result" method="GET">
        <div class="inputs">
            Num1: <input type="number" name="num1" required>
            Num2: <input type="number" name="num2" required>
        </div>

        <div class="buttons">
            <button type="submit" name="op" value="+">+</button>
            <button type="submit" name="op" value="-">-</button>
            <button type="submit" name="op" value="*">*</button>
            <button type="submit" name="op" value="/">/</button>
        </div>
    </form>
</div>

</body>
</html>
