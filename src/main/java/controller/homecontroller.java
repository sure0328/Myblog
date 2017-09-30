package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.homeService;

import java.util.LinkedList;
import java.util.List;


@Controller
public class homecontroller {

    //jj
    @Autowired
    private homeService hservice;





    @RequestMapping("/home")
    public  String index(){
        System.out.print(hservice.add(1,3));
        return "index";
    }

    @RequestMapping("/login")
    public  String save(String username,String password,Model model){
        if(username.equals("user")&&password.equals("123456")){
            List<Integer> list=new LinkedList<Integer>();
            list.add(3);
            list.add(2);
            list.add(5);

            model.addAttribute("messge","log in OK");
            model.addAttribute("list",list);
            return "result";
        }else {
            model.addAttribute("messge","username or password is wrong!");
            return "index";
        }
    }
}