package Controller;

import Config.Conexion;
import Entidade.Usuario;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controlador {

    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    int id;
    List dados;

    @RequestMapping("index.htm")
    public ModelAndView Listar() {
        String sql = "select * from usuarios";
        dados = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", dados);
        mav.setViewName("index");
        return mav;
    }

    @RequestMapping(value = "adicionar.htm", method = RequestMethod.GET)
    public ModelAndView Adicionar() {
        mav.addObject(new Usuario());
        mav.setViewName("adicionar");
        return mav;
    }

    @RequestMapping(value = "adicionar.htm", method = RequestMethod.POST)
    public ModelAndView Adicionar(Usuario user) {
        String sql = "insert into usuarios(Nome, Email, Nacionalidade) values(?,?,?)";
        this.jdbcTemplate.update(sql, user.getNome(), user.getEmail(), user.getNacionalidade());
        return new ModelAndView("redirect:/index.htm");
    }

    @RequestMapping(value = "editar.htm", method = RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request) {
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "select * from usuarios where Id=" + id;
        dados = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", dados);
        mav.setViewName("editar");
        return mav;
    }

    @RequestMapping(value = "editar.htm", method = RequestMethod.POST)
    public ModelAndView Editar(Usuario user) {
        String sql = "update usuarios set Nome=?,Email=?, Nacionalidade=? where Id=" + id;
        this.jdbcTemplate.update(sql, user.getNome(), user.getEmail(), user.getNacionalidade());
        return new ModelAndView("redirect:/index.htm");
    }
    @RequestMapping("deletar.htm")
    public ModelAndView Deletar(HttpServletRequest request){
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "delete from usuarios where Id="+id;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/index.htm");
    }
}
