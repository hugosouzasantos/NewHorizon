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
		<title>Dados do Produto</title>
		<meta charset="utf-8">
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
				<h2 id="headerDiv"> Dados do Produto </h2>			
				<table>
					<thead>
						<tr>
							<td>Parametro</td>
							<td>Valor</td>
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
							<td>Descriçõo</td>
							<td><%=novoProduto.getDescricao() %></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<footer>
            <h4> Trabalho PWII</h4>
        </footer>
	</body>
</html>
