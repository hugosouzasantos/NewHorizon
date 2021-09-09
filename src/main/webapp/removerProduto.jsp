<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Classes.Produto"%>
<%@ page import="Classes.BancoDeDados"%>

<%
String codProduto = request.getParameter("codProduto");
BancoDeDados banco = new BancoDeDados();
Produto novoProduto = banco.buscarProdutoPorCodigo(codProduto);

if (novoProduto != null) {
	banco.removerProduto(novoProduto.getCodProduto());
}
%>

<%
if (novoProduto != null) {
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

<title>Remover Produto</title>
<link rel="stylesheet" href="css.css" />
</head>
<body>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>
	<div
		Style="background-color: #69d1ce; padding: 2%; height: 5%; box-shadow: 0px 2px 2px #488a88;">
		<h2 Style="text-align: center;">Produto removido</h2>
	</div>
	<table class="table table-striped"
		style="width: 80%; margin-left: 10%; margin-right: 10%; margin-top: 3%;">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">Nome</th>
				<th scope="col">Plataforma</th>
				<th scope="col">Jogo</th>
				<th scope="col">Tipo</th>
				<th scope="col">Raridade</th>
				<th scope="col">Imagem</th>
				<th scope="col">Descrição</th>
				<th scope="col">Quantidade</th>
				<th scope="col">Preço</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row"><%=novoProduto.getCodProduto()%></th>
				<td><%=novoProduto.getNome()%></td>
				<td><%=novoProduto.getPlataforma()%></td>
				<td><%=novoProduto.getJogo()%></td>
				<td><%=novoProduto.getTipo()%></td>
				<td><%=novoProduto.getRaridade()%></td>
				<td><%=novoProduto.getImagem()%></td>
				<td><%=novoProduto.getDescricao()%></td>
				<td><%=novoProduto.getQuantidade()%></td>
				<td><%=novoProduto.getPreco()%></td>
			</tr>
		</tbody>
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
