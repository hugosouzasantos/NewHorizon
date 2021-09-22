<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Classes.Produto"%>
<%@ page import="Classes.BancoDeDados"%>

<%
String codProduto = request.getParameter("codProduto");

BancoDeDados banco = new BancoDeDados();

Produto produto = banco.buscarProdutoPorCodigo(codProduto);
%>

<%
	if (produto != null) {
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Descrição Produto</title>
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
				<h2 id="headerDiv">Detalhes do produto</h2>
				<table>
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
		<title> Remover Produto </title>
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
					<p>produto: <%=codProduto%></p>
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


