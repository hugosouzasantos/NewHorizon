<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    
        <title>Gerenciar Vendedores</title>
        <link rel="stylesheet" href="css.css" />
  </head>
  <body >
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <nav class="navbar navbar-expand-lg navbar-light" Style="background-color: #69d1ce;">
      <div class="container-fluid">
              <h3>�rea do moderador</h3>
            &nbsp; &nbsp;
        <b><div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="controlador?action=index">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="controlador?action=gerenciarClientes">Gerenciar clientes</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="controlador?action=gerenciarProdutos">Gerenciar Produtos</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="controlador?action=gerenciarVendedores">Gerenciar Vendedores</a>
            </li>
          </ul>
        </div></b>
        &nbsp; &nbsp;
        <h4>Gerenciar Vendedores</h4>        
      </div>
    </nav>
     <div style=" margin-bottom: 1%; margin-left: 78%; margin-top: 5%"><a href="controlador?action=formCadastrarVendedor"><button type="button" class="btn btn-outline-success">Cadastrar novo Vendedor</button></a></div>
        <div Style="margin-left: 10%; margin-right: 10%; width: 80%; margin-bottom: 5%; border-style: solid #488a88; border-radius: 5px; background-color: #eee; text-align: center;"> 
        <table class="table table-hover">
            <thead>
              <tr>
                <th scope="col">ID</th>
                <th scope="col">Nome</th>
                <th scope="col">Sobrenome</th>
                <th scope="col">tel</th>
              </tr>
            </thead>
            <c:forEach var="vendedoresCadastrados" items="${vendedores}">
            <tbody>
              <tr>
                <th scope="row">${vendedoresCadastrados.idVendedor}</th>
                <td>${vendedoresCadastrados.nome}</td>
                <td>${vendedoresCadastrados.sobreNome}</td>
                <td>${vendedoresCadastrados.tel}</td>

                <td>
                <!-- Foi o leosin q fez, se vc achar desorganizado xinga ele, eu xinguei e ele nn mudou >:-[ -->
                   <a href="controlador?action=detalhesVendedor&idVendedor=${vendedoresCadastrados.idVendedor}"><button type="button" class="btn btn-outline-info"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                        <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                        <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                      </svg>Detalhes</button></a>
                      
                      <a href="controlador?action=formAtualizarVendedor&idVendedor=${vendedoresCadastrados.idVendedor}"><button type="button" class="btn btn-outline-primary"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
                        <path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
                      </svg>Atualizar</button></a>
                      
                    <a href="controlador?action=removerVendedor&idVendedor=${vendedoresCadastrados.idVendedor}"> <button type="button" class="btn btn-outline-danger"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                        <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                       	<path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                    	</svg>Remover</button>  </a>       
                </td>
              </tr>
           </c:forEach>
            </tbody>
          </table>

        </div>
 		<div style=" text-align: center; padding-bottom: 3%"><a href="controlador?action=index"><button type="button" class="btn btn-outline-primary">P�gina inicial</button></a></div>
    </body>
</html>