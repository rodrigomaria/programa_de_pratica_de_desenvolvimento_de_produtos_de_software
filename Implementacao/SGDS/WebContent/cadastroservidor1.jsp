<%@include file="cabecalho.jsp" %>
<%
	int cod = 0;	
	String acao = (String) request.getAttribute("acao");
	if (request.getAttribute("codigo") != null)
		cod = Integer.parseInt(""+request.getAttribute("codigo"));
	
%>
<div id="main">
	<div id="divForm">
		<form name="formcadrhservidor" id="formCadastroServidor" action="cadastroservidor2.jsp" method="post"> 
			<input type="hidden" id="acao" name="acao" value="<%= acao %>">
			<input type="hidden" id="codigo" name="codigo" value="<%= cod %>"> 
			<%-- <script>alert(<%= request.getAttribute("acao")%>);</script> --%>
			<p>
				<label for="nome" class="labelFormularioServidor">Nome:</label>
				<input type="text" id="nome" class="inputFormularioServidor" required="required" name="nome" <% if (request.getAttribute("nome") != null) { %> value="<%= request.getAttribute("nome") %>" <% } if (request.getAttribute("acao") == "visualizar") {%> readonly="true" <% } %>>
			</p>		 
			 		 
			<p>
				<label for="nome" class="labelFormularioServidor">Matr�cula SIAPE:</label>
				<input type="text" id="matriculaSIAPE" class="inputFormularioServidor" required="required" name="matriculaSIAPE" <% if (request.getAttribute("matriculaSIAPE") != null) { %> value="<%= request.getAttribute("matriculaSIAPE") %>" <% } if (request.getAttribute("acao") == "visualizar") {%> readonly="true" <% } %>>
			</p>
			
			<p>
				<label for="nome" class="labelFormularioServidor">Senha:</label>
				<input type="text" id="senha" class="inputFormularioServidor" required="required" name="senha" <% if (request.getAttribute("senha") != null) { %> value="<%= request.getAttribute("senha") %>" <% } if (request.getAttribute("acao") == "visualizar") {%> readonly="true" <% } %>>
			</p>
			 
			<p>
				<label for="email" class="labelFormularioServidor">E-mail:</label>
				<input type="email" id="email" class="inputFormularioServidor" required="required" name="email" <% if (request.getAttribute("email") != null) { %> value="<%= request.getAttribute("email") %>" <% } if (request.getAttribute("acao") == "visualizar") {%> readonly="true" <% } %>>
			</p>
			 
			<p>
				<label for="nome" class="labelFormularioServidor">Perfil:</label>
				<input type="nome" id="perfil" class="inputFormularioServidor" required="required" name="perfil" <% if (request.getAttribute("perfil") != null) { %> value="<%= request.getAttribute("perfil") %>" <% } if (request.getAttribute("acao") == "visualizar") {%> readonly="true" <% } %>>
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