<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<head></head>
	<title>Atualizar Produto</title>
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
			<h2 id="headerDiv"> Atualizar Produto </h2>
			<form method="post" action="produtoAtualizado.jsp">
				<div class="input">
					<label>Nome do produto</label> 
					<input type="text" name="nome" value="<%=produto.getNome()%>">
				</div>
				<div class="input">
					<label>Quantidade</label> 
					<input type="number" name="quantidade" value="<%=produto.getQuantidade()%>">
				</div>
				<div class="input">
					<label>Plataforma</label> 
					<input type="text" name="plataforma" value="<%=produto.getPlataforma()%>">
				</div>
				<div class="input">
					<label>Jogo</label> 
					<input type="text" name="jogo" value="<%=produto.getJogo()%>">
				</div>
				<div class="input">
					<label>Tipo do produto</label> 
					<select name="tipo" class="form-select">
						<option selected value="<%=produto.getTipo()%>"><%=produto.getTipo()%></option>
						<option value="cosmeticop">Cosmético pago</option>
						<option value="cosmeticof">Cosmético gratuito</option>
						<option value="gema">Gema/Runa</option>
						<option value="trilha">Trilha sonora</option>
						<option value="consumivel">Consumível</option>
						<option value="arma">Arma</option>
						<option value="equipamento">Equipamento</option>
						<option value="diverso">Diverso</option>
					</select>
				</div>
				<div class="input">
					<label>Raridade</label> 
					<select name="raridade" class="form-select">
						<option selected value="<%=produto.getRaridade()%>"><%=produto.getRaridade()%></option>
						<option value="comum">Comum</option>
						<option value="incomum">Incomum</option>
						<option value="raro">Raro</option>
						<option value="mraro">Muito raro</option>
						<option value="exotico">Exotico</option>
					</select>
				</div>
				<!-- Ainda n�o sabemos enviar arquivos para o servlet porque voc� n�o ensinou lol -->
				<div class="input">
					<label>Imagem do produto</label> 
					<input type="file" name="imagem" value="<%=produto.getImagem()%>">
				</div>
				<div class="input">
					<label> Preço </label>
					<span>R$ 0.00</span> 
					<input type="text" name="preco" value="<%=produto.getPreco()%>">
				</div>
				<div class="input">
					<label>Descrição</label> 
					<textarea rows="2" name="descricao"> <%=produto.getDescricao()%> </textarea>

				</div >
					<select name="codProduto">
						<option selected value="<%=codProduto%>"><%=codProduto%></option>
					</select>
				<div id="subDiv" class="input">
					<input id="submit" type="submit">Atualizar</input>
				</div>
			</form>
		</div>
	</div>
	<div>
		<a href="gerenciarProdutos.jsp"><button type="button">Pagina inicial</button></a>
	</div>
	<footer>
		<h4> Trabalho PWII</h4>
	</footer>
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
					<p>produto: #<%=codProduto%></p>
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
