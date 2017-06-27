package br.com.gui;

public class Controle
{
    private float diametro;
    private boolean circuito;
    private boolean capacidedeCorrente;
    private boolean curtoCircuito;

    Controle()
    {
        this.diametro  = 0;
        this.circuito = false;
        this.capacidedeCorrente = false;
        this.curtoCircuito = false;
    }

    public float getDiametro() {
        return diametro;
    }

    public void setDiametro(float diametro) {
        this.diametro = diametro;
    }

    public boolean isCircuito() {
        return circuito;
    }
    public boolean getCircuito() {
        return circuito;
    }

    public void setCircuito(boolean circuito) {
        this.circuito = circuito;
    }

    public boolean isCapacidedeCorrente() {
        return capacidedeCorrente;
    }

    public void setCapacidedeCorrente(boolean capacidedeCorrente) {
        this.capacidedeCorrente = capacidedeCorrente;
    }

    public boolean isCurtoCircuito() {
        return curtoCircuito;
    }

    public void setCurtoCircuito(boolean curtoCircuito) {
        this.curtoCircuito = curtoCircuito;
    }
}
