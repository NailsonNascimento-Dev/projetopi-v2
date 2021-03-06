<%-- 
    Document   : index
    Created on : 03/10/2020, 19:08:59
    Author     : Nailson Nascimento <nailsonbr@gmail.com>
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <!--include do cabeçalho-->
    <%@include file="header.jsp" %>

    <body class="container">

        <div class="row mt-2 border border-dark" style=" height: 100%">


            <!--Inicio -- Menu/navBar-->
            <div class="col-3 bg-dark  border border-primary text-white ">

                <div class="sidebar-sticky">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <div class="btn-group dropright" >
                                <a class="nav-link text-white" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" 
                                         fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" 
                                         stroke-linejoin="round" class="feather feather-shopping-cart"><circle cx="9"
                                         cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle>
                                    <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
                                    <b><i>Venda</b></i><span class="sr-only">(atual)</span>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="VendaSimples.jsp">Venda Simples</a>
                                        <a class="dropdown-item" href="VendaPlanos.jsp">Venda De Planos</a>
                                        <a class="dropdown-item" href=VendaAssinantes.jsp#">Venda Para Assinantes</a>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <div class="btn-group dropright" >
                                <a class="nav-link text-white" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" 
                                         fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" 
                                         stroke-linejoin="round" class="feather feather-file">
                                    <path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path><polyline points="13 2 13 9 20 9"></polyline></svg>
                                    Cliente<span class="sr-only">(atual)</span>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="InsertCliente.jsp">Cadastrar Cliente</a>
                                        <a class="dropdown-item" href="ListarClientesServlet">Listar Clientes</a>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="#">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" 
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" 
                                     stroke-linejoin="round" class="feather feather-shopping-cart"><circle cx="9"
                                     cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle>
                                <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
                                Funcionário
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="#">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" 
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" 
                                     stroke-linejoin="round" class="feather feather-users"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2">
                                </path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87">
                                </path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                                Produto
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="#">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" 
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" 
                                     stroke-linejoin="round" class="feather feather-bar-chart-2"><line x1="18" y1="20" x2="18" y2="10">

                                </line><line x1="12" y1="20" x2="12" y2="4"></line><line x1="6" y1="20" x2="6" y2="14"></line></svg>
                                Relatório
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="#">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" 
                                     stroke-linejoin="round" class="feather feather-layers"><polygon points="12 2 2 7 12 12 22 7 12 2">
                                </polygon><polyline points="2 17 12 22 22 17"></polyline><polyline points="2 12 12 17 22 12"></polyline></svg>
                                Planos / Assinatura
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="#">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" 
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" 
                                     stroke-linejoin="round" class="feather feather-home">
                                <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
                                Filial
                            </a>
                        </li>

                    </ul>



                </div> 


            </div>






            <br>
            <div class="col-7" style="height: 100%"> 
                <h1 class="text-center"><b>Finalizar Venda de Plano</b></h1><br>
                <form action="VendaPlanoClienteFinalizar" method="POST">
                    <table class="table table-hover">
                        <thead class="col-md-auto">

                        <th>Nome</th>
                        <th>CPF</th>
                        <th>Assinatura</th>
                        <th>Tipo Assinatura</th>
                        <th>Valor</th>

                        </thead>

                        <tbody> 
                            <c:forEach var="cliente" items="${listarCliente}">
                                <tr class="col-md-auto">

                                    <td value="${cliente.nome}" name="nome">${cliente.nome}</td>
                            <input hidden="" name="cpf" value="${cliente.cpf}">
                            <td value="${cliente.cpf}" name="cpf">${cliente.cpf}</td>
                            <input hidden="" name="assinaturaPlano" value="${assinaturaPlano}">
                            <td value="${assinaturaPlano}" name="assinaturaPlano">${assinaturaPlano}</td>
                            <input hidden="" name="tipo_assinatura" value="${tipo_assinatura}">
                            <td value="${tipo_assinatura}" name="tipo_assinatura">${tipo_assinatura}</td>
                            <input hidden="" name="valor_total" value="${valor_total}">
                            <td value="${valor_total}" name="valor_total">${valor_total}</td>

                            </tr>
                        </c:forEach>

                        </tbody>

                    </table>
                    <input class="btn btn-primary" type="submit" value="Finalizar">
                </form>
            </div>
            <!--  FIM -----  corpo que deve ser alterardo de acordo com a pagina -->
            <%@include file="rodape.jsp" %>

    </body>

</html>
