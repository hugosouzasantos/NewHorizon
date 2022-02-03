package horizon.modelo;

public class Moderador {
	
	private String nome;
    private String senha;
    private String email;
    private int idModerador;

    public Moderador(String nome, String senha, String email, int idModerador) {
		this.nome = nome;
		this.senha = senha;
		this.email = email;
		this.idModerador = idModerador;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public int getIdModerador() {
		return idModerador;
	}

	public void setIdModerador(int idModerador) {
		this.idModerador = idModerador;
	}
    
    
}
