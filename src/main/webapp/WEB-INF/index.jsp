<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<title>New Horizon</title>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="WEB-INF/css/style.css">
		<style>@import url('https://fonts.googleapis.com/css2?family=Karla:wght@200;400;800&display=swap');
            
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	text-decoration: none;
	color: black;
	font-family: 'Karla', sans-serif;
}

html {
    height: 100%;
}

body {
    height: 100%;
    font-size: 100%;
    background: rgb(27,27,27);
}

.header {
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-around;
    padding: 20px;
}

.header-logo {
    font-size: 45px;
    font-weight: bold;
    color: #df3800;
}

.header-nav {
    display: flex;
    gap: 30px;
}

.header-nav-item {
    font-size: 12px;
    color: white;
}

.main {
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: flex-start;
	gap: 80px;
	padding: 20px;
	padding-top: 40px;
}

.main-div {
	display: flex;
	flex-direction: column;
	border: 1px solid black;
	padding: 20px;
	padding-bottom: 26px;
	width: 180px;
	border-radius: 15px;
	background-color: rgb(40,40,40);
	gap: 20px;
	align-items: center;
}

.main-div-titulo {
	color: white;
	font-size: 27px;
}

.main-div-div {
	display: flex;
	flex-direction: column;
	align-items: flex-satart;
	gap: 20px;
}

.main-div-div-item {
	color: white;
	font-size: 13px;
}

.main-div-div-item:hover {
	color: black;
}

.footer {
    display: flex;
    justify-content: center;
    padding: 15px;
    padding-top: 30px;;
    color: #fff;
}

.footer-escrito {
    font-weight: 400;
    color: #fff;
}</style>

	</head>
  	<body>
	  	
  	
        <header class="header"> 
            <a class="header-logo" href="index.html"> New Horizon </a>
            <nav class="header-nav">
                <a class="header-nav-item" href=""> Sobre nós </a>
                <a class="header-nav-item" href=""> Fale conosco </a>
                <a class="header-nav-item" href="controlador?action=logout"  onclick="deslogar()"> Logout </a>
            </nav>
            <script>
				function deslogar()
				{
				alert("Você foi deslogado!");
				}
			</script>
        </header>
        
        <main class="main"> 
        	<div class="main-div">
        		<h3 class="main-div-titulo"> Produto </h3>
        		<div class="main-div-div"> 
        			<a class="main-div-div-item" href="controlador?action=verProdutos"> Ver produtos </a>
        			<a class="main-div-div-item" href="controlador?action=formCadastrarProduto"> Cadastrar produtos </a>
        			<a class="main-div-div-item" href="controlador?action=gerenciarProdutos"> Gerenciar produtos</a>
        		</div>
        	</div>
        	
        	<div class="main-div">
        		<h3 class="main-div-titulo"> Cliente </h3>
        		<div class="main-div-div"> 
        			<a class="main-div-div-item" href="controlador?action=formCadastrarCliente"> Cadastrar cliente </a>
        			<a class="main-div-div-item" href="controlador?action=loginCliente"> Logar cliente </a>
        			<a class="main-div-div-item" href="controlador?action=gerenciarClientes"> Gerenciar clientes</a>
        		</div>
        	</div>
        	
        	<div class="main-div">
        		<h3 class="main-div-titulo"> Vendedor </h3>
        		<div class="main-div-div"> 
        			<a class="main-div-div-item" href="controlador?action=formCadastrarVendedor"> Cadastrar vendedor </a>
        			<a class="main-div-div-item" href="controlador?action=loginVendedor"> Logar vendedor </a>
        			<a class="main-div-div-item" href="controlador?action=gerenciarVendedores"> Gerenciar vendedores </a>
        		</div>
        	</div>
        	
        	<div class="main-div">
        		<h3 class="main-div-titulo"> Moderador </h3>
        		<div class="main-div-div"> 
        			<a class="main-div-div-item" href="controlador?action=formCadastrarModerador"> Cadastrar moderador </a>
        			<a class="main-div-div-item" href="controlador?action=loginModerador"> Logar moderador </a>
        		</div>
        	</div>
        	
        </main>
        
        <footer class="footer">
            <h5 class="footer-escrito"> ${msgErro} </h5>
        </footer>
    </body>
</html> 