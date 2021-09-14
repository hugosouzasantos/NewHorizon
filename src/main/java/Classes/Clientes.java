package Classes;

public class Clientes {
	
	private String nome;
	private String sobreNome;
	private String email;
	private String tel;
	private String cpf;
	private String dtn;
	private String senha;
	private String nomeFile;
	
	public Clientes(String nome, String sobreNome, String email, String tel, String cpf, String dtn, String senha,
			String nomeFile) {
		super();
		this.nome = nome;
		this.sobreNome = sobreNome;
		this.email = email;
		this.tel = tel;
		this.cpf = cpf;
		this.dtn = dtn;
		this.senha = senha;
		this.nomeFile = nomeFile;
	}

	public String getNome() {
		return nome;
	}

	public String getSobreNome() {
		return sobreNome;
	}

	public String getEmail() {
		return email;
	}

	public String getTel() {
		return tel;
	}

	public String getCpf() {
		return cpf;
	}

	public String getDtn() {
		return dtn;
	}

	public String getSenha() {
		return senha;
	}

	public String getNomeFile() {
		return nomeFile;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public void setSobreNome(String sobreNome) {
		this.sobreNome = sobreNome;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setTel(String telefone) {
		this.tel = telefone;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public void setDtn(String ddn) {
		this.dtn = ddn;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public void setNomeFile(String nomeFile) {
		this.nomeFile = nomeFile;
	}
	
}