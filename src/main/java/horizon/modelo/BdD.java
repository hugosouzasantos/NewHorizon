package horizon.modelo;

import java.util.ArrayList;




public class BdD {
	private static ArrayList<Vendedor> vendedoresCadastrados = new ArrayList<Vendedor>();
	
	

	public void cadastrarVendedor(Vendedor vendedor) {
		vendedoresCadastrados.add(vendedor);
	}

	public ArrayList<Vendedor> buscarTodosVendedores() {
		return vendedoresCadastrados;
	}

	public Vendedor buscarVendedorPorCPF(String cpf) {
		for (int i = 0; i < vendedoresCadastrados.size(); i++) {
			Vendedor vendedor = vendedoresCadastrados.get(i);
			if (vendedor.getCpf().equals(cpf)) {
				return vendedor;
			}
		}
		return null; 
	}

	public void atualizarVendedor(Vendedor vendedorAtualizado) {
		for (int i = 0; i < vendedoresCadastrados.size(); i++) {
			Vendedor vendedor = vendedoresCadastrados.get(i);
			if (vendedorAtualizado.getCpf().equals(vendedor.getCpf())) {
				vendedoresCadastrados.set(i, vendedorAtualizado); 
				break; 
			}
		}
	}

	public void removerVendedor(String cpf) {
		int index = -1; 
		for (int i = 0; i < vendedoresCadastrados.size(); i++) {
			Vendedor vendedor = vendedoresCadastrados.get(i); 
			if (vendedor.getCpf().equals(cpf)) {
				index = i;
				break; 
			}
		}
		if (index != -1)
			vendedoresCadastrados.remove(index);
	}

}
