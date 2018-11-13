
package br.caso4.modelo;

public class pessoa {
    private int idpessoa;
    private String nome;
    private String email;
    private String cpf;

    public pessoa(int idpessoa, String nome, String email, String cpf) {
        this.idpessoa = idpessoa;
        this.nome = nome;
        this.email = email;
        this.cpf = cpf;
    }

    public pessoa() {
    }

    public int getIdpessoa() {
        return idpessoa;
    }

    public void setIdpessoa(int idpessoa) {
        this.idpessoa = idpessoa;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public pessoa(String nome, String email, String cpf) {
        this.nome = nome;
        this.email = email;
        this.cpf = cpf;
    }
    
}
