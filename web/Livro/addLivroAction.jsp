<%-- 
    Document   : addLivroAction
    Author     : Rico
--%>

<%@page import="br.com.biblioteca.DAO.LivroDAO"%>
<%@page import="br.com.biblioteca.DTO.LivroDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
                LivroDTO livroDTO = new LivroDTO();
                livroDTO.setLivro(request.getParameter("nome"));

                LivroDAO livroDAO = new LivroDAO();
                livroDAO.CadastrarLivro(livroDTO);
                
                response.sendRedirect("listarLivro.jsp");
            } catch(Exception e){
                System.out.println("Erro"+ e);
            }
         %>
    </body>
</html>
