package horizon.modelo;

public class Produto {
	
    private String nome;
    private String plataforma;
    private String jogo;
    private String tipo;
    private String raridade;
    private String descricao;
    private int  quantidade;
    private float preco;
    private int idProduto;
    
	public Produto(String nome, String plataforma, String jogo, String tipo, String raridade, String descricao,
			int quantidade, float preco, int idProduto) {
		this.nome = nome;
		this.plataforma = plataforma;
		this.jogo = jogo;
		this.tipo = tipo;
		this.raridade = raridade;
		this.descricao = descricao;
		this.quantidade = quantidade;
		this.preco = preco;
		this.idProduto = idProduto;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getPlataforma() {
		return plataforma;
	}

	public void setPlataforma(String plataforma) {
		this.plataforma = plataforma;
	}

	public String getJogo() {
		return jogo;
	}

	public void setJogo(String jogo) {
		this.jogo = jogo;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getRaridade() {
		return raridade;
	}

	public void setRaridade(String raridade) {
		this.raridade = raridade;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public int getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}

	public float getPreco() {
		return preco;
	}

	public void setPreco(float preco) {
		this.preco = preco;
	}

	public int getIdProduto() {
		return idProduto;
	}

	public void setIdProduto(int idProduto) {
		this.idProduto = idProduto;
	}
    
   
    
    

}
