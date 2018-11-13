package br.caso4.modelo;


public class animais {
    
  private int idAnimal;
  private String especieAnimal;
  private String caracteristicaAnimal;
  private String qualidadeAnimal;

    public animais() {
    }

    public animais(int idAnimal, String especieAnimal, String caracteristicaAnimal, String qualidadeAnimal) {
        this.idAnimal = idAnimal;
        this.especieAnimal = especieAnimal;
        this.caracteristicaAnimal = caracteristicaAnimal;
        this.qualidadeAnimal = qualidadeAnimal;
    }

    public animais(String especieAnimal, String caracteristicaAnimal, String qualidadeAnimal) {
        this.especieAnimal = especieAnimal;
        this.caracteristicaAnimal = caracteristicaAnimal;
        this.qualidadeAnimal = qualidadeAnimal;
    }

    public int getIdAnimal() {
        return idAnimal;
    }

    public void setIdAnimal(int idAnimal) {
        this.idAnimal = idAnimal;
    }

    public String getEspecieAnimal() {
        return especieAnimal;
    }

    public void setEspecieAnimal(String especieAnimal) {
        this.especieAnimal = especieAnimal;
    }

    public String getCaracteristicaAnimal() {
        return caracteristicaAnimal;
    }

    public void setCaracteristicaAnimal(String caracteristicaAnimal) {
        this.caracteristicaAnimal = caracteristicaAnimal;
    }

    public String getQualidadeAnimal() {
        return qualidadeAnimal;
    }

    public void setQualidadeAnimal(String qualidadeAnimal) {
        this.qualidadeAnimal = qualidadeAnimal;
    }
    
} 
