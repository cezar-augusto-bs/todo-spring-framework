<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Crud</title>
    </head>

    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <a href="adicionar.htm" class="btn btn-light">Novo registro</a>
                </div>
                <div class="card-body">	
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>NOME</th>
                                <th>EMAIL</th>
                                <th>NACIONALIDADE</th>
                                <th>AÇÕES</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dados" items="${lista}">
                                <tr>
                                    <td>${dados.Id}</td>
                                    <td>${dados.Nome}</td>
                                    <td>${dados.Email}</td>
                                    <td>${dados.Nacionalidade}</td>
                                    <td>
                                        <a href="editar.htm?id=${dados.Id}" class="btn btn-warning">Editar</a>
                                        <a href="deletar.htm?id=${dados.Id}"class="btn btn-danger">Deletar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
