<%@ page import="java.util.*" %>
<%@ page import="com.indracompany.treinamento.util.xml.Elemento"%>
<%@ page contentType="text/html; charset=ISO-8859-5"%>
<%@ page import="com.indracompany.treinamento.model.service.ContaBancariaService" %>
<%@ page import="com.indracompany.treinamento.util.xml.Elemento" %>
<%@ page import="com.indracompany.treinamento.model.entity.ContaBancaria" %>
<%@ page contentType="text/html; charset=ISO-8859-5" %>
<html>
<head>
    <title>Lista de Correntistas</title>
</head>
<body bgcolor="white">
<h2>Lista de Correntistas</h2>
<table border="1">
    <tr>
        <th>Nome</th>
        <th>Ag?ncia</th>
        <th>Conta</th>
        <th>Saldo</th>
    </tr>
    <%
        ContaBancariaService contaService = new ContaBancariaService();
        List<ContaBancaria> listaContas = contaService.listar();

        for (ContaBancaria conta : listaContas) {
            String nomeCliente = conta.getCliente().getNome();
            String agencia = conta.getAgencia();
            String numeroConta = conta.getNumero();
            double saldo = conta.getSaldo();
    %>
    <tr>
        <td><%= nomeCliente %></td>
        <td><%= agencia %></td>
        <td><%= numeroConta %></td>
        <td><%= String.format("%.2f", saldo) %></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
