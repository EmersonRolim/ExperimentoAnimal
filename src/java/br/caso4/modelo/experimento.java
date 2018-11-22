/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.caso4.modelo;

/**
 *
 * @author 26148269
 */
public class experimento {
    
    private int idexperimento;
    private int idpessoa;
    private int idanimal;
    private int idbioterio;

    public int getIdexperimento() {
        return idexperimento;
    }

    public void setIdexperimento(int idexperimento) {
        this.idexperimento = idexperimento;
    }

    public int getIdpessoa() {
        return idpessoa;
    }

    public void setIdpessoa(int idpessoa) {
        this.idpessoa = idpessoa;
    }

    public int getIdanimal() {
        return idanimal;
    }

    public void setIdanimal(int idanimal) {
        this.idanimal = idanimal;
    }

    public int getIdbioterio() {
        return idbioterio;
    }

    public void setIdbioterio(int idbioterio) {
        this.idbioterio = idbioterio;
    }

    public experimento(int idexperimento, int idpessoa, int idanimal, int idbioterio) {
        this.idexperimento = idexperimento;
        this.idpessoa = idpessoa;
        this.idanimal = idanimal;
        this.idbioterio = idbioterio;
    }

    public experimento() {
    }
    
    
    
    
    
}
