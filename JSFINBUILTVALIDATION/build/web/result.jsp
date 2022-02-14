<%@ page contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<f:view>
	<html>
<head>
<link href="styles.css" rel="stylesheet" type="text/css" />
<title><h:outputText value="#{msg.title}" /></title>
</head>
<body bgcolor="silver">
	<h:form>
		<h1>
			<h:outputText value="#{msg.payment_Info}" />
		</h1>
		<h:panelGrid columns="2">
			<h:outputText value="#{msg.amount}" />
			<h:outputText value="#{payment.amount}">
				<f:convertNumber type="currency" />
			</h:outputText>

			<h:outputText value="#{msg.creditCard}" />
			<h:outputText value="#{payment.card}" />

			<h:outputText value="#{msg.cvv_no}" />
			<h:outputText value="#{payment.cvvNo}" />


			<h:outputText value="#{msg.expiry_date}" />
			<h:outputText value="#{payment.date}">
				<f:convertDateTime pattern="MM/yyyy" />
			</h:outputText>
		</h:panelGrid>
		<h:commandButton value="Back" action="back" />
	</h:form>
</body>
	</html>
</f:view>

