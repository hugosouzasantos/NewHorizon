package horizon.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;

import horizon.modelo.Moderador;
import horizon.modelo.Vendedor;
import until.ConnectionFactory;

public class DAOModeradorImpl  implements DAOModerador{
	
	private Connection connection;

	public DAOModeradorImpl() throws DAOException {
		try {
			this.connection = (Connection) ConnectionFactory.getConnection();
		} catch (Exception e) {
			throw new DAOException("Erro na conexão: " + e.getMessage());
		}
	}

	public void cadastrar(Moderador moderador) throws DAOException {
		try {
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/newhorizon", "leoadm","newhorizon321");
			
			String sql = "INSERT INTO moderador(email, senha, nome) VALUES (?, ?, ?);";

			PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setString(1, moderador.getEmail());
			stmt.setString(2, moderador.getSenha());
			stmt.setString(3, moderador.getNome());

			stmt.execute();

			ResultSet rs = stmt.getGeneratedKeys();

			if (rs.next()) {
				int idModerador = rs.getInt(1);
				moderador.setIdModerador(idModerador);
			}

			rs.close();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao cadastrar: " + e.getMessage());
		}

	}
		public void remover(Moderador moderador) throws DAOException {
		try {
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/newhorizon", "leoadm","newhorizon321");
			
			String sql = "DELETE FROM moderador WHERE idModerador = ?";

			PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setLong(1, moderador.getIdModerador());

			stmt.executeUpdate();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao remover: " + e.getMessage());
		}
	}
		
		public List<Moderador> todosModeradors() throws DAOException {

			List<Moderador> moderadores = new ArrayList<Moderador>();

			try {
				Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/newhorizon", "leoadm","newhorizon321");
				Statement st = conexao.createStatement();

				String sql = "SELECT * FROM moderador";

				ResultSet rs = st.executeQuery(sql);

				while (rs.next()) {
					int idModerador = rs.getInt("idModerador");
					String nome = rs.getString("nome");
					String senha = rs.getString("senha");
					String email = rs.getString("email");

					Moderador moderador = new Moderador(nome, senha, email, idModerador);
					moderador.setIdModerador(idModerador);
					moderador.setNome(nome);
					moderador.setSenha(senha);
					moderador.setEmail(email);

					moderadores.add(moderador);
				}

				rs.close();
				st.close();
				return moderadores;
			} catch (Exception e) {
				throw new DAOException("Erro ao buscar: " + e.getMessage());
			}
		}

	

}
