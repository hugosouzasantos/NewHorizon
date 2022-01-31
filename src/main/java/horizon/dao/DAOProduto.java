package horizon.dao;

import horizon.modelo.*;

public class DAOProduto {
	
	public void cadastrar(Produto produto) throws DAOException;

	public void atualizar(Produto produto) throws DAOException;

	public void remover(Produto produto) throws DAOException;

	public List<Produto> todosProdutos() throws DAOException;

	public liente buscarProduto(Long id) throws DAOException;

}
