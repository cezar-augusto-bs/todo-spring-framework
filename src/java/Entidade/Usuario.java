package Entidade;

public class Usuario {

    int Id;
    String Nome;
    String Email;
    String Nacionalidade;

    public Usuario() {
    }

    public Usuario(int Id, String Nome, String Email, String Nacionalidade) {
        this.Id = Id;
        this.Nome = Nome;
        this.Email = Email;
        this.Nacionalidade = Nacionalidade;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getNome() {
        return Nome;
    }

    public void setNome(String Nome) {
        this.Nome = Nome;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getNacionalidade() {
        return Nacionalidade;
    }

    public void setNacionalidade(String Nacionalidade) {
        this.Nacionalidade = Nacionalidade;
    }

}
