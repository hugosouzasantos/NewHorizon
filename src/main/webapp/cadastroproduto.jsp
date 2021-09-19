<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Classes.BancoDeDados" %>
<%@ page import="Classes.Produto" %>

<%
BancoDeDados banco = new BancoDeDados();
int codigo = 1, i = 0;

while(i == 0){
	if(banco.buscarProdutoPorCodigo(Integer.toString(codigo)) != null)
	codigo++;
	else
		i = 1;
}
%>
    
<!DOCTYPE html>
<html>
    <head>
        <title>Cadastro Produtos</title>
        <meta charset="utf-8">
        
    </head>
    <body>
        <header>
            <a id="pagPrin"  href="index.html"> NewHorizon </a>
            <div id="linksHe">
                <a class="pagSec" href="cadastroproduto.jsp"> Cadastrar produto </a>
                <a class="pagSec" href="#"> Login </a>
                <a class="pagSec" href="cadastrocliente.jsp"> Criar conta </a>
            </div>
        </header>
        <div id="container">
            <div id="form">
                <form method="post" action="dadosproduto.jsp">
                    <div class="input">
                        <label>Nome do produto</label>
                        <input type="text" class="form-control" name="nome" placeholder="Digite nome do produto...">
                    </div>
                    <div class="input">
                        <label>Quantidade</label>
                        <input type="number" class="form-control" name="quantidade" placeholder="Digite quantidade do produto...">
                    </div>
                    <div class="input">
                        <label>Plataforma</label>
                        <input type="text" class="form-control" name="plataforma" placeholder="Digite a plataforma...">
                    </div>
                    <div class="input">
                        <label>Jogo</label>
                        <input type="text" class="form-control" name="jogo" placeholder="Digite o jogo...">
                    </div>
                    <div class="input">
                        <label>Tipo do produto</label><br>
                        <select name="tipo">
                            <option selected>Tipo</option>
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
                        <label>Raridade</label><br>
                        <select name="raridade">
                            <option selected>Raridade</option>
                            <option value="comum">Comum</option>
                            <option value="incomum">Incomum</option>
                            <option value="raro">Raro</option>
                            <option value="mraro">Muito raro</option>
                            <option value="exotico">Exótico</option>
                        </select>
                    </div>
                    <div class="input">
                        <label>Imagem do produto</label><br>
                        <input type="file" class="form-control" name="imagem" placeholder="Imagem do produto...">
                    </div>
                    <label>Preço</label><br> 
                    <div class="input-group mb-3">
                        <span class="input-group-text">R$ 0.00</span>
                        <input type="text" class="form-control" name="preco" placeholder="Digite o preço...">
                    </div>
                    <div class="input">
                        <label>Descrição</label>
                        <textarea placeholder="Uma descrição breve do seu produto..." class="form-control" rows="2" name="descricao"></textarea>
                    </div>
                        <select name="codProduto" Style="visibility: hidden">
                            <option selected value="<%=codigo%>"><%=codigo%></option>
                        </select>
                    <div id="subDiv" class="input">
                        <input type="submit" value="Cadastrar">
                    </div>
                </form>
            </div>
        </div>
    <div>
        <a href="gerenciarProdutos.jsp"><button type="button" class="btn btn-outline-primary">Página inicial</button></a>
    </div>
    <footer>
        <h4> Trabalho PWII</h4>
    </footer>    
    </body>
</html>
