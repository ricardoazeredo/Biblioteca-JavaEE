
package br.com.biblioteca.DTO;

/**
 * https://pt.wikipedia.org/wiki/Objeto_de_Transfer%C3%AAncia_de_Dados
 * @author Rico
 */
public class LivroDTO {
     private int livroId;
    private String livro;
   
    public int getLivroId() {
        return livroId;
    }
    
    public void setLivroId(int livroId) {
        this.livroId = livroId;
    }

    public String getLivro() {
        return livro;
    }

    public void setLivro(String livro) {
        this.livro = livro;
    }
       
   
}
