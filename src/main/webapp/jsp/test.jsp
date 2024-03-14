<%--
  Created by IntelliJ IDEA.
  User: chldm
  Date: 2024-03-14
  Time: 오후 12:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>회원가입 폼</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <h2>회원가입</h2>
    <form action="signup" method="post">
        <div class="form-group">
            <label for="username">사용자 이름:</label>
            <input type="text" class="form-control" id="username" placeholder="사용자 이름 입력" name="username" required>
        </div>
        <div class="form-group">
            <label for="email">이메일:</label>
            <input type="email" class="form-control" id="email" placeholder="이메일 입력" name="email" required>
        </div>
        <div class="form-group">
            <label for="password">비밀번호:</label>
            <input type="password" class="form-control" id="password" placeholder="비밀번호 입력" name="password" required>
        </div>
        <div class="form-group">
            <label for="confirmPassword">비밀번호 확인:</label>
            <input type="password" class="form-control" id="confirmPassword" placeholder="비밀번호 다시 입력" name="confirmPassword" required>
        </div>
        <button type="submit" class="btn btn-primary">회원가입</button>
    </form>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

