<%-- 
    Document   : adicionar
    Created on : 21/06/2019, 10:37:20
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Crud</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Adicionar novo registro</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Nome</label>
                        <input type="text" name="nome" class="form-control">
                        <label>Email</label>
                        <input type="text" name="email" class="form-control">
                        <label>Nacionalidade</label>
                        <input type="text" name="nacionalidade" class="form-control">
                        <br>
                        <input type="submit" value="Adicionar" class="btn btn-success">
                        <a href="index.htm">Voltar</a>
                    </form>
                </div>
            </div>
    </body>
</html>
