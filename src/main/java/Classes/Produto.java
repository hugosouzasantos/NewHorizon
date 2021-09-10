package Classes;

public class Produto {
	private String nome, plataforma, jogo, tipo, raridade, imagem, descricao, codProduto;
	private int  quantidade;
	private float preco;
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
	public String getImagem() {
		return imagem;
	}
	public void setImagem(String imagem) {
		this.imagem = imagem;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getCodProduto() {
		return codProduto;
	}
	public void setCodProduto(String codProduto) {
		this.codProduto = codProduto;
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
	public Produto(String nome, String plataforma, String jogo, String tipo, String raridade, String imagem,
			String descricao, String codProduto, int quantidade, float preco) {
		super();
		this.nome = nome;
		this.plataforma = plataforma;
		this.jogo = jogo;
		this.tipo = tipo;
		this.raridade = raridade;
		this.imagem = imagem;
		this.descricao = descricao;
		this.codProduto = codProduto;
		this.quantidade = quantidade;
		this.preco = preco;
	}
	
	
	
	
	
}
