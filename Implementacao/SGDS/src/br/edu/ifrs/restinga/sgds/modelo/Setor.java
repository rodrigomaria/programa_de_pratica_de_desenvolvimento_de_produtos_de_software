package br.edu.ifrs.restinga.sgds.modelo;

public class Setor {
	// Classe para manipulaÃ§Ã£o do setor;
	private int codSetor;
	private String nome;
	private String nomeResponsavel;
	private Setor setorResponsavel;
	private String descricao;
	private String email;
	private boolean ativo;

	public int getCodSetor() {
		return codSetor;
	}

	public void setCodSetor(int codSetor) {
		this.codSetor = codSetor;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getNomeResponsavel() {
		return nomeResponsavel;
	}

	public void setNomeResponsavel(String nomeResponsavel) {
		this.nomeResponsavel = nomeResponsavel;
	}

	public Setor getSetorResponsavel() {
		return setorResponsavel;
	}

	public void setSetorResponsavel(Setor setorResponsavel) {
		this.setorResponsavel = setorResponsavel;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean getAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}

	// ValidaÃ§Ãµes
	public boolean validarNomeSetor() {
		for (char t : this.nome.toCharArray()) {
			if (!Character.isLetter(t)) {
				if (!(Character.toString(t).equals(".")
						|| Character.toString(t).equals("-") || Character
						.toString(t).equals("_") || Character.toString(t).equals(" "))) {
					//System.out.println(t);
					return false;
				}
							
			} 
			
		}
		return true;
	}

	public boolean validaEmail() {
		int cont = 0, arro = 0;
		if (this.email.length() != 0) {
			for (char t : this.email.toCharArray()) {
				cont++;
				if (!Character.isLetterOrDigit(t)) {
					if (Character.toString(t).equals("@") && cont > 1
							&& cont < this.email.toCharArray().length) {
						arro++;
					} else if (!(Character.toString(t).equals(".")
							|| Character.toString(t).equals("-") || Character
							.toString(t).equals("_"))) {
						//System.out.println(t);
						return false;
					}
				}
			}
			if (arro == 1) {
				return true;
			} else {
				return false;
			}
		} else {
			return true;
		}
	}
}
