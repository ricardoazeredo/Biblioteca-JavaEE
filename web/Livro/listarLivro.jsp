<%@page import="br.com.biblioteca.DAO.LivroDAO"%>
<%@page import="br.com.biblioteca.DTO.LivroDTO"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Livro</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar bg-light">
            <div class="container">
                <a href="/ProjetoBiblioteca/index.html" ><span class="navbar-brand mb-0 h1">Biblioteca</span></a>
            </div>
        </nav>
        <div class="container">
             <div>
                <h1>Listar Livros</h1>
            </div>
            <%
               try {
                 LivroDAO livroDAO = new LivroDAO();
                 ArrayList<LivroDTO>  lista = livroDAO.PesquisarLivro();

                for(int i=0; i < lista.size(); i++){
                    out.print("Código: " + lista.get(i).getLivroId() + "<br/>");
                    out.print("Titulo: " + lista.get(i).getLivro() + "<br/>");

                    out.print("<a type='button' class='btn btn-primary' href='frmAlterarLivroView.jsp?id=" 
                    + lista.get(i).getLivroId() +
                    "&nome="+ lista.get(i).getLivro() +                
                    "'>Alterar </a>");

                    out.print("<a type='button' class='btn btn-danger' href='frmExcluirLivroView.jsp?id=" 
                    + lista.get(i).getLivroId() +
                    "&nome="+ lista.get(i).getLivro() +                
                    "'>Excluir</a>");

                %><br/><br/><%
                }
               } catch(Exception e){
                out.print("Não há livros");
               }  

             %>   
        </div>
       
         
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
