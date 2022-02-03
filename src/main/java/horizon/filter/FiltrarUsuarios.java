/*package horizon.filter;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebFilter("/*")
public class FiltrarUsuarios implements Filter {
	
	private final String[] VENDEDOR_ACTIONS = { "gerenciarProdutos", "detalhesProduto", "formularioAtualizarProduto", "formularioCadastrarProduto",
			"erroProduto", "produtoAtualizado", "ProdutoCadastrado" };

	private final String[] CLIENTE_ACTIONS = { "verProdutos" };
	
	private final String[] MODERADOR_ACTIONS = { "clienteAtualizado", "clienteCadastrado", "detalhesCliente", "clienteAtualizado", "erroCliente", "formularioAtualizarCliente", "gerenciarCliente", 
				"detalhesProduto", "erroProduto", "formularioAtualizarProduto", "formulartoCadastrarProduto", "gerenciarProdutos", "produtoAtualizado", "produtoCadastrado", 
				"detalhesVendedor", "erroVendedor", "formularioAtualizarVendedor", "formularioCadastrarVendedor", "gerenciarVendedores", "vendedorAtualizado", "vendedorCadastrado"};


	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		String action = ((HttpServletRequest) request).getParameter("action");

		HttpSession session = ((HttpServletRequest) request).getSession();
		Usuario usuario = (Usuario) session.getAttribute("usuario");

		if (action != null && Arrays.asList(MODERADOR_ACTIONS).contains(action)) {
			if (usuario != null && usuario.isAdministrador()) {
				chain.doFilter(request, response);
			} else {
				String msgErro = "Você não está logado como moderador!";
				session.setAttribute("msgErro", msgErro);
				((HttpServletResponse) response).sendRedirect("livraria?action=formularioLogin");
			}
		} else if (action != null && Arrays.asList(CLIENTE_ACTIONS).contains(action)) {
			if (usuario != null && usuario.isCliente()) {
				chain.doFilter(request, response);
			} else {
				String msgErro = "Você não está logado!";
				session.setAttribute("msgErro", msgErro);
				((HttpServletResponse) response).sendRedirect("livraria?action=formularioLogin");
			}
		} else if (action != null && Arrays.asList(VENDEDOR_ACTIONS).contains(action)) {
			if (usuario != null && usuario.isCliente()) {
				chain.doFilter(request, response);
			} else {
				String msgErro = "Você não está logado!";
				session.setAttribute("msgErro", msgErro);
				((HttpServletResponse) response).sendRedirect("livraria?action=formularioLogin");
			}
		}else if (usuario != null && (action == null || action.equals("formularioLogin"))) {
			if (usuario.isAdministrador())
				((HttpServletResponse) response).sendRedirect("livraria?action=gerenciarLivros");
			else
				((HttpServletResponse) response).sendRedirect("livraria?action=verLivros");
		} else {
			chain.doFilter(request, response);
		}
		
		
		
	}



}
*/
