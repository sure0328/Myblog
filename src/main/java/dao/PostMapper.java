package dao;

import entity.Post;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by sure on 17/10/3.
 */
public interface PostMapper {
    @Select("select id from post where id=#{id}")
    Post getPostById(int id);

    @Select("select * from post")
    List<Post> getAllPosts();

    @Insert("insert into post(content,title) values(#{content},#{title})")
    int insertPost(Post p);
}
