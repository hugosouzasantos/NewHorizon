<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Classes.Produto" %>    
<%@ page import="Classes.BancoDeDados" %> 


<%
String nome = request.getParameter("nome");
int quantidade = Integer.parseInt(request.getParameter("quantidade"));
String plataforma = request.getParameter("plataforma");
String jogo = request.getParameter("jogo");
String tipo = request.getParameter("tipo");
String raridade = request.getParameter("raridade");
String imagem = request.getParameter("imagem");
float preco = Float.parseFloat(request.getParameter("preco"));
String descricao = request.getParameter("descricao");
String codProduto = request.getParameter("codProduto");

Produto novoProduto = new Produto(nome, plataforma, jogo, tipo, raridade, imagem, descricao, codProduto, quantidade, preco);

BancoDeDados banco = new BancoDeDados();

banco.cadastarProduto(novoProduto);
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Dados do Produto</title>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Bootstrap CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">		
	</head>
	<body>			
		<h2 style="text-align: center; margin-top: 2%;">Dados do Produto:</h2>		
		<table class="table table-striped" style=" width: 80%; margin-left: 10%; margin-right: 10%; margin-top: 3%;">
			<thead>
				<tr>
					<td><b>Parametro</b></td>
					<td><b>Valor</b></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Cod. Prod.</td>
					<td><%=novoProduto.getCodProduto() %></td>
				</tr>
				<tr>
					<td>Nome</td>
					<td><%=novoProduto.getNome() %></td>
				</tr>
				<tr>
					<td>Quantidade</td>
					<td><%=novoProduto.getQuantidade() %></td>
				</tr>
				<tr>
					<td>Plataforma</td>
					<td><%=novoProduto.getPlataforma() %></td>
				</tr>
				<tr>
					<td>Jogo</td>
					<td><%=novoProduto.getJogo() %></td>
				</tr>
				<tr>
					<td>Tipo do produdo</td>
					<td><%=novoProduto.getTipo() %></td>
				</tr>
				<tr>
					<td>Raridade</td>
					<td><%=novoProduto.getRaridade() %></td>
				</tr>
				<tr>
					<td>Imagem</td>
					<td><%=novoProduto.getImagem() %></td>
				</tr>
				<tr>
					<td>Preço</td>
					<td><%=novoProduto.getPreco() %></td>
				</tr>
				<tr>
					<td>Descrição</td>
					<td><%=novoProduto.getDescricao() %></td>
				</tr>
			</tbody>
		</table>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin=\"anonymous\"></script>
		<div style=" text-align: center; padding-bottom: 3%"><a href="gerenciarProdutos.jsp"><button type="button" class="btn btn-outline-primary">Pagina inicial</button></a></div>
	</body>
</html>
