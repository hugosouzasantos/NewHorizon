package horizon.controlador;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.mail.*;
import horizon.modelo.BdD;
import horizon.modelo.Vendedor;

@WebServlet("/controlador")
public class Controlador extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private BdD banco = null;

	public Controlador() {
		super();

	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");

		if (action == null)
			action = "gerenciarVendedors";

		banco = new BdD();

		if (action.equals("gerenciarVendedores")) {
			gerenciarVendedores(request, response);
		} else if (action.equals("detalhes")) {
			detalhesVendedor(request, response);
		} else if (action.equals("formCadastrar")) {
			formCadastrar(request, response);
		} else if (action.equals("cadastrarVendedor")) {
			cadastrarVendedor(request, response);
		} else if (action.equals("formAtualizar")) {
			formAtualizar(request, response);
		} else if (action.equals("atualizarVendedor")) {
			atualizarVendedor(request, response);
		} else if (action.equals("remover")) {
			removerVendedor(request, response);
		} else {

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/vendedor/erroVendedor.jsp");
			rd.forward(request, response);
		}

	}

	private void gerenciarVendedores(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ArrayList<Vendedor> vendedores = banco.buscarTodosVendedores();

		request.setAttribute("vendedores", vendedores);

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/vendedor/gerenciarVendedores.jsp");

		rd.forward(request, response);
	}

	private void detalhesVendedor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cpf = request.getParameter("cpf");

		Vendedor vendedor = banco.buscarVendedorPorCPF(cpf);

		if (vendedor != null) {
			request.setAttribute("vendedor", vendedor);
		} else {
			request.setAttribute("msg", "O vendedor com o CPF " + cpf + " não está cadastrado!");
		}
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/vendedor/detalhesVendedor.jsp");
		rd.forward(request, response);
	}

	private void formCadastrar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/vendedor/formularioCadastroVendedor.jsp");
		rd.forward(request, response);
	}

	private void cadastrarVendedor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String nome = request.getParameter("nome");
		String sobreNome = request.getParameter("sobreNome");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String cpf = request.getParameter("cpf");
		String rg = request.getParameter("rg");
		String dtn = request.getParameter("dtn");
		String senha = request.getParameter("senha");
		String endereco = request.getParameter("endereco");
		String ppv = request.getParameter("ppv");

		Vendedor novoVendedor = new Vendedor(nome, sobreNome, email, tel, cpf, dtn, senha, rg, endereco, ppv);

		banco.cadastrarVendedor(novoVendedor);

		request.setAttribute("vendedor", novoVendedor);

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/vendedor/vendedorCadastrado.jsp");
		rd.forward(request, response);
		
		//mandar email:
		mandarEmail(email, "Cadastro concluido!", "Obrigado "+nome+" por se cadastrar no New Horizon!\nSeja muito bem vindo e boas vendas!");
		
	}

	private void formAtualizar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cpf = request.getParameter("cpf");

		Vendedor vendedor = banco.buscarVendedorPorCPF(cpf);

		if (vendedor != null)
			request.setAttribute("vendedor", vendedor);
		else
			request.setAttribute("msg", "O vendedor com o CPF " + cpf + " não está cadastrado!");

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/vendedor/formularioAtualizarVendedor.jsp");
		rd.forward(request, response);
	}

	private void atualizarVendedor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nome = request.getParameter("nome");
		String sobreNome = request.getParameter("sobreNome");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String cpf = request.getParameter("cpf");
		String rg = request.getParameter("rg");
		String dtn = request.getParameter("dtn");
		String senha = request.getParameter("senha");
		String endereco = request.getParameter("endereco");
		String ppv = request.getParameter("ppv");

		Vendedor vendedorAtualizado = new Vendedor(nome, sobreNome, email, tel, cpf, dtn, senha, rg, endereco, ppv);

		Vendedor vendedor = banco.buscarVendedorPorCPF(cpf);

		if (vendedor != null) {
			banco.atualizarVendedor(vendedorAtualizado);
			request.setAttribute("vendedor", vendedorAtualizado);
		} else {
			request.setAttribute("msg", "O vendedor com o CPF " + cpf + " não está cadastrado!");
		}

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/vendedor/vendedorAtualizado.jsp");
		rd.forward(request, response);
	}

	private void removerVendedor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cpf = request.getParameter("cpf");

		Vendedor vendedor = banco.buscarVendedorPorCPF(cpf);

		if (vendedor != null) {
			banco.removerVendedor(vendedor.getCpf());
			request.setAttribute("vendedor", vendedor);
		} else {
			request.setAttribute("msg", "O vendedor com o CPF " + cpf + " não está cadastrado!");
		}
		RequestDispatcher rd = request.getRequestDispatcher("controlador?action=gerenciarVendedores");
		rd.forward(request, response);
	}
	
	private void mandarEmail(String para, String assunto, String conteudo) throws ServletException, IOException {
		try {
			SimpleEmail email = new SimpleEmail();
			email.setHostName("smtp.sendgrid.net"); 
			email.setSmtpPort(465); 
			email.setAuthentication("apikey", "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");
			email.setSSLOnConnect(true);
			email.setFrom("new.horiz0n@hotmail.com"); 
			email.addTo(para);
			email.setSubject(assunto);
			email.setMsg(conteudo);
			email.send();
			
		} catch (EmailException e) {
			e.printStackTrace();
		}
	}
		
}

