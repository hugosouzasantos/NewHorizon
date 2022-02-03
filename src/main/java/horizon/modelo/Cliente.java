package horizon.modelo;

public class Cliente {
	
    private String nome;
    private String sobreNome;
    private String email;
    private String tel;
    private String cpf;
    private String dtn;
    private String senha;
    private int idCliente;
    
	public Cliente(String nome, String sobreNome, String email, String tel, String cpf, String dtn, String senha, int idCliente) {
		super();
		this.nome = nome;
		this.sobreNome = sobreNome;
		this.email = email;
		this.tel = tel;
		this.cpf = cpf;
		this.dtn = dtn;
		this.senha = senha;
		this.idCliente = idCliente;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSobreNome() {
		return sobreNome;
	}
	public void setSobreNome(String sobreNome) {
		this.sobreNome = sobreNome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getDtn() {
		return dtn;
	}
	public void setDtn(String dtn) {
		this.dtn = dtn;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}
	public int getIdCliente() {
		return idCliente;
	}
    
    

}
