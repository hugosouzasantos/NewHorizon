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
				<h2 id="headerDiv">Produto removido</h2>
				<table>
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
			</div>
		</div>
	</body>
</html>

<%
} else {
%>
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
					<p>produto: #<%=codProduto%> </p>
				</div>
			</div>
		</div>
		<footer>
			<h4> Trabalho PWII</h4>
		</footer>
	</body>
</html>
<%
}
%>
