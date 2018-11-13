package br.caso4.modelo;
public class protocolo {
    private int idProtocolo;
    private int idExperimento;

    public protocolo(int idProtocolo, int idExperimento) {
        this.idProtocolo = idProtocolo;
        this.idExperimento = idExperimento;
    }

    public protocolo() {
    }

    public int getIdProtocolo() {
        return idProtocolo;
    }

    public void setIdProtocolo(int idProtocolo) {
        this.idProtocolo = idProtocolo;
    }

    public int getIdExperimento() {
        return idExperimento;
    }

    public void setIdExperimento(int idExperimento) {
        this.idExperimento = idExperimento;
    }
    
}
