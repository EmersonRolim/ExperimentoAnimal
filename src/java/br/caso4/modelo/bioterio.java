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
public class bioterio {
    
    private int idbioterio;
    private String bioterio;

    public int getIdbioterio() {
        return idbioterio;
    }

    public void setIdbioterio(int idbioterio) {
        this.idbioterio = idbioterio;
    }

    public String getBioterio() {
        return bioterio;
    }

    public void setBioterio(String bioterio) {
        this.bioterio = bioterio;
    }

    public bioterio(int idbioterio, String bioterio) {
        this.idbioterio = idbioterio;
        this.bioterio = bioterio;
    }

    public bioterio(String bioterio) {
        this.bioterio = bioterio;
    }

    public bioterio() {
    }


    
    
    
    
    
    
    
}
