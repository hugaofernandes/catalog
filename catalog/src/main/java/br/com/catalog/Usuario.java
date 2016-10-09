package br.com.catalog;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

@Entity
public class Usuario {

	@Id
	@GeneratedValue(generator = "sequenceGeneratorUsuario", strategy=GenerationType.AUTO)
	   @SequenceGenerator(name = "sequenceGeneratorUsuario", sequenceName = "usuario_id_seq")
	private Integer id;
	private boolean ativo;
	private String nome;
	@Column(columnDefinition="bpchar(11)")
	private String cpf;
	private String email;
	private String senha;
	
	public Usuario(){
		
	}
	
	public boolean isAtivo() {
		return ativo;
	}
	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public Integer getId() {
		return id;
	}
	
	
	
}
