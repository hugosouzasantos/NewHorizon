<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Classes.Clientes"%>
<%@ page import="Classes.UploadFile"%>


<%
UploadFile upload = new UploadFile("arquivo", 1, "jpg, jpeg, png, gif");

//Necessário apenas se você estiver tendo problema com acentos
upload.setEncoding("UTF-8");

//Obtendo os parâmetros que foram enviados pelo formulário utilizando o método getParameter definido na classe UploadSeguroService
//Nesse método, precisamos passar o request como primeiro parâmetro e o nome do campo do formulário como segundo parâmetro
String nome = upload.getParameter(request,"nome");
String sobreNome = upload.getParameter(request,"nomesobre");
String email = upload.getParameter(request,"email");
String tel = upload.getParameter(request,"tel");
String dtn = upload.getParameter(request,"dtn");
String cpf = upload.getParameter(request,"cpf");
String senha = upload.getParameter(request,"senha");

String nomeimg = null; // Variável que vai guardar o nome do arquivo da imagem da capa do livro (se der erro seu valor vai ser nulo)


//Fazendo o upload do arquivo que veio no campo "capa". Se o upload der errado, apenas exibo uma mensagem de erro, mas salvo os dados do livro normalmente e deixo o nome do arquivo nulo
if(upload.doUploadParameter(request, application, "imagem")){
	// O upload deu certo, então apenas pego o nome do arquivo para salvar no objeto livro
	nomeimg = upload.getNomeArquivo();
} else { // Caso tenha ocorrido algum problema no upload
	// Verifica se existe alguma mensagem de erro para exibir
	if(upload.getErro() != null){
		out.println("<p style='color: red;'>Erro no upload: " + upload.getErro() + "</p>");	
	}
} 

Clientes cliente = new Clientes(nome, sobreNome, email, tel, cpf, dtn, senha, nomeimg);


if(cliente.getNomeFile() != null){

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Descrição Cliente</title>
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
				<h2 id="headerDiv">Detalhes do cliente</h2>
				<table>
					<tr>
						<th><label for="nome">Nome:</label></th>
						<td><%=cliente.getNome()%></td>
					</tr>
					<tr>
						<th><label for="sobreNome">Sobrenome::</label></th>
						<td><%=cliente.getSobreNome()%></td>
					</tr>
					<tr>
						<th><label for="email">Email:</label></th>
						<td><%=cliente.getEmail()%></td>
					</tr>
					<tr>
						<th><label for="telefone">Telefone:</label></th>
						<td><%=cliente.getTel()%></td>
					</tr>
					<tr>
						<th><label for="dtn">Data de nascimento:</label></th>
						<td><%=cliente.getDtn()%></td>
					</tr>
					<tr>
						<th><label for="cpf">CPF:</label></th>
						<td><%=cliente.getCpf()%></td>
					</tr>
					<tr>
						<th><label for="imagem">Imagem:</label></th>
						<td><img src="<%=cliente.getNomeFile()%>"></td>
					</tr>
					<tr>
						<th><label for="senha">Senha:</label></th>
						<td><%=cliente.getSenha()%></td>
					</tr>
				</table>
			</div>
		</div>
		<div style="text-align: center; padding-bottom: 3%">
			<a href="cadastrocliente.jsp"><button type="button"
					class="btn btn-outline-primary">Voltar</button></a>
		</div>
		<footer>
            <h4> Trabalho PWII</h4>
        </footer>
	</body>
</html>

<%
}
else{
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Remover Produto</title>
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
				<div>
					<p>Esta imagem já está vinculada a uma conta, por favor insira uma nova imagem!</p>
				</div>
			</div>
		</div>
		<footer>
            <h4> Trabalho PWII</h4>
        </footer>
	</body>
<%	
}
%>
