package service;

import dao.PostMapper;
import entity.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.LinkedList;
import java.util.List;

/**
 * Created by sure on 17/9/30.
 */
@Service
public class PostService {
    @Autowired
    private PostMapper postMapper;

    public  List<Post> getAllPosts() {
        return postMapper.getAllPosts();
    }
    public Post getPostById(Integer id){
        return postMapper.getPostById(id);
    }
    public int insertPost(Post p){
        return postMapper.insertPost(p);
    }


}
