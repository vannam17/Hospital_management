<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Patient Login</title>
</head>
<body>
<h1>Login</h1>
<form action="login" method="POST">
  <div>
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required>
  </div>
  <div>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required>
  </div>
  <button type="submit">Login</button>
</form>
<c:if test="${not empty errorMessage}">
  <p style="color: red;">${errorMessage}</p>
</c:if>
</body>
</html>
