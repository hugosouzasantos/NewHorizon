package horizon.filter;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/*")
public class FiltrarUsuarios implements Filter {
	
	private final String[] VENDEDOR_ACTIONS = {"formCadastrarProduto","cadastrarProduto","verProdutos"};	

	private final String[] CLIENTE_ACTIONS = {"verProdutos"};
	
	private final String[] MODERADOR_ACTIONS = {"gerenciarVendedores","formAtualizarVendedor","removerVendedor","gerenciarClientes","formAtualizarCliente","removerCliente","gerenciarProdutos","formCadastrarProduto","formAtualizarProduto","removerProduto"};


	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		String action = ((HttpServletRequest) request).getParameter("action");

		HttpSession session = ((HttpServletRequest) request).getSession();
		
		String usuario = (String) session.getAttribute("usuario");
		
		
		if (action != null && Arrays.asList(CLIENTE_ACTIONS).contains(action)) {
			if (usuario != null && (usuario.equals("cliente") || usuario.equals("vendedor") || usuario.equals("moderador"))) {
				String msgErro = "";
				session.setAttribute("msgErro", msgErro);
				chain.doFilter(request, response);
			} else {
				String msgErro = "Você não tem permissão para acessar esta página!";
				session.setAttribute("msgErro", msgErro);
				((HttpServletResponse) response).sendRedirect("controlador?action=index");
			}
		} else if (action != null && Arrays.asList(VENDEDOR_ACTIONS).contains(action)) {
			
			if (usuario != null && (usuario.equals("vendedor") || usuario.equals("moderador"))) {
				String msgErro = "";
				session.setAttribute("msgErro", msgErro);
				chain.doFilter(request, response);
			} else {
				String msgErro = "Você não tem permissão para acessar esta página!";
				session.setAttribute("msgErro", msgErro);
				((HttpServletResponse) response).sendRedirect("controlador?action=index");
			}
		} else if (action != null && Arrays.asList(MODERADOR_ACTIONS).contains(action)) {
			if (usuario != null && usuario.equals("moderador")) {
				String msgErro = "";
				session.setAttribute("msgErro", msgErro);
				chain.doFilter(request, response);
			} else {
				String msgErro = "Você não tem permissão para acessar esta página!";
				session.setAttribute("msgErro", msgErro);
				((HttpServletResponse) response).sendRedirect("controlador?action=index");
			}
		}else if (usuario != null && (action == null)){
			if (usuario.equals("moderador")) {
				((HttpServletResponse) response).sendRedirect("controlador?action=gerenciarVendedores");
			}else
				((HttpServletResponse) response).sendRedirect("controlador?action=verProdutos");

		} else {
			chain.doFilter(request, response);
		}		
		
	}

}

