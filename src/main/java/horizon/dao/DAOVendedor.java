package horizon.dao;

import java.util.List;

import horizon.modelo.*;

public interface DAOVendedor {
	
	public void cadastrar(Vendedor vendedor) throws DAOException;

	public void atualizar(Vendedor vendedor) throws DAOException;

	public void remover(Vendedor vendedor) throws DAOException;

	public List<Vendedor> todosVendedors() throws DAOException;

	public Vendedor buscarVendedor(int idVendedor) throws DAOException;

}
