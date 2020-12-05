<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página principal</title>
    </head>
    <body>
        <h1>Bem vindo ao sistema 
            <% 
                String nome = (String) session.getAttribute("userName");
                out.print(nome);
                if(nome == null){
                    response.sendRedirect("index.jsp");
                }
            %> 
        </h1>
        <img src="imagens/DukeNTux.jpg" alt="dukeandtux" width="500">
        <h3><a href="logout.jsp">Sair</a></h3>
    </body>
</html>
