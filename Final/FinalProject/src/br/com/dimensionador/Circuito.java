package br.com.dimensionador;

import java.util.ArrayList;

public class Circuito {

    private String nome;
    private float iz;
    private float ib;
    private float fatorPotencia;
    private int tensao;
    private float comprimento;
    private int material;
    private int metodo;
    private int idk2;
    private int idk3;
    private int idk1;
    private int nConectores;
    private int isolacao;
    private String tipo;
    private int temperatura;
    private float potetencia;

    private ArrayList<Circuito> circuitos = null;


    public Circuito(){
        this.nome = "";
        this.iz = 0;
        this.ib = 0;
        this.fatorPotencia = 0;
        this.tensao = 0;
        this.comprimento = 0;
        this.comprimento = 0;
        this.material =0;
        this.metodo = 0;
        this.idk1 = 0;
        this.idk2 = 1;
        this.idk3 = 0;
        this.isolacao = 0;
        this.tipo = "";
        this.temperatura = 0;
        this.potetencia = 0;
        this.nConectores = 0;
        this.potetencia = 0;

        //circuitos = getCircuitos();
    }

    public float getIb() {
        return ib;
    }

    public void setIb(float ib) {
        this.ib = ib;
    }

    public int getIdk2() {
        return idk2;
    }

    public void setIdk2(int idk2) {
        this.idk2 = idk2;
    }

    public int getnConectores() {
        return nConectores;
    }

    public void setnConectores(int nConectores) {
        this.nConectores = nConectores;
    }

    public float getPotetencia() {
        return potetencia;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public float getIz() {
        return iz;
    }

    public void setIz(float iz) {
        this.iz = iz;
    }

    public float getFatorPotencia() {
        return fatorPotencia;
    }

    public void setFatorPotencia(float fatorPotencia) {
        this.fatorPotencia = fatorPotencia;
    }

    public int getTensao() {
        return tensao;
    }

    public void setTensao(int tensao) {
        this.tensao = tensao;
    }

    public float getComprimento() {
        return comprimento;
    }

    public void setComprimento(float comprimento) {
        this.comprimento = comprimento;
    }

    public int getMaterial() {
        return material;
    }

    public void setMaterial(int material) {
        this.material = material;
    }

    public int getMetodo() {
        return metodo;
    }

    public void setMetodo(int metodo) {
        this.metodo = metodo;
    }

    public int getIdk3() {
        return idk3;
    }

    public void setIdk3(int idk3) {
        this.idk3 = idk3;
    }

    public int getIdk1() {
        return idk1;
    }

    public void setIdk1(int idk1) {
        this.idk1 = idk1;
    }

    public int getIsolacao() {
        return isolacao;
    }

    public void setIsolacao(int isolacao) {
        this.isolacao = isolacao;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getTemperatura() {
        return temperatura;
    }

    public void setTemperatura(int temperatura) {
        this.temperatura = temperatura;
    }

    public void setPotetencia(float potetencia) {
        this.potetencia = potetencia;
    }

    public ArrayList<Circuito> getCircuitos() {
        return circuitos;
    }

    public void setCircuitos(ArrayList<Circuito> circuitos) {
        this.circuitos = circuitos;
    }
}
