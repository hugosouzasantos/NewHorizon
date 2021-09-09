<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Classes.Produto"%>
<%@ page import="Classes.BancoDeDados"%>

<%
String codProduto = request.getParameter("codProduto");

BancoDeDados banco = new BancoDeDados();

Produto produto = banco.buscarProdutoPorCodigo(codProduto);
%>

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

<title>Descrição Produto</title>
<link rel="stylesheet" href="css.css" />
</head>
<body>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>

	<%
	if (produto != null) {
	%>
	<div
		Style="background-color: #69d1ce; padding: 2%; height: 5%; box-shadow: 0px 2px 2px #488a88;">
		<h2 Style="text-align: center;">Detalhes do produto</h2>
	</div>
	<table class="table table-striped"
		style="width: 50%; margin-left: 25%; margin-right: 25%; margin-top: 3%;">
		<tr>
			<th><label for="nome">Nome:</label></th>
			<td><%=produto.getNome()%></td>
		</tr>
		<tr>
			<th><label for="plataforma">Plataforma:</label></th>
			<td><%=produto.getPlataforma()%></td>
		</tr>
		<tr>
			<th><label for="jogo">Jogo:</label></th>
			<td><%=produto.getJogo()%></td>
		</tr>
		<tr>
			<th><label for="tipo">Tipo:</label></th>
			<td><%=produto.getTipo()%></td>
		</tr>
		<tr>
			<th><label for="raridade">Raridade:</label></th>
			<td><%=produto.getRaridade()%></td>
		</tr>
		<tr>
			<th><label for="imagem">Imagem:</label></th>
			<td><%=produto.getImagem()%></td>
		</tr>
		<tr>
			<th><label for="descricao">Descrição:</label></th>
			<td><%=produto.getDescricao()%></td>
		</tr>
		<tr>
			<th><label for="codigo">Código:</label></th>
			<td><%=produto.getCodProduto()%></td>
		</tr>
		<tr>
			<th><label for="quantidade">Quantidade:</label></th>
			<td><%=produto.getQuantidade()%></td>
		</tr>
		<tr>
			<th><label for="preco">Preço:</label></th>
			<td><%=produto.getPreco()%></td>
		</tr>
	</table>
	<div style="text-align: center; padding-bottom: 3%">
	<a href="gerenciarProdutos.jsp"><button type="button"
			class="btn btn-outline-primary">Pagina inicial</button></a>
</div>
</body>
</html>

<%
} else {
%>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">

<title>Remover Produto</title>
<link rel="stylesheet" href="css.css" />
</head>

<body style="background-color: #3d3d3d;">
	<div
		Style="margin-top: 20%; background-color: #dc3545; padding:; height: 15%; box-shadow: 0px 2px 2px #dc3545; text-align: center; font-size: 20px; color: black;">
		<b style="font-size: 40px;">Produto não encontrado!</b><br>nº
		produto: #
		<%=codProduto%></div>
	<div style="text-align: center; padding-bottom: 3%; margin-top: 20%;">
		<a href="gerenciarProdutos.jsp"><button type="button"
				class="btn btn-danger" style="color: black;">Pagina inicial</button></a>
	</div>
</body>
<%
}
%>


