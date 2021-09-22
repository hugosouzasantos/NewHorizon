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

Produto produtoAtualizado = new Produto(nome, plataforma, jogo, tipo, raridade, imagem, descricao, codProduto, quantidade, preco);

BancoDeDados banco = new BancoDeDados();

Produto produto = banco.buscarProdutoPorCodigo(codProduto);

if(produto != null){
	banco.atualizarProduto(produtoAtualizado);
}

if(produto != null) { 
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title> Produto Atualizado </title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
	</head>
	<body>
		<nav>
			<a id="pagPrin"  href="index.html"> NewHorizon </a>
			<div id="linksHe">
				<a class="pagSec" href="cadastroproduto.jsp"> Cadastrar produto </a>
				<a class="pagSec" href="#"> Login </a>
				<a class="pagSec" href="cadastrocliente.jsp"> Criar conta </a>
			</div>
		</nav>
		<h2>O Produto foi Atualizado</h2>
		<table>
			<tr>
				<th><label for="nome">Nome:</label></th>
				<td><%=produtoAtualizado.getNome()%></td>
			</tr>
			<tr>
				<th><label for="plataforma">Plataforma:</label></th>
				<td><%=produtoAtualizado.getPlataforma()%></td>
			</tr>
			<tr>
				<th><label for="jogo">Jogo:</label></th>
				<td><%=produtoAtualizado.getJogo()%></td>
			</tr>
			<tr>
				<th><label for="tipo">Tipo:</label></th>
				<td><%=produtoAtualizado.getTipo()%></td>
			</tr>
			<tr>
				<th><label for="raridade">Raridade:</label></th>
				<td><%=produtoAtualizado.getRaridade()%></td>
			</tr>
			<tr>
				<th><label for="imagem">Imagem:</label></th>
				<td><%=produtoAtualizado.getImagem()%></td>
			</tr>
			<tr>
				<th><label for="descricao">Descrição:</label></th>
				<td><%=produtoAtualizado.getDescricao()%></td>
			</tr>
			<tr>
				<th><label for="codigo">Código:</label></th>
				<td><%=produtoAtualizado.getCodProduto()%></td>
			</tr>
			<tr>
				<th><label for="quantidade">Quantidade:</label></th>
				<td><%=produtoAtualizado.getQuantidade()%></td>
			</tr>
			<tr>
				<th><label for="preco">Preço:</label></th>
				<td><%=produtoAtualizado.getPreco()%></td>
			</tr>
		</table>
		<footer>
            <h4> Trabalho PWII</h4>
        </footer>
	</body>
</html>

<% } else { %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Remover Produto</title>	
		<link rel="stylesheet" type="text/css" href="css/style.css">
	</head>
	<body>
		<nav>
            <a id="pagPrin"  href="index.html"> NewHorizon </a>
            <div id="linksHe">
                <a class="pagSec" href="cadastroproduto.jsp"> Cadastrar produto </a>
                <a class="pagSec" href="#"> Login </a>
                <a class="pagSec" href="cadastrocliente.jsp"> Criar conta </a>
            </div>
        </nav>
		<div id="container">
			<div id="body">
				<div>
					<p>Produto não encontrado!</p>
					<p>produto: #<%=codProduto%></p>
				</div>
			</div>
		</div>
		<footer>
            <h4> Trabalho PWII</h4>
        </footer>
	</body>
</html>
<% } %>