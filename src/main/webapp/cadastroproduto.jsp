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
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <nav>
            <a id="pagPrin"  href="index.html"> New Horizon </a>
            <div id="linksHe">
                <a class="pagSec" href="cadastroproduto.jsp"> Cadastrar produto </a>
                <a class="pagSec" href="#"> Login </a>
                <a class="pagSec" href="cadastrocliente.jsp"> Criar conta </a>
            </div>
        </nav>
        <div id="container">
            <div id="body">
            	<div id="divHeader">
                	<h2 id="headerDiv"> Cadastro Produto </h2>
                </div>
                <form method="post" action="dadosproduto.jsp">
                    <div class="input">
                        <input type="text" name="nome" placeholder="Nome do produto">
                    </div>
                    <div class="input">
                        <input type="number" name="quantidade" placeholder="Quantidade do produto">
                    </div>
                    <div class="input">
                        <input type="text" name="plataforma" placeholder="Plataforma...">
                    </div>
                    <div class="input">
                        <input type="text" name="jogo" placeholder="Jogo...">
                    </div>
                    <fieldset>
                    <div class="divNoEso">
                        <label>Tipo do produto</label>
                        <select name="tipo">
                            <option selected>Tipo</option>
                            <option value="cosmeticop">Cosm√©tico pago</option>
                            <option value="cosmeticof">Cosm√©tico gratuito</option>
                            <option value="gema">Gema/Runa</option>
                            <option value="trilha">Trilha sonora</option>
                            <option value="consumivel">Consum√≠vel</option>
                            <option value="arma">Arma</option>
                            <option value="equipamento">Equipamento</option>
                            <option value="diverso">Diverso</option>
                        </select>
                    </div>
                    <div class="divNoEso" id="espaÁo">
                        <label>Raridade</label>
                        <select name="raridade">
                            <option selected>Raridade</option>
                            <option value="comum">Comum</option>
                            <option value="incomum">Incomum</option>
                            <option value="raro">Raro</option>
                            <option value="mraro">Muito raro</option>
                            <option value="exotico">Ex√≥tico</option>
                        </select>
                    </div>
                    </fieldset>
                    <div class="input">
                        <label>Imagem do produto</label>
                        <input type="file" name="imagem" placeholder="Imagem do produto">
                    </div>
                    <div class="input">
                        <span class="input-group-text">R$ 0.00</span>
                        <input type="text" name="preco" placeholder="PreÁo">
                    </div>
                    <div class="input">
                        <textarea placeholder="DescriÁ„o" rows="2" name="descricao"></textarea>
                    </div>
                    <div id="codPro">
                        <select name="codProduto">
                            <option selected value="<%=codigo%>"><%=codigo%></option>
                        </select>
                    </div>
                    <div id="subDiv" class="input">
                        <input id="submit" type="submit" value="Cadastrar">
                    </div>
                </form>
            </div>
        </div>
    <footer>
        <h4> Trabalho PWII</h4>
    </footer>    
    </body>
</html>
