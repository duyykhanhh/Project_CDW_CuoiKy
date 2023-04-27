package vn.edu.hcmuaf.fit.projectcuoiki.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import vn.edu.hcmuaf.fit.projectcuoiki.db.DBConnect;

import java.sql.Connection;

@RestController
@RequestMapping(value="/api")
public class Controller {
    Connection conn;
    public Controller(){
        this.conn = DBConnect.getInstance().getConnection();
    }
@GetMapping(value="/about")
    public String getAboutInfo(Model model){
        model.addAttribute("currentPage","about");
        return "about";
}

}
