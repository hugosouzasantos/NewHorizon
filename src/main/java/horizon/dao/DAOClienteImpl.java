package horizon.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import java.sql.Connection;
import java.sql.DriverManager;

import horizon.modelo.Cliente;
import until.ConnectionFactory;

public class DAOClienteImpl implements DAOCliente{

	private Connection connection;
	private Cliente cliente;

	public DAOClienteImpl() throws DAOException {
		try {
			this.connection = (Connection) ConnectionFactory.getConnection();
		} catch (Exception e) {
			throw new DAOException("Erro na conexão: " + e.getMessage());
		}
	}

	public void cadastrar(Cliente cliente) throws DAOException {
		try {			
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/newhorizon", "leoadm","newhorizon321");
			
			String sql = "INSERT INTO cliente(email, senha, nome, sobrenome, nascimento, telefone, cpf) VALUES (?, ?, ?, ?, ?, ?, ?);";

			PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setString(1, cliente.getEmail());
			stmt.setString(2, cliente.getSenha());
			stmt.setString(3, cliente.getNome());
			stmt.setString(4, cliente.getSobreNome());
			stmt.setString(5, cliente.getDtn());
			stmt.setString(6, cliente.getTel());
			stmt.setString(7, cliente.getCpf());

			stmt.execute();

			ResultSet rs = stmt.getGeneratedKeys();

			if (rs.next()) {
				int idCliente = rs.getInt(1);
				cliente.setIdCliente(idCliente);
			}

			rs.close();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao cadastrar: " + e.getMessage());
		}

	}


	public void atualizar(Cliente cliente) throws DAOException {
		try {
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/newhorizon", "leoadm","newhorizon321");
			
			String sql = "UPDATE cliente SET email = ?, senha = ?, nome = ?, sobrenome = ?, nascimento = ?, telefone = ?, cpf = ? WHERE idCliente = ?";

			PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setString(1, cliente.getEmail());
			stmt.setString(2, cliente.getSenha());
			stmt.setString(3, cliente.getNome());
			stmt.setString(4, cliente.getSobreNome());
			stmt.setString(5, cliente.getDtn());
			stmt.setString(6, cliente.getTel());
			stmt.setString(7, cliente.getCpf());
			stmt.setInt(8, cliente.getIdCliente());

			stmt.executeUpdate();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao atualizar: " + e.getMessage());
		}
	}

	public void remover(Cliente cliente) throws DAOException {
		try {
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/newhorizon", "leoadm","newhorizon321");
			
			String sql = "DELETE FROM cliente WHERE idCliente = ?";

			PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setLong(1, cliente.getIdCliente());

			stmt.executeUpdate();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao remover: " + e.getMessage());
		}
	}

	public List<Cliente> todosClientes() throws DAOException {

		List<Cliente> clientes = new ArrayList<Cliente>();

		try {
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/newhorizon", "leoadm","newhorizon321");
			Statement st = conexao.createStatement();

			String sql = "SELECT idCliente, email, senha, nome, sobrenome, nascimento, telefone, cpf FROM cliente";

			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				int idCliente = rs.getInt("idCliente");
				String email = rs.getString("email");
				String senha = rs.getString("senha");
				String nome = rs.getString("nome");
				String sobrenome = rs.getString("sobrenome");
				String nascimento = rs.getString("nascimento");
				String telefone = rs.getString("telefone");
				String cpf = rs.getString("cpf");


				Cliente cliente = new Cliente( nome,  sobrenome,  email,  telefone,  cpf,  nascimento,  senha,  idCliente);
				cliente.setIdCliente(idCliente);
				cliente.setEmail(email);
				cliente.setSenha(senha);
				cliente.setNome(nome);
				cliente.setSobreNome(sobrenome);
				cliente.setDtn(nascimento);
				cliente.setTel(telefone);
				cliente.setCpf(cpf);

				clientes.add(cliente);
			}

			rs.close();
			st.close();
			return clientes;
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}

	public Cliente buscarCliente(int idCliente) throws DAOException {
		Cliente cliente = null;
		try {
			//Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/newhorizon", "leoadm","newhorizon321");
			
			String sql = "SELECT * from cliente WHERE idCliente = ?";

			PreparedStatement stmt = this.connection.prepareStatement(sql);

			stmt.setInt(1, idCliente);

			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				String email = rs.getString("email");
				String senha = rs.getString("senha");
				String nome = rs.getString("nome");
				String sobrenome = rs.getString("sobrenome");
				String nascimento = rs.getString("nascimento");
				String telefone = rs.getString("telefone");
				String cpf = rs.getString("cpf");
				
				cliente = new Cliente( nome,  sobrenome,  email,  telefone,  cpf,  nascimento,  senha,  idCliente);
				cliente.setIdCliente(idCliente);
				cliente.setEmail(email);
				cliente.setSenha(senha);
				cliente.setNome(nome);
				cliente.setSobreNome(sobrenome);
				cliente.setDtn(nascimento);
				cliente.setTel(telefone);
				cliente.setCpf(cpf);
			} // se a query não selecionar nada, será retornado null
			rs.close();
			stmt.close();
			return cliente;
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}

}
