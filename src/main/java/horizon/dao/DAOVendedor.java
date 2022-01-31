package horizon.dao;

import horizon.modelo.*;

public class DAOVendedor {
	
	public void cadastrar(Vendedor vendedor) throws DAOException;

	public void atualizar(Vendedor vendedor) throws DAOException;

	public void remover(Vendedor vendedor) throws DAOException;

	public List<Vendedor> todosVendedors() throws DAOException;

	public liente buscarVendedor(Long id) throws DAOException;

}
