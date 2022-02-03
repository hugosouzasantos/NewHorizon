package horizon.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import until.ConnectionFactory;
import horizon.modelo.Cliente;
import horizon.modelo.Produto;

public class DAOProdutoImpl implements DAOProduto{
	
	private Connection connection;
	private Produto produto;

	public DAOProdutoImpl() throws DAOException {
		try {
			this.connection = (Connection) ConnectionFactory.getConnection();
		} catch (Exception e) {
			throw new DAOException("Erro na conexão: " + e.getMessage());
		}
	}

	public void cadastrar(Produto produto) throws DAOException {
		try {
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/newhorizon", "leoadm","newhorizon321");
			
			String sql = "INSERT INTO produto(nome, plataforma, jogo, tipo, raridade, descricao, quantidade, preco) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";

			PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setString(1, produto.getNome());
			stmt.setString(2, produto.getPlataforma());
			stmt.setString(3, produto.getJogo());
			stmt.setString(4, produto.getTipo());
			stmt.setString(5, produto.getRaridade());
			stmt.setString(6, produto.getDescricao());
			stmt.setInt(7, produto.getQuantidade());
			stmt.setFloat(8, produto.getPreco());

			stmt.execute();

			ResultSet rs = stmt.getGeneratedKeys();

			if (rs.next()) {
				int idProduto = rs.getInt(1);
				produto.setIdProduto(idProduto);
			}

			rs.close();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao cadastrar: " + e.getMessage());
		}

	}


	public void atualizar(Produto produto) throws DAOException {
		try {			
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/newhorizon", "leoadm","newhorizon321");
			
			String sql = "UPDATE produto SET nome = ?, plataforma = ?, jogo = ?, tipo = ?, raridade = ?, descricao = ?, quantidade = ?, preco = ? WHERE idProduto = ?";

			PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setString(1, produto.getNome());
			stmt.setString(2, produto.getPlataforma());
			stmt.setString(3, produto.getJogo());
			stmt.setString(4, produto.getTipo());
			stmt.setString(5, produto.getRaridade());
			stmt.setString(6, produto.getDescricao());
			stmt.setInt(7, produto.getQuantidade());
			stmt.setFloat(8, produto.getPreco());
			stmt.setInt(9, produto.getIdProduto());

			stmt.executeUpdate();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao atualizar: " + e.getMessage());
		}
	}

	public void remover(Produto produto) throws DAOException {
		try {
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/newhorizon", "leoadm","newhorizon321");
			
			String sql = "DELETE FROM produto WHERE idProduto = ?";

			PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setLong(1, produto.getIdProduto());

			stmt.executeUpdate();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao remover: " + e.getMessage());
		}
	}

	public List<Produto> todosProdutos() throws DAOException {

		List<Produto> produtos = new ArrayList<Produto>();

		try {
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/newhorizon", "leoadm","newhorizon321");
			Statement st = conexao.createStatement();

			String sql = "SELECT idProduto, nome, plataforma, jogo, tipo, raridade, descricao, quantidade, preco FROM produto";

			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				int idProduto = rs.getInt("idProduto");
				String nome = rs.getString("nome");
				String plataforma = rs.getString("plataforma");
				String jogo = rs.getString("jogo");
				String tipo = rs.getString("tipo");
				String raridade = rs.getString("raridade");
				String descricao = rs.getString("descricao");
				int quantidade = rs.getInt("quantidade");
				float preco = rs.getFloat("preco");


				Produto produto = new Produto( nome,  plataforma,  jogo,  tipo,  raridade,  descricao, quantidade, preco, idProduto);
				produto.setIdProduto(idProduto);
				produto.setQuantidade(quantidade);
				produto.setPlataforma(plataforma);
				produto.setNome(nome);
				produto.setJogo(jogo);
				produto.setRaridade(raridade);
				produto.setPreco(preco);
				produto.setTipo(tipo);
				produto.setDescricao(descricao);

				produtos.add(produto);
			}

			rs.close();
			st.close();
			return produtos;
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}

	public Produto buscarProduto(int idProduto) throws DAOException {
		Produto produto = null;
		try {
			
			//Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/newhorizon", "leoadm","newhorizon321");
		
			String sql = "SELECT nome, plataforma, jogo, tipo, raridade, descricao, quantidade, preco FROM produto WHERE idProduto = ?";

			//PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
			PreparedStatement stmt = this.connection.prepareStatement(sql);

			stmt.setInt(1, idProduto);

			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				String nome = rs.getString("nome");
				String plataforma = rs.getString("plataforma");
				String jogo = rs.getString("jogo");
				String tipo = rs.getString("tipo");
				String raridade = rs.getString("raridade");
				String descricao = rs.getString("descricao");
				int quantidade = rs.getInt("quantidade");
				float preco = rs.getFloat("preco");
				
				produto = new Produto( nome,  plataforma,  jogo,  tipo,  raridade,  descricao, quantidade,  preco,  idProduto);

				produto.setIdProduto(idProduto);
				produto.setNome(nome);
				produto.setPlataforma(plataforma);
				produto.setJogo(jogo);
				produto.setTipo(tipo);
				produto.setRaridade(raridade);
				produto.setDescricao(descricao);
				produto.setQuantidade(quantidade);
				produto.setPreco(preco);
			} // se a query não selecionar nada, será retornado null
			rs.close();
			stmt.close();
			return produto;
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}

}
