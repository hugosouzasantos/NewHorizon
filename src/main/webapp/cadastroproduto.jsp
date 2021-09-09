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
    	<!-- Finge q eu fiz o modal -->
        <title>Cadastro Produtos</title>
        <meta charset="utf-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <div Style="background-color: #69d1ce; padding: 2%; height: 5%; box-shadow: 0px 2px 2px #488a88;"><h2 Style="text-align: center;">Cadastro de produtos</h2></div>
        <div Style="margin-left: 20%; margin-right: 20%; width: 60%; margin-bottom: 2%; border-style: solid #488a88; border-radius: 5px; background-color: #eee; margin-top: 5%;">
            <form method="post" action="dadosproduto.jsp" Style="padding-left: 5%; padding-right: 5%; padding-top: 2%; padding-bottom: 2%;">
                <div class="mb-3">
                    <label class="form-label">Nome do produto</label>
                    <input type="text" class="form-control" name="nome">
                </div>
                <div class="mb-3">
                    <label class="form-label">Quantidade</label>
                    <input type="number" class="form-control" name="quantidade">
                </div>
                <div class="mb-3">
                    <label class="form-label">Plataforma</label>
                    <input type="text" class="form-control" name="plataforma">
                </div>
                <div class="mb-3">
                    <label class="form-label">Jogo</label>
                    <input type="text" class="form-control" name="jogo">
                </div>
                <div class="mb-3">
                    <label class="form-label">Tipo do produto</label><br>
                    <select name="tipo" class="form-select">
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
                <div class="mb-3">
                    <label class="form-label">Raridade</label><br>
                    <select name="raridade" class="form-select">
                        <option selected>Raridade</option>
                        <option value="comum">Comum</option>
                        <option value="incomum">Incomum</option>
                        <option value="raro">Raro</option>
                        <option value="mraro">Muito raro</option>
                        <option value="exotico">Exotico</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label class="form-label">Imagem do produto</label><br>
                    <input type="file" class="form-control" name="imagem">
                </div>
                <label class="form-label">Preço</label><br> 
                <div class="input-group mb-3">
                    <span class="input-group-text">R$ 0.00</span>
                    <input type="text" class="form-control" name="preco">
                </div>
                <div class="mb-3">
                    <label class="form-label">Descrição</label>
                    <textarea placeholder="Uma descrição breve do seu produto" class="form-control" rows="2" name="descricao"></textarea>
                </div>
                   
                    <select name="codProduto" Style="visibility: hidden">
                        <option selected value="<%=codigo%>"><%=codigo%></option>
                    </select>
               
                
                <div Style="padding-left: 85.5%; margin-top: 5%;"><button type="submit" class="btn btn-outline-success">Cadastrar</button></div>
                
            </form>
        </div>
                    <div style=" text-align: center; padding-bottom: 3%"><a href="gerenciarProdutos.jsp"><button type="button" class="btn btn-outline-primary">Pagina inicial</button></a></div>
        
    </body>
</html>
