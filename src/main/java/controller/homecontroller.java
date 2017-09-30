package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class homecontroller {

    @RequestMapping("/home")
    public  String index(){
        System.out.print("abc");
        return "index";
    }

    @RequestMapping("/login")
    public  String save(String username,String password,Model model){
        if(username.equals("user")&&password.equals("123456")){
            model.addAttribute("messge","log in OK");
            return "result";
        }else {
            model.addAttribute("messge","username or password is wrong!");
            return "index";
        }
    }
}