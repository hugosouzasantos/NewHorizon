<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<title>New Horizon</title>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="css/style.css">
	</head>
  	<body>
  	
        <header class="header"> 
            <a class="header-logo" href="index.html"> New Horizon </a>
            <nav class="header-nav">
                <a class="header-nav-item" href="#"> Sobre nÃ³s </a>
                <a class="header-nav-item" href="#"> Fale conosco </a>
            </nav>
        </header>
        
        <main class="main"> 
        	<div class="main-div">
        		<h3 class="main-div-titulo"> Produto </h3>
        		<div class="main-div-div"> 
        			<a class="main-div-div-iten" href="controlador?action=verProdutos"> Ver produtos </a>
        			<a class="main-div-div-item" href="controlador?action=formularioCadastroProduto"> Cadastrar produtos </a>
        			<a class="main-div-div-item" href="controlador?action=gerenciarProdutos"> Gerenciar produtos</a>
        		</div>
        	</div>
        	
        	<div class="main-div">
        		<h3 class="main-div-titulo"> Cliente </h3>
        		<div class="main-div-div"> 
        			<a class="main-div-div-item" href="controlador?action=formularioCadastroCliente"> Cadastrar cliente </a>
        			<a class="main-div-div-item" href="controlador?action=login"> Logar cliente </a>
        			<a class="main-div-div-item" href="controlador?action=gerenciarClientes"> Gerenciar clientes</a>
        		</div>
        	</div>
        	
        	<div class="main-div">
        		<h3 class="main-div-titulo"> Vendedor </h3>
        		<div class="main-div-div"> 
        			<a class="main-div-div-item" href="controlador?action=formularioCadastroVendedor"> Cadastrar vendedor </a>
        			<a class="main-div-div-item" href="controlador?action=login"> Logar vendedor </a>
        			<a class="main-div-div-item" href="controlador?action=gerenciarVendedores"> Gerenciar vendedores </a>
        		</div>
        	</div>
        	
        	<div class="main-div">
        		<h3 class="main-div-titulo"> Moderador </h3>
        		<div class="main-div-div"> 
        			<a class="main-div-div-item" href="controlador?action=formularioCadastroModerador"> Cadastrar moderador </a>
        			<a class="main-div-div-item" href="controlador?action=login"> Logar moderador </a>
        		</div>
        	</div>
        	
        </main>
        
        <footer class="footer">
            <h5 class="footer-escrito"> Trabalho PWII </h4>
        </footer>
    </body>
</html>