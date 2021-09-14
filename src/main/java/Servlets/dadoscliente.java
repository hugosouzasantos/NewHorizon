package Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/dadoscliente")
public class dadoscliente extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public dadoscliente() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nome = request.getParameter("nome");
		String sobrenome = request.getParameter("nomesobre");
		String email = request.getParameter("email");
		String telefone = request.getParameter("tel");
		String datanascimento = request.getParameter("dtn");
		String cpf = request.getParameter("cpf");
		String senha = request.getParameter("senha");
		String imagem = request.getParameter("imagem");
		
		PrintWriter out = response.getWriter();
		
		out.print("<head>\r\n"
				+ "<meta charset=\"ISO-8859-1\">\r\n"
				+ "<title>Dados do cliente</title>\r\n"
				+ " <!-- Required meta tags -->\r\n"
				+ "    <meta charset=\"utf-8\">\r\n"
				+ "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n"
				+ "\r\n"
				+ "    <!-- Bootstrap CSS -->\r\n"
				+ "    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">\r\n"
				+ "\r\n"
				+ "</head>\r\n"
				+ "<body>\r\n"
				+ "\r\n"
				+ "	<h2 style=\"text-align: center; margin-top: 2%;\">Dados do cliente:</h2>\r\n"
				+ "\r\n"
				+ "	<table class=\"table table-striped\" style=\" width: 50%; margin-left: 25%; margin-right: 25%; margin-bottom: 5%; margin-top: 3%;\">\r\n"
				+ "		<thead>\r\n"
				+ "			<tr>\r\n"
				+ "				<td><b>Parametro</b></td>\r\n"
				+ "				<td><b>Valor</b></td>\r\n"
				+ "			</tr>\r\n"
				+ "		</thead>\r\n"
				+ "		<tbody>\r\n"
				+ "			<tr>\r\n"
				+ "				<td>Nome</td>\r\n"
				+ "				<td>"+ nome +"</td>\r\n"
				+ "			</tr>\r\n"
				+ "			<tr>\r\n"
				+ "				<td>Sobrenome</td>\r\n"
				+ "				<td>"+ sobrenome +"</td>\r\n"
				+ "			</tr>\r\n"
				+ "			<tr>\r\n"
				+ "				<td>Email</td>\r\n"
				+ "				<td>"+ email +"</td>\r\n"
				+ "			</tr>\r\n"
				+ "			<tr>\r\n"
				+ "				<td>Telefone</td>\r\n"
				+ "				<td>"+ telefone +"</td>\r\n"
				+ "			</tr>\r\n"
				+ "			<tr>\r\n"
				+ "				<td>CPF</td>\r\n"
				+ "				<td>"+ cpf +"</td>\r\n"
				+ "			</tr>\r\n"
				+ "			<tr>\r\n"
				+ "				<td>Data de Nascimento</td>\r\n"
				+ "				<td>"+ datanascimento +"</td>\r\n"
				+ "			</tr>\r\n"
				+ "			<tr>\r\n"
				+ "				<td>Senha</td>\r\n"
				+ "				<td>"+ senha +"</td>\r\n"
				+ "			</tr>\r\n"
				+ "		</tbody>\r\n"
				+ "	</table>\r\n"
				+ "	<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\" crossorigin=\"anonymous\"></script>\r\n"
				+ "</body>");
		
		out.close();

	}

}
