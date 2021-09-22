<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<title>Cadastro Cliente</title>
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
			<h2 id="headerDiv"> Cadastro do cliente </h2>
			<form method="post" action="dadoscliente.jsp"></form>
				<div class="input">
					<label">Nome</label> 
					<input type="text" name="nome"">
				</div>
				<div class="input">
					<label">Sobrenome</label> 
					<input type="text" name="nomesobre">
				</div>
				<div class="input">
					<label">Email</label> 
					<input type="text" placeholder="seuemail@email.com" name="email">
				</div>
				<div class="input">
					<label">Telefone</label> 
					<input type="text" name="tel">
				</div>
				<div class="input">
					<label">Data de nascimento</label> 
					<input type="date" name="dtn">
				</div>
				<div class="input">
					<label">CPF</label> 
					<input type="text" name="cpf">
				</div>
				<div  class="input">
					<label">Imagem do cliente</label> 
					<input type="file" name="imagem">
				</div>
				</div  class="input">
					<label">Senha</label> 
					<input type="password" name="senha" id="senha">
				</div>
				<div" id="subDiv" class="input">
					<input type="submit"> Cadastrar </input>
				</div>
			</form>
		</div>
		<footer>
            <h4> Trabalho PWII</h4>
        </footer>
	</div>
</body>
</html>
