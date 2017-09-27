package mateusmoreira.appmovimentacao.model;

/**
 * Created by mateus on 25/09/17.
 */
public class Lote {

     private Integer id;
     private String nome_lote;
     private Integer nro_movimentacao;
     private Integer nro_vacasprenhas;
     private Integer nro_bezerros;
     private String tempo_glebAtual;
     private String tempo_proximaGleba;
     private Gleba gleba;
     private Usuario usuario;
     private Movimentacao movimentacao;


    public Lote() {

    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome_lote() {
        return nome_lote;
    }

    public void setNome_lote(String nome_lote) {
        this.nome_lote = nome_lote;
    }

    public Integer getNro_movimentacao() {
        return nro_movimentacao;
    }

    public void setNro_movimentacao(Integer nro_movimentacao) {
        this.nro_movimentacao = nro_movimentacao;
    }

    public Integer getNro_vacasprenhas() {
        return nro_vacasprenhas;
    }

    public void setNro_vacasprenhas(Integer nro_vacasprenhas) {
        this.nro_vacasprenhas = nro_vacasprenhas;
    }

    public Integer getNro_bezerros() {
        return nro_bezerros;
    }

    public void setNro_bezerros(Integer nro_bezerros) {
        this.nro_bezerros = nro_bezerros;
    }

    public String getTempo_glebAtual() {
        return tempo_glebAtual;
    }

    public void setTempo_glebAtual(String tempo_glebAtual) {
        this.tempo_glebAtual = tempo_glebAtual;
    }

    public String getTempo_proximaGleba() {
        return tempo_proximaGleba;
    }

    public void setTempo_proximaGleba(String tempo_proximaGleba) {
        this.tempo_proximaGleba = tempo_proximaGleba;
    }

    public Gleba getGleba() {
        return gleba;
    }

    public void setGleba(Gleba gleba) {
        this.gleba = gleba;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Movimentacao getMovimentacao() {
        return movimentacao;
    }

    public void setMovimentacao(Movimentacao movimentacao) {
        this.movimentacao = movimentacao;
    }
}
