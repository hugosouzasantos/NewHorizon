package Classes;

import java.util.ArrayList;

public class BancoDeDados {
	
	private static ArrayList<Produto>
		produtosCadastrados = new ArrayList<Produto>();
	
	public void cadastarProduto(Produto produto) {
		produtosCadastrados.add(produto);
		
	}
	
	
	public ArrayList<Produto> buscarProdutosFoda(){
		return produtosCadastrados;
	}
	
	public Produto buscarProdutoPorCodigo(String codProduto) {
		for(int i = 0; i < produtosCadastrados.size(); i++) {
			Produto produto = produtosCadastrados.get(i);
			if(produto.getCodProduto().equals(codProduto))
				return produto;
		}
		
			return null;		
	}
	
	public void atualizarProduto(Produto produtoAtualizado) {
		for(int i = 0; i < produtosCadastrados.size(); i++) {
			Produto produto = produtosCadastrados.get(i);
			if(produtoAtualizado.getCodProduto().equals(produto.getCodProduto())) {
				produtosCadastrados.set(i, produtoAtualizado);
				break;	
			}
		}
	}
	
	public void removerProduto(String codProduto){
	    int index = -1;
	    for(int i = 0; i < produtosCadastrados.size(); i++){
	        Produto produto = produtosCadastrados.get(i);
	        if(produto.getCodProduto().equals(codProduto)){
	            index = i;
	            break;
	        }
	    }
	    if(index != -1){
	        produtosCadastrados.remove(index);
	    }
	}
	
	public int gerarTamanhoLista() {
		int tamanhoLista = produtosCadastrados.size();

		return tamanhoLista;
	}
	
	
}
