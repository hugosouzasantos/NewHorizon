<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head></head>
<title>Atualizar Produto</title>
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
		<h2 Style="text-align: center;">Atualizar dados do produto</h2>
	</div>
	<div
		Style="margin-left: 20%; margin-right: 20%; width: 60%; margin-bottom: 2%; border-style: solid #488a88; border-radius: 5px; background-color: #eee; margin-top: 5%;">
		<form method="post" action="controlador?action=atualizarProduto"
			Style="padding-left: 5%; padding-right: 5%; padding-top: 2%; padding-bottom: 2%;">
			<div class="mb-3">
				<label class="form-label">Nome do produto</label> <input type="text"
					class="form-control" name="nome" value="${produto.nome}">
			</div>
			<div class="mb-3">
				<label class="form-label">Quantidade</label> <input type="text"
					class="form-control" name="quantidade" value="${produto.quantidade}">
			</div>
			<div class="mb-3">
				<label class="form-label">Plataforma</label> <input type="text"
					class="form-control" name="plataforma" value="${produto.plataforma}">
			</div>
			<div class="mb-3">
				<label class="form-label">Jogo</label> <input type="text"
					class="form-control" name="jogo" value="${produto.jogo}">
			</div>
			<div class="mb-3">
				<label class="form-label">Tipo do produto</label><br> <select
					name="ppv" class="form-select">
					<option selected value="${produto.tipo}">${produto.tipo}</option>
					<option value="cospago">Cosmético Pago</option>
					<option value="cosgratis">Cosmético Gratuito</option>
					<option value="gemaruna">Gema/Runa</option>
					<option value="trilhasonora">Trilha Sorona</option>
					<option value="consumivel">Consumivel</option>
					<option value="arma">Arma</option>
					<option value="equipamento">Equipamento</option>
					<option value="diverso">Diverso</option>
				</select>
			</div>
			<div class="mb-3">
				<label class="form-label">Raridade</label><br> <select
					name="ppv" class="form-select">
					<option selected value="${produto.raridade}">${produto.raridade}</option>
					<option value="comum">Comum</option>
					<option value="incomum">Incomum</option>
					<option value="raro">Raro</option>
					<option value="muitoraro">Muito Raro</option>
					<option value="exotico">Exótico</option>
					<option value="arma">Arma</option>
					<option value="equipamento">Equipamento</option>
					<option value="diverso">Diverso</option>
				</select>
			</div>
			<div class="mb-3">
				<label class="form-label">Preço</label> <input type="text"
					class="form-control" name="preco" value="${produto.preco}">
			</div>
			<div class="mb-3">
				<label class="form-label">Descrição</label> <input type="text"
					class="form-control" name="descricao" value="${produto.descricao}">
			</div>
			<div class="mb-3">
				<label class="form-label">Codigo do produto</label> <input type="text"
					class="form-control" name="codproduto" value="${produto.codproduto}">
			</div>
			<div Style="padding-left: 85.5%; margin-top: 5%;">
				<button type="submit" class="btn btn-outline-success">Atualizar</button>
			</div>
		</form>
	</div>
	<div style="text-align: center; padding-bottom: 3%">
		<a href="controlador?action=gerenciarProduto"><button type="button"
				class="btn btn-outline-primary">Pagina inicial</button></a>
	</div>


</body>
</html>