<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!doctype html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <!---Metatag responsiva-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!---\BootstrapCSS-->
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <!---Topo-->
        <link rel="stylesheet" href="style.css">
        <title>Atualiza��o de cadastro de Clientes</title>
    </head>
    <body>
    	<!---Header-->      
        <header class="p-3 bg-transparent text-white">
            <div class="container">
                <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                    <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                        <a href="index.html"><img src="./Imagens/Logo_projeto_escolar.svg"  width="50" height="50" href="index.html">
                        </a>   
                    </a>             
                    <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                        <li><a href="index.html" class="nav-link px-2 text-secondary">Home</a></li>
                        <li><a href="CreateAndFind" class="nav-link px-2 text-secondary">Lista de Clientes</a></li>
                    </ul>
                    <form action="CreateAndFind" method="GET" class="d-flex">
                        <input name="pesquisa" class="form-control me-2" type="search" placeholder="Digite o Nome ou CPF" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Buscar</button>
                    </form>
                    <!---O atributo aria-label � usado para definir uma string na tag do elemento atual, usa-se nos casos que a tag do texto n�o seja vis�vel na tela--->                
                </div>
            </div>
        </header>
        <!---Main-->
        <main>
        <div class="container">
            <div class="row">
                <div class="cold-md-7">
                    <hr>
                        <h3>Atualizar Cliente</h3>
                    <hr>
                    <form action="ClienteUpdate" method="POST">
                        <input value="${cliente.id}" name="id" type="number" style="visibility:hidden">
                            <div class="form-floating mb-3">
                                <input value="${cliente.nome}" name="nome" maxlength="40" type="text" class="form-control" id="floatingInput1"> 
                                <label>Nome completo</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input value="${cliente.rg}" name="rg" maxlength="40" type="text" class="form-control" id="floatingInput1"> 
                                <label>RG</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input value="${cliente.cpf}" name="cpf" maxlength="11" type="text" class="form-control"> 
                                <label>CPF (apenas n�meros)</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input value="${cliente.telefone}" name="telefone" maxlength="40" type="text" class="form-control" id="floatingInput1"> 
                                <label>Telefone</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input value="${cliente.email}" name="email" maxlength="40" type="text" class="form-control" id="floatingInput1"> 
                                <label>Email</label>
                            </div>
                            <button class="btn btn-success" type="submit">
                                Atualizar Dados
                            </button>
                            <button class="btn btn-secondary" type="reset">
                                Limpar Formul�rio
                            </button>
                        </form>
                        <br>
                    </div>
                </div>
            </div>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>