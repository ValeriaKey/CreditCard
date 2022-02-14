<%@ page contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<f:view>
	<html>
<head>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<title><h:outputText value="#{msg.title}" /></title>
</head>
<body bgcolor="silver">
	<h:form>
		<h1>
			<h:outputText value="#{msg.card_details}" />
		</h1>
		<h:panelGrid columns="3">
			<h:outputText value="#{msg.amount}" />
			<h:inputText id="amount" label="#{msg.amount}"
				value="#{payment.amount}" required="true">
				<f:convertNumber minFractionDigits="2" />
				<f:validateDoubleRange minimum="100" maximum="50000" />
			</h:inputText>
			<h:message for="amount" styleClass="errormsg" />

			<h:outputText value="#{msg.creditCard}" />
			<h:inputText id="card" label="#{msg.creditCard}"
				value="#{payment.card}" required="true">
				<f:validateLength minimum="16" />
				<f:attribute name="requiredMessage" value="#{msg.card_required}" />
			</h:inputText>
			<h:message for="card" styleClass="errormsg" />

			<h:outputText value="#{msg.expiry_date}" />
			<h:inputText id="date" label="#{msg.expiry_date}"
				value="#{payment.date}" required="true">
				<f:convertDateTime pattern="MM/yyyy" />
			</h:inputText>
			<h:message for="date" styleClass="errormsg" />

			<h:outputText value="#{msg.cvv_no}" />
			<h:inputText id="cvv" label="#{msg.cvv_no}" value="#{payment.cvvNo}"
				required="true">
				<f:validateLength minimum="3" />
				<f:attribute name="requiredMessage" value="#{msg.cvv_no_required}" />
			</h:inputText>
			<h:message for="cvv" styleClass="errormsg" />

		</h:panelGrid>
		<br>
		<h:commandButton value="Submit" action="submit" />
	</h:form>
</body>
	</html>
</f:view>

