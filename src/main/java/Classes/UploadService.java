package Classes;

import java.io.File;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class UploadService {
	
	private String diretorio;
	private String nomeArquivo;
	
	private String nomeOriginal;
	private File arquivoTemp = null;
	
	public UploadService(String diretorio) {
		this.diretorio = diretorio; 
	}
	
	public boolean doUpload(HttpServletRequest request, ServletContext context){
		if(ServletFileUpload.isMultipartContent(request)) {
			DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			String caminhoDiretorio = context.getRealPath("") + File.separator + diretorio;
			
			File diretorioUpload = new File(caminhoDiretorio);
			
			if(!diretorioUpload.exists()) {
				diretorioUpload.mkdir();
			}
		}
		return true;
		// N está finalizado
	}
	
}
