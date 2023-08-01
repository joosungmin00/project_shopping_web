<%@page import="ezen.shoppingmall.domain.customer.dto.Customer"%>
<%@ page contentType="application/json; charset=utf-8" %>
<%@ page import="java.util.List"%>
<%@ page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%-- Rest API Service --%>
<%
	List<Customer> customers = (List<Customer>)request.getAttribute("customers");
	ObjectMapper objectMapper = new ObjectMapper();
	// 직렬화
	String customerJson = objectMapper.writeValueAsString(customers);
	out.println(customerJson);
%>