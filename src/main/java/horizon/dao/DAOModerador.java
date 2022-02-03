package horizon.dao;

import java.util.List;

import horizon.modelo.Moderador;

public interface DAOModerador {

	public void cadastrar(Moderador moderador) throws DAOException;

	public void remover(Moderador moderador) throws DAOException;
	
	public List<Moderador> todosModeradors() throws DAOException;

}
