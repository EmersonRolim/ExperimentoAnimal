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
public class controle {
    
    private int id_controle;
    private String justificativas;
    private String resumo_trabalhopt;
    private String resumo_trabalhoen;
    private String data_inicio;
    private String data_fim;

    public int getId_controle() {
        return id_controle;
    }

    public void setId_controle(int id_controle) {
        this.id_controle = id_controle;
    }

    public String getJustificativas() {
        return justificativas;
    }

    public void setJustificativas(String justificativas) {
        this.justificativas = justificativas;
    }

    public String getResumo_trabalhopt() {
        return resumo_trabalhopt;
    }

    public void setResumo_trabalhopt(String resumo_trabalhopt) {
        this.resumo_trabalhopt = resumo_trabalhopt;
    }

    public String getResumo_trabalhoen() {
        return resumo_trabalhoen;
    }

    public void setResumo_trabalhoen(String resumo_trabalhoen) {
        this.resumo_trabalhoen = resumo_trabalhoen;
    }

    public String getData_inicio() {
        return data_inicio;
    }

    public void setData_inicio(String data_inicio) {
        this.data_inicio = data_inicio;
    }

    public String getData_fim() {
        return data_fim;
    }

    public void setData_fim(String data_fim) {
        this.data_fim = data_fim;
    }

    public controle(int id_controle, String justificativas, String resumo_trabalhopt, String resumo_trabalhoen, String data_inicio, String data_fim) {
        this.id_controle = id_controle;
        this.justificativas = justificativas;
        this.resumo_trabalhopt = resumo_trabalhopt;
        this.resumo_trabalhoen = resumo_trabalhoen;
        this.data_inicio = data_inicio;
        this.data_fim = data_fim;
    }

    public controle(String justificativas, String resumo_trabalhopt, String resumo_trabalhoen, String data_inicio, String data_fim) {
        this.justificativas = justificativas;
        this.resumo_trabalhopt = resumo_trabalhopt;
        this.resumo_trabalhoen = resumo_trabalhoen;
        this.data_inicio = data_inicio;
        this.data_fim = data_fim;
    }

    public controle() {
    }
    
    
    
    
    
    
   
    
    
}
