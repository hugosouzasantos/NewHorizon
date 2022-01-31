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
    
        <title>Gerenciar Produtos</title>
        <link rel="stylesheet" href="css.css" />
  </head>
  <body >    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <div Style="background-color: #69d1ce; padding: 2%; height: 5%; box-shadow: 0px 2px 2px #488a88;"><h2 Style="text-align: center;">Gerenciar Produtos</h2></div>
     <div style=" margin-bottom: 1%; margin-left: 78%; margin-top: 5%"><a href="controlador?action=formCadastrar"><button type="button" class="btn btn-outline-success">Cadastrar novo Produto</button></a></div>
        <div Style="margin-left: 10%; margin-right: 10%; width: 80%; margin-bottom: 5%; border-style: solid #488a88; border-radius: 5px; background-color: #eee; text-align: center;"> 
        <table class="table table-hover">
            <thead>
              <tr>
                <th scope="col">Nome</th>
                <th scope="col">Quantidade</th>
                <th scope="col">Plataforma</th>
                <th scope="col">Preço</th>
              </tr>
            </thead>
            <c:forEach var="produtosCadastrados" items="${produtos}">
            <tbody>
              <tr>
                <th scope="row">${produtosCadastrados.nome}</th>
                <td>${produtosCadastrados.quantidade}</td>
                <td>${produtosCadastrados.plataforma}</td>
                <td>${produtosCadastrados.preco}</td>
                <td>
                <!-- Foi o leosin q fez, se vc achar desorganizado xinga ele, eu xinguei e ele nn mudou >:-[ -->
                   <a href="controlador?action=detalhes&cpf=${produtosCadastrados.codproduto}"><button type="button" class="btn btn-outline-info"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                        <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                        <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                      </svg>Detalhes</button></a>
                </td>
              </tr>
           </c:forEach>
            </tbody>
          </table>
        </div>
    </body>
</html>