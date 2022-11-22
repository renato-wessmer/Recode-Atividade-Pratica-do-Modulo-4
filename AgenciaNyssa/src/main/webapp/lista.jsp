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
        <title>Lista de Clientes</title>
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
                    <!---O atributo aria-label é usado para definir uma string na tag do elemento atual, usa-se nos casos que a tag do texto não seja visível na tela--->                
                </div>
            </div>
        </header>
        <!---Main-->
        <main>
		<br>
		<div class="container">
			<div class="row">
				<div class="cold-md-7">
					<hr>
						<h3>Clientes Cadastrados</h3>
					<hr>
					<table class="table">
						<thead>
							<tr>
								<th>#</th>
								<th>Nome</th>
                                <th>RG</th>
								<th>CPF</th>
								<th>Telefone</th>
								<th>Email</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${clientes}" var="cliente">
								<tr>
									<td>${cliente.id}</td>
									<td>${cliente.nome}</td>
                                    <td>${cliente.rg}</td>
									<td>${cliente.cpf}</td>
									<td>${cliente.telefone}</td>
									<td>${cliente.email}</td>
									<td>
										<a href="ClienteDestroy?clienteId=${cliente.id}">deletar</a> |
										<a href="ClienteUpdate?clienteId=${cliente.id}">atualizar</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<h5><a href="index.html">Voltar para o Cadastro de Clientes</a></h5>
				</div>
			</div>
		</div>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>