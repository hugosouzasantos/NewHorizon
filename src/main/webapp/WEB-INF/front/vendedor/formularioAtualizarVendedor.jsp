<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head></head>
<title>Atualizar Vendedor</title>
<meta charset="utf-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<div
		Style="background-color: #69d1ce; padding: 2%; height: 5%; box-shadow: 0px 2px 2px #488a88;">
		<h2 Style="text-align: center;">Atualizar dados do vendedor</h2>
	</div>
	<div
		Style="margin-left: 20%; margin-right: 20%; width: 60%; margin-bottom: 2%; border-style: solid #488a88; border-radius: 5px; background-color: #eee; margin-top: 5%;">
		<form method="post" action="controlador?action=atualizarVendedor"
			Style="padding-left: 5%; padding-right: 5%; padding-top: 2%; padding-bottom: 2%;">
			<div class="mb-3">
				<label class="form-label">Nome do vendedor</label> <input type="text"
					class="form-control" name="nome" value="${vendedor.nome}">
			</div>
			<div class="mb-3">
				<label class="form-label">Sobrenome</label> <input type="text"
					class="form-control" name="sobreNome" value="${vendedor.sobreNome}">
			</div>
			<div class="mb-3">
				<label class="form-label">Email</label> <input type="text"
					class="form-control" name="email" value="${vendedor.email}">
			</div>
			<div class="mb-3">
				<label class="form-label">Telefone</label> <input type="text"
					class="form-control" name="tel" value="${vendedor.tel}">
			</div>
			<div class="mb-3">
				<label class="form-label">Data de nascimento</label> <input type="date"
					class="form-control" name="dtn" value="${vendedor.dtn}">
			</div>
			<div class="mb-3">
				<label class="form-label">Endereçoo</label> <input type="text"
					class="form-control" name="endereco" value="${vendedor.endereco}">
			</div>
			<div class="mb-3">
				<label class="form-label">RG</label> <input type="text"
					class="form-control" name="rg" value="${vendedor.rg}">
			</div>
			<div class="mb-3">
				<label class="form-label">CPF</label> <input type="text"
					class="form-control" name="cpf" value="${vendedor.cpf}">
			</div>
			<div class="mb-3">
				<label class="form-label">Senha</label> <input type="text"
					class="form-control" name="senha" value="${vendedor.senha}">
			</div>
			<div class="mb-3">
				<label class="form-label">Plataforma principal de vendas</label><br> <select
					name="ppv" class="form-select">
					<option selected value="${vendedor.ppv}">${vendedor.ppv}</option>
					<option value="steam">Steam</option>
					<option value="epic">Epic Games</option>
					<option value="origin">Origin</option>
					<option value="microsoftstore">Microsoft Store</option>
					<option value="battenet">Battle Net</option>
				</select>
			</div>
			<div Style="padding-left: 85.5%; margin-top: 5%;">
				<button type="submit" class="btn btn-outline-success">Atualizar</button>
			</div>
		</form>
	</div>
	<div style="text-align: center; padding-bottom: 3%">
		<a href="controlador?action=gerenciarVendedores"><button type="button"
				class="btn btn-outline-primary">Pagina inicial</button></a>
	</div>


</body>
</html>