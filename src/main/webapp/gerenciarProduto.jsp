<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Classes.Produto" %>
<%@page import="Classes.BancoDeDados" %>
<%@page import="java.util.ArrayList" %>
    
<%
    BancoDeDados banco = new BancoDeDados();
 
    ArrayList<Produto> produtos = banco.buscarProdutosFoda();
%>
  
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Gerenciar Produto</title>
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
                <h2 id="headerDiv">Gerenciar Produtos</h2>
                <table>
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Plataforma</th>
                        <th scope="col">Jogo</th>
                        <th scope="col">Quantidade</th>
                        <th scope="col">Preço</th>
                        <th scope="col">Ações</th>
                    </tr>
                    </thead>
                    
                    <% 
                    	for(int i = 0; i < produtos.size(); i++){
                        Produto produto = produtos.get(i);
                    %>
                    <tbody>
                    
                    <tr>
                        <th scope="row"><%= produto.getCodProduto()%></th>
                        <td><%= produto.getNome()%></td>
                        <td><%= produto.getPlataforma()%></td>
                        <td><%= produto.getJogo()%></td>
                        <td><%= produto.getQuantidade()%></td>
                        <td><%= produto.getPreco()%></td>
                        <td>
                            <a href="detalhesProduto.jsp?codProduto=<%=produto.getCodProduto()%>">
                                <button type="button"> Detalhes </button>
                            </a>

                            <a href="atualizarProduto.jsp?codProduto=<%= produto.getCodProduto()%>">
                                <button type="button" >Atualizar </button>
                            </a>

                            <a href="removerProduto.jsp?codProduto=<%= produto.getCodProduto()%>">
                                <button type="button"> Remover </button>
                            </a>     
                        </td>
                    </tr>

                    <%} %>
                    
                    </tbody>
                </table>
            </div>
        </div>
        <footer>
            <h4> Trabalho PWII</h4>
        </footer>
    </body>
</html>