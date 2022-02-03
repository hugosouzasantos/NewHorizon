package horizon.dao;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import java.sql.Connection;

import horizon.modelo.Vendedor;
import until.ConnectionFactory;

public class DAOVendedorImpl implements DAOVendedor{
	
	private Connection connection;
	private Vendedor vendedor;

	public DAOVendedorImpl() throws DAOException {
		try {
			this.connection = (Connection) ConnectionFactory.getConnection();
		} catch (Exception e) {
			throw new DAOException("Erro na conexão: " + e.getMessage());
		}
	}

	public void cadastrar(Vendedor vendedor) throws DAOException {
		try {
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/newhorizon", "leoadm","newhorizon321");
			
			String sql = "INSERT INTO vendedor(nome, sobrenome, email, senha, nascimento, rg, endereco, plataforma, telefone, cpf) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
			
			PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setString(1, vendedor.getNome());
			stmt.setString(2, vendedor.getSobreNome());
			stmt.setString(3, vendedor.getEmail());
			stmt.setString(4, vendedor.getSenha());
			stmt.setString(5, vendedor.getDtn());
			stmt.setString(6, vendedor.getRg());
			stmt.setString(7, vendedor.getEndereco());
			stmt.setString(8, vendedor.getPpv());
			stmt.setString(9, vendedor.getTel());
			stmt.setString(10, vendedor.getCpf());

			stmt.execute();

			ResultSet rs = stmt.getGeneratedKeys();

			if (rs.next()) {
				int idVendedor = rs.getInt(1);
				vendedor.setIdVendedor(idVendedor);
			}

			rs.close();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao cadastrar: " + e.getMessage());
		}

	}


	public void atualizar(Vendedor vendedor) throws DAOException {
		try {
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/newhorizon", "leoadm","newhorizon321");
			
			String sql = "UPDATE vendedor SET nome = ?, sobrenome = ?, email = ?, senha = ?, nascimento = ?, rg = ?, endereco = ?, plataforma = ?, telefone = ?, cpf = ? WHERE idVendedor = ?";

			PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setString(1, vendedor.getNome());
			stmt.setString(2, vendedor.getSobreNome());
			stmt.setString(3, vendedor.getEmail());
			stmt.setString(4, vendedor.getSenha());
			stmt.setString(5, vendedor.getDtn());
			stmt.setString(6, vendedor.getRg());
			stmt.setString(7, vendedor.getEndereco());
			stmt.setString(8, vendedor.getPpv());
			stmt.setString(9, vendedor.getTel());
			stmt.setString(10, vendedor.getCpf());
			stmt.setInt(11, vendedor.getIdVendedor());

			stmt.executeUpdate();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao atualizar: " + e.getMessage());
		}
	}

	public void remover(Vendedor vendedor) throws DAOException {
		try {
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/newhorizon", "leoadm","newhorizon321");
			
			String sql = "DELETE FROM vendedor WHERE idVendedor = ?";

			PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setInt(1, vendedor.getIdVendedor());

			stmt.executeUpdate();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao remover: " + e.getMessage());
		}
	}

	public List<Vendedor> todosVendedors() throws DAOException {

		List<Vendedor> vendedors = new ArrayList<Vendedor>();

		try {
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/newhorizon", "leoadm","newhorizon321");
			Statement st = conexao.createStatement();

			String sql = "SELECT idVendedor, nome, sobrenome, email, senha, nascimento, rg, endereco, plataforma, telefone, cpf FROM vendedor";

			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				int idVendedor = rs.getInt("idVendedor");
				String nome = rs.getString("nome");
				String sobrenome = rs.getString("sobrenome");
				String email = rs.getString("email");
				String senha = rs.getString("senha");
				String nascimento = rs.getString("nascimento");
				String rg = rs.getString("rg");
				String endereco = rs.getString("endereco");
				String plataforma = rs.getString("plataforma");
				String telefone = rs.getString("telefone");
				String cpf = rs.getString("cpf");


				Vendedor vendedor = new Vendedor( nome,  sobrenome,  email,  telefone,  cpf,  nascimento,  senha, rg,  endereco,  plataforma, idVendedor);
				vendedor.setIdVendedor(idVendedor);
				vendedor.setNome(nome);
				vendedor.setSobreNome(sobrenome);
				vendedor.setEmail(email);
				vendedor.setTel(telefone);
				vendedor.setCpf(cpf);
				vendedor.setDtn(nascimento);
				vendedor.setSenha(senha);
				vendedor.setRg(rg);
				vendedor.setEndereco(endereco);
				vendedor.setPpv(plataforma);

				vendedors.add(vendedor);
			}

			rs.close();
			st.close();
			return vendedors;
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}

	public Vendedor buscarVendedor(int idVendedor) throws DAOException {
		Vendedor vendedor = null;
		try {
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/newhorizon", "leoadm","newhorizon321");
			
			String sql = "SELECT * from vendedor WHERE idVendedor = ?";

			PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setInt(1, idVendedor);

			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				String nome = rs.getString("nome");
				String sobrenome = rs.getString("sobrenome");
				String email = rs.getString("email");
				String senha = rs.getString("senha");
				String nascimento = rs.getString("nascimento");
				String rg = rs.getString("rg");
				String endereco = rs.getString("endereco");
				String plataforma = rs.getString("plataforma");
				String telefone = rs.getString("telefone");
				String cpf = rs.getString("cpf");
				
				
				vendedor = new Vendedor( nome,  sobrenome,  email,  telefone,  cpf,  nascimento,  senha, rg,  endereco,  plataforma,  idVendedor);
				vendedor.setIdVendedor(idVendedor);
				vendedor.setNome(nome);
				vendedor.setSobreNome(sobrenome);
				vendedor.setEmail(email);
				vendedor.setTel(telefone);
				vendedor.setCpf(cpf);
				vendedor.setDtn(nascimento);
				vendedor.setSenha(senha);
				vendedor.setRg(rg);
				vendedor.setEndereco(endereco);
				vendedor.setPpv(plataforma);
			} 
			rs.close();
			stmt.close();
			return vendedor;
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}

}
