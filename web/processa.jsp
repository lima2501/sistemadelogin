<%@page import="config.Conexao"%>
<%@page import="java.sql.*"%>

<%
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    String nome = "";
    int i = 0;
    Connection connection = Conexao.conectar();
    String sql = "select * from usuarios where email = ? and senha = ? ";
    PreparedStatement stmt = connection.prepareStatement(sql);
    stmt.setString(1, email);
    stmt.setString(2, senha);
    ResultSet rs = stmt.executeQuery();
    while (rs.next()) {
        nome = rs.getString("nome");
        email = rs.getString("email");
        senha = rs.getString("senha");
        rs.last();
        i = rs.getRow();
    }

    if (i > 0) {
        session.setAttribute("userName", nome);
        response.sendRedirect("home.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }


%>