<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <meta charset="utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<div Style="background-color: #69d1ce; padding: 2%; height: 5%; box-shadow: 0px 2px 2px #488a88;"><h2 Style="text-align: center;">Login Moderador</h2></div>
<div Style="margin-left: 20%; margin-right: 20%; width: 60%; margin-bottom: 2%; border-style: solid #488a88; border-radius: 5px; background-color: #eee; margin-top: 5%;">
<form action="controlador?action=confirmLoginModerador" method="post" Style="padding-left: 5%; padding-right: 5%; padding-top: 2%; padding-bottom: 2%;">

  <div class="mb-3">
                <label class="form-label" for="usuarioModerador">Usuario</label> <input type="text"
                    class="form-control" id="usuarioModerador" name="usuarioModerador" placeholder="email">
            </div>
            <div class="mb-3">
                <label class="form-label" for="senhaModerador">Senha</label> <input type="password"
                    class="form-control" id="senhaModerador" name="senhaModerador" placeholder="********">
            </div>

  <div Style="padding-left: 85.5%; margin-top: 5%;"><button type="submit" class="btn btn-outline-success">Entrar</button></div>
  
</form>
</div>
<div style=" text-align: center; padding-bottom: 3%"><a href="controlador?action=index"><button type="button" class="btn btn-outline-primary">Página inicial</button></a></div>
</body>
</html>