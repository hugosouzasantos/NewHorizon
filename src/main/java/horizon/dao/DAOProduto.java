package horizon.dao;

import java.util.List;

import horizon.modelo.*;

public interface DAOProduto {
	
	public void cadastrar(Produto produto) throws DAOException;

	public void atualizar(Produto produto) throws DAOException;

	public void remover(Produto produto) throws DAOException;

	public List<Produto> todosProdutos() throws DAOException;

	public Produto buscarProduto(int id) throws DAOException;

}
