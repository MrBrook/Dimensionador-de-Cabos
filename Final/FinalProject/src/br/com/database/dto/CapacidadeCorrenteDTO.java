package br.com.database.dto;


public class CapacidadeCorrenteDTO {

    private int idMetodo;
    private int idCabo;
    private int idIsolante;
    private int n2Conector;
    private int n3Conector;
    private double diametro;
    private String isolante;

    public int getIdMetodo() {
        return idMetodo;
    }

    public void setIdMetodo(int idMetodo) {
        this.idMetodo = idMetodo;
    }

    public int getIdCabo() {
        return idCabo;
    }

    public void setIdCabo(int idCabo) {
        this.idCabo = idCabo;
    }

    public int getIdIsolante() {
        return idIsolante;
    }

    public void setIdIsolante(int idIsolante) {
        this.idIsolante = idIsolante;
    }

    public int getN2Conector() {
        return n2Conector;
    }

    public void setN2Conector(int n2Conector) {
        this.n2Conector = n2Conector;
    }

    public int getN3Conector() {
        return n3Conector;
    }

    public void setN3Conector(int n3Conector) {
        this.n3Conector = n3Conector;
    }

    public double getDiametro() {
        return diametro;
    }

    public void setDiametro(double diametro) {
        this.diametro = diametro;
    }

    public String getIsolante() {
        return isolante;
    }

    public void setIsolante(String isolante) {
        this.isolante = isolante;
    }
}
