package mateusmoreira.appmovimentacao.model;

/**
 * Created by mateus on 27/09/17.
 */
public class Gleba {

    private Integer id;
    private String nome_gleba;
    private Float tamanho;
    private String tipo_pastagem;

    public void Gleba(){

    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome_gleba() {
        return nome_gleba;
    }

    public void setNome_gleba(String nome_gleba) {
        this.nome_gleba = nome_gleba;
    }

    public Float getTamanho() {
        return tamanho;
    }

    public void setTamanho(Float tamanho) {
        this.tamanho = tamanho;
    }

    public String getTipo_pastagem() {
        return tipo_pastagem;
    }

    public void setTipo_pastagem(String tipo_pastagem) {
        this.tipo_pastagem = tipo_pastagem;
    }
}
