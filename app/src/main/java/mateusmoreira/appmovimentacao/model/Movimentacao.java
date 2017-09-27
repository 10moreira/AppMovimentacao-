package mateusmoreira.appmovimentacao.model;

/**
 * Created by mateus on 25/09/17.
 */
public class Movimentacao {

    private Integer id;
    private String glebaantiga;
    private String glebaAtual;
    private String temp_glebaAtual;
    private String temp_glebaProxima;
    private Gleba gleba;
    private Lote lote;


    public void Movimentacao(){

    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTemp_glebaAtual() {
        return temp_glebaAtual;
    }

    public void setTemp_glebaAtual(String temp_glebaAtual) {
        this.temp_glebaAtual = temp_glebaAtual;
    }

    public String getTemp_glebaProxima() {
        return temp_glebaProxima;
    }

    public void setTemp_glebaProxima(String temp_glebaProxima) {
        this.temp_glebaProxima = temp_glebaProxima;
    }

    public Gleba getGleba() {
        return gleba;
    }

    public void setGleba(Gleba gleba) {
        this.gleba = gleba;
    }

    public Lote getLote() {
        return lote;
    }

    public void setLote(Lote lote) {
        this.lote = lote;
    }

    public String getGlebaantiga() {
        return glebaantiga;
    }

    public void setGlebaantiga(String glebaantiga) {
        this.glebaantiga = glebaantiga;
    }

    public String getGlebaAtual() {
        return glebaAtual;
    }

    public void setGlebaAtual(String glebaAtual) {
        this.glebaAtual = glebaAtual;
    }
}
