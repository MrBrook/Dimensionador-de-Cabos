package br.com.database.dto;

public class CabosDTO {

    private int idCabo;
    private int idMaterial;
    private double diametro;
    private String material;

    public int getIdCabo() {
        return idCabo;
    }

    public void setIdCabo(int idCabo) {
        this.idCabo = idCabo;
    }

    public int getIdMaterial() {
        return idMaterial;
    }

    public void setIdMaterial(int idMaterial) {
        this.idMaterial = idMaterial;
    }

    public double getDiametro() {
        return diametro;
    }

    public void setDiametro(double diametro) {
        this.diametro = diametro;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }
}
