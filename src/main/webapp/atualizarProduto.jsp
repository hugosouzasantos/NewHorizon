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
<head>
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
		<h2 Style="text-align: center;">Atualizar Produto</h2>
	</div>
	<div
		Style="margin-left: 20%; margin-right: 20%; width: 60%; margin-bottom: 2%; border-style: solid #488a88; border-radius: 5px; background-color: #eee; margin-top: 5%;">
		<form method="post" action="produtoAtualizado.jsp"
			Style="padding-left: 5%; padding-right: 5%; padding-top: 2%; padding-bottom: 2%;">
			<div class="mb-3">
				<label class="form-label">Nome do produto</label> <input type="text"
					class="form-control" name="nome" value="<%=produto.getNome()%>">
			</div>
			<div class="mb-3">
				<label class="form-label">Quantidade</label> <input type="number"
					class="form-control" name="quantidade"
					value="<%=produto.getQuantidade()%>">
			</div>
			<div class="mb-3">
				<label class="form-label">Plataforma</label> <input type="text"
					class="form-control" name="plataforma"
					value="<%=produto.getPlataforma()%>">
			</div>
			<div class="mb-3">
				<label class="form-label">Jogo</label> <input type="text"
					class="form-control" name="jogo" value="<%=produto.getJogo()%>">
			</div>
			<div class="mb-3">
				<label class="form-label">Tipo do produto</label><br> <select
					name="tipo" class="form-select">
					<option selected value="<%=produto.getTipo()%>"><%=produto.getTipo()%></option>
					<option value="cosmeticop">Cosm�tico pago</option>
					<option value="cosmeticof">Cosm�tico gratuito</option>
					<option value="gema">Gema/Runa</option>
					<option value="trilha">Trilha sonora</option>
					<option value="consumivel">Consum�vel</option>
					<option value="arma">Arma</option>
					<option value="equipamento">Equipamento</option>
					<option value="diverso">Diverso</option>
				</select>
			</div>
			<div class="mb-3">
				<label class="form-label">Raridade</label><br> <select
					name="raridade" class="form-select">
					<option selected value="<%=produto.getRaridade()%>"><%=produto.getRaridade()%></option>
					<option value="comum">Comum</option>
					<option value="incomum">Incomum</option>
					<option value="raro">Raro</option>
					<option value="mraro">Muito raro</option>
					<option value="exotico">Exotico</option>
				</select>
			</div>
			<!-- Ainda n�o sabemos enviar arquivos para o servlet porque voc� n�o ensinou lol -->
			<div class="mb-3">
				<label class="form-label">Imagem do produto</label><br> <input
					type="file" class="form-control" name="imagem"
					value="<%=produto.getImagem()%>">
			</div>
			<label class="form-label">Pre�o</label><br>
			<div class="input-group mb-3">
				<span class="input-group-text">R$ 0.00</span> <input type="text"
					class="form-control" name="preco" value="<%=produto.getPreco()%>">
			</div>
			<div class="mb-3">
				<label class="form-label">Descri��o</label>
				<textarea placeholder="Uma descri��o breve do seu produto"
					class="form-control" rows="2" name="descricao"> <%=produto.getDescricao()%> </textarea>

			</div>

			<select name="codProduto" Style="visibility: hidden">
				<option selected value="<%=codProduto%>"><%=codProduto%></option>
			</select>

			<div Style="padding-left: 85.5%; margin-top: 5%;">
				<button type="submit" class="btn btn-outline-success">Atualizar</button>
			</div>
		</form>
	</div>
	<div style="text-align: center; padding-bottom: 3%">
		<a href="gerenciarProdutos.jsp"><button type="button"
				class="btn btn-outline-primary">Pagina inicial</button></a>
	</div>

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
		<b style="font-size: 40px;">Produto n�o encontrado!</b><br>n�
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