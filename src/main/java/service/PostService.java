package service;

import entity.Post;
import org.springframework.stereotype.Service;

import java.util.LinkedList;
import java.util.List;

/**
 * Created by sure on 17/9/30.
 */
@Service
public class PostService {
    private List<Post> list;
    public PostService(){
        list=new LinkedList<Post>();
        Post p=new Post();
        p.setAuthor("tom");
        p.setTitle("title1");
        p.setCategory("news");
        p.setContent("content1");
        p.setId(1);
        list.add(p);
        Post p2=new Post();
        p2.setAuthor("jerry");
        p2.setTitle("title2");
        p2.setCategory("sport");
        p2.setContent("content2");
        p2.setId(2);
        list.add(p2);
        Post p3=new Post();
        p3.setAuthor("jerry");
        p3.setTitle("title3");
        p3.setCategory("health");
        p3.setContent("content3");
        p3.setId(3);
        list.add(p3);
    }
    public  List<Post> getAllPosts() {
        return list;
    }
    public Post getPostById(Integer id){
        for (Post p:list) {
            if(p.getId()==id){
                return p;
            }
        }
        return null;
    }
}
