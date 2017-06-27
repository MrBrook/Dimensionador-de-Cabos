package br.com.database.dto;

public class FatorCorrecaoDTO {

    private int idK1;
    private int idTipo;
    private int idIsolante;
    private int temperatura;
    private double isolante;

    private int idK3;
    private int idCabo;
    private String descricao;
    private double nColuna;

    private int idK2;
    private double resTermica;
    private double  fatorCorrecao;

    public int getIdK1() {
        return idK1;
    }

    public void setIdK1(int idK1) {
        this.idK1 = idK1;
    }

    public int getIdTipo() {
        return idTipo;
    }

    public void setIdTipo(int idTipo) {
        this.idTipo = idTipo;
    }

    public int getIdIsolante() {
        return idIsolante;
    }

    public void setIdIsolante(int idIsolante) {
        this.idIsolante = idIsolante;
    }

    public int getTemperatura() {
        return temperatura;
    }

    public void setTemperatura(int temperatura) {
        this.temperatura = temperatura;
    }

    public double getIsolante() {
        return isolante;
    }

    public void setIsolante(double isolante) {
        this.isolante = isolante;
    }

    public int getIdK3() {
        return idK3;
    }

    public int getIdCabo() {
        return idCabo;
    }

    public void setIdCabo(int idCabo) {
        this.idCabo = idCabo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getnColuna() {
        return nColuna;
    }

    public void setnColuna(double nColuna) {
        this.nColuna = nColuna;
    }

    public int getIdK2() {
        return idK2;
    }

    public void setIdK2(int idK2) {
        this.idK2 = idK2;
    }

    public double getResTermica() {
        return resTermica;
    }

    public void setResTermica(double resTermica) {
        this.resTermica = resTermica;
    }

    public double getFatorCorrecao() {
        return fatorCorrecao;
    }

    public void setFatorCorrecao(double fatorCorrecao) {
        this.fatorCorrecao = fatorCorrecao;
    }
}
