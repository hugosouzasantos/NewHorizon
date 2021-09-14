<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Classes.UploadFile" %>


<!DOCTYPE html>
<html>
<head>
<title>Cadastro Cliente</title>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<div
		Style="background-color: #69d1ce; padding: 2%; height: 5%; box-shadow: 0px 2px 2px #488a88;">
		<h2 Style="text-align: center;">Cadastro do cliente</h2>
	</div>
	<div
		Style="margin-left: 20%; margin-right: 20%; width: 60%; margin-bottom: 5%; border-style: solid #488a88; border-radius: 5px; background-color: #eee; margin-top: 5%;">
		<form method="post" action="dadoscliente.jsp" Style="padding-left: 5%; padding-right: 5%; padding-top: 2%; padding-bottom: 2%;" enctype="multipart/form-data">
			<div class="mb-3">
				<label class="form-label">Nome</label> <input type="text"
					class="form-control" name="nome" id="nome">
			</div>
			<div class="mb-3">
				<label class="form-label">Sobrenome</label> <input type="text"
					class="form-control" name="nomesobre" id="nomesobre">
			</div>
			<div class="mb-3">
				<label class="form-label">Email</label> <input type="text"
					placeholder="seuemail@email.com" name="email" id="email" class="form-control">
			</div>
			<div class="mb-3">
				<label class="form-label">Telefone</label> <input type="text"
					name="tel" id="tel" class="form-control">
			</div>
			<div class="mb-3">
				<label class="form-label">Data de nascimento</label> <input
					type="date" name="dtn" id="dtn" class="form-control">
			</div>
			<div class="mb-3">
				<label class="form-label">CPF</label> <input type="text"
					placeholder="xxx.xxx.xxx-xx" name="cpf" id="cpf" class="form-control">
			</div>
			<div class="mb-3">
				<div class="mb-3">
					<label class="form-label">Imagem do cliente</label><br> <input
						type="file" class="form-control" name="imagem" id="imagem">
				</div>
				<label class="form-label">Senha</label> <input type="password"
					name="senha" id="senha" class="form-control">
			</div>
			<div Style="padding-left: 85.5%;">
				<button
					Style="background-color: #69d1ce; border: 1px solid #488a88; color: black;"
					type="submit" class="btn btn-success">Cadastrar</button>
			</div>
		</form>
	</div>
</body>
</html>
