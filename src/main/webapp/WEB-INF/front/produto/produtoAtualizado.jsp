<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">

<title>Detalhes do produto</title>
</head>
<body>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>
	<div
		Style="background-color: #69d1ce; padding: 2%; height: 5%; box-shadow: 0px 2px 2px #488a88;">
		<h2 Style="text-align: center;">Os Dados do Produto ${produto.nome} Foram Atualizados.</h2>
	</div>
	<table class="table table-striped"
		style="width: 50%; margin-left: 25%; margin-right: 25%; margin-top: 3%;">
		<tr>
			<th><label for="nome">Nome:</label></th>
			<td>${produto.nome}</td>
		</tr>
		<tr>
			<th><label for="quantidade">Quantidade:</label></th>
			<td>${produto.quantidade}</td>
		</tr>
		<tr>
			<th><label for="plataforma">Plataforma:</label></th>
			<td>${produto.plataforma}</td>
		</tr>
		<tr>
			<th><label for="jogo">Jogo:</label></th>
			<td>${produto.jogo}</td>
		</tr>
		<tr>
			<th><label for="tipo">Tipo do produto:</label></th>
			<td>${produto.tipo}</td>
		</tr>
		<tr>
			<th><label for="raridade ">Raridade :</label></th>
			<td>${produto.raridade }</td>
		</tr>
		<tr>
			<th><label for="preco">Preço:</label></th>
			<td>${produto.preco}</td>
		</tr>
		<tr>
			<th><label for="descricao">Descrição:</label></th>
			<td>${produto.descricao}</td>
		</tr>
		<tr>
			<th><label for="codproduto">Codigo do produto:</label></th>
			<td>${produto.codproduto}</td>
		</tr>
	</table>
	<div style="text-align: center; padding-bottom: 3%">
		<a href="controlador?action=gerenciarProdutoes"><button
				type="button" class="btn btn-outline-primary">Pagina
				inicial</button></a>
	</div>
</body>
</html>