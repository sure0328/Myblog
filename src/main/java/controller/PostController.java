package controller;

import entity.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.PostService;

import java.util.LinkedList;
import java.util.List;

@Controller
@RequestMapping("/")
public class PostController {
    @Autowired
    private PostService hservice;

    @RequestMapping("/index")
    public  String index(Model model){

        List<Post> list=hservice.getAllPosts();
        model.addAttribute("list",list);
        return "index";
    }


    @RequestMapping("/postDetail")
    public  String postDetail(int id,Model model){
        Post post=hservice.getPostById(id);
        model.addAttribute("post",post);
        return "/post/postDetail";
    }

    @RequestMapping("/insertPost")
    public  String insertPost(String title,String content,Model model){
        Post post=new Post();
        post.setContent(content);
        post.setTitle(title);
        hservice.insertPost(post);
        model.addAttribute("post",post);
        return "/post/postDetail";
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