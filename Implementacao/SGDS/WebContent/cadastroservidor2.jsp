<%@page import="br.edu.ifrs.restinga.sgds.modelo.Servidor"%>
<%@include file="cabecalho.jsp" %>
<%
	int cod = 0;	
	String acao = (String) request.getAttribute("acao");
	if (request.getAttribute("codigo") != null)
		cod = Integer.parseInt(""+request.getAttribute("codigo"));
	Servidor cad = new Servidor();
	
	cad.setNome(request.getParameter("nome"));
%>
<div id="main">
	<div id="divForm">
		<form name="formcadrhservidor" id="formCadastroServidor" action="cadastroservidor3.jsp?cad=<%= cad %>" method="post"> 
			<input type="hidden" id="acao" name="acao" value="<%= acao %>">
			<input type="hidden" id="codigo" name="codigo" value="<%= cod %>">
			<%-- <input type="hidden" id="cad" name="cad" value="<%= cad %>" > --%>
			<%-- <script>alert(<%= request.getAttribute("acao")%>);</script> --%>
			<p>
				<label for="nome" class="labelFormularioServidor">Nome da M�e:</label>
				<input type="text" id="nomeDaMae" class="inputFormularioServidor" name="nomeDaMae" <% if (request.getAttribute("nomeDaMae") != null) { %> value="<%= request.getAttribute("nomeDaMae") %>" <% } if (request.getAttribute("acao") == "visualizar") {%> readonly="true" <% } %>>
			</p>
			
			<p>
				<label for="nome" class="labelFormularioServidor">Nome do Pai:</label>
				<input type="text" id="nomeDoPai" class="inputFormularioServidor" name="nomeDoPai" <% if (request.getAttribute("nomeDoPai") != null) { %> value="<%= request.getAttribute("nomeDoPai") %>" <% } if (request.getAttribute("acao") == "visualizar") {%> readonly="true" <% } %>>
			</p>
		
			<p>
				<label for="nome" class="labelFormularioServidor">Sexo:</label>
				<input type="radio" id="sexo" class="radioButton" name="sexo" value="masculino"> Masculino <% if (request.getAttribute("sexo") != null) { %> value="<%= request.getAttribute("sexo") %>" <% } if (request.getAttribute("acao") == "visualizar") {%> readonly="true" <% } %>
				<input type="radio" id="sexo" class="radioButton" name="sexo" value="feminino"> Feminino  <% if (request.getAttribute("sexo") != null) { %> value="<%= request.getAttribute("sexo") %>" <% } if (request.getAttribute("acao") == "visualizar") {%> readonly="true" <% } %>
				<input type="radio" id="sexo" class="radioButton" name="sexo" value="outros"> Outros  <% if (request.getAttribute("sexo") != null) { %> value="<%= request.getAttribute("sexo") %>" <% } if (request.getAttribute("acao") == "visualizar") {%> readonly="true" <% } %>
			</p>
			 
			<p>
				<label for="nome" class="labelFormularioServidor">Data de Nascimento:</label>
				<input type="nome" id="dataDeNascimento" class="inputFormularioServidor" name="dataDeNascimento" <% if (request.getAttribute("dataDeNascimento") != null) { %> value="<%= request.getAttribute("dataDeNascimento") %>" <% } if (request.getAttribute("acao") == "visualizar") {%> readonly="true" <% } %>>
			</p>
			 
			<p>
				<label for="nome" class="labelFormularioServidor">Estado Civil:</label>
				<form>
				<select name ="estadocivil"> <option value="solteiro">Solteiro(a)<% if (request.getAttribute("estadoCivil") != null) { %> value="<%= request.getAttribute("estadoCivil") %>" <% } if (request.getAttribute("acao") == "visualizar") {%> readonly="true" <% } %>
				<option value="casado">Casado(a) <% if (request.getAttribute("estadoCivil") != null) { %> value="<%= request.getAttribute("estadoCivil") %>" <% } if (request.getAttribute("acao") == "visualizar") {%> readonly="true" <% } %>
				<option value="viuvo">Vi�vo(a) <% if (request.getAttribute("estadoCivil") != null) { %> value="<%= request.getAttribute("estadoCivil") %>" <% } if (request.getAttribute("acao") == "visualizar") {%> readonly="true" <% } %>
			 	<option value="separado">Separado(a)<% if (request.getAttribute("estadoCivil") != null) { %> value="<%= request.getAttribute("estadoCivil") %>" <% } if (request.getAttribute("acao") == "visualizar") {%> readonly="true" <% } %>
			 	<option value="divorciado">Divorciado(a)<% if (request.getAttribute("estadoCivil") != null) { %> value="<%= request.getAttribute("estadoCivil") %>" <% } if (request.getAttribute("acao") == "visualizar") {%> readonly="true" <% } %>
				<option value="uniaoEstavel">Uni�o Est�vel<% if (request.getAttribute("estadoCivil") != null) { %> value="<%= request.getAttribute("estadoCivil") %>" <% } if (request.getAttribute("acao") == "visualizar") {%> readonly="true" <% } %>
			 	</select>
			 	</form>
			 </p>
			 
			  <p class="submit">
			 	<input type="button" class="tresbotoes" onclick="visuvoltar(); " value="Voltar"> 
			 	<% if (acao == "visualizar") { %> 
			 		<input type="button" class="tresbotoes" onclick="visualterar(<%= cod %>); " value="Alterar">
			 		<input type="button" class="tresbotoes" onclick="visudeletar(<%= cod %>);" value="Excluir">
			 	<% } else { %>
			 		<input type="submit" class="tresbotoes" onclick="return valid('formcadrhsetor'); " value="Avan�ar">
			 	<% } %>
			  	<% if (acao == "selecao") {%>
			 		<input type="reset" class="tresbotoes" value="Limpar">
			 	<% } %>
			 </p>
		</form>
	</div>
</div>
<%@include file="rodape.jsp" %>