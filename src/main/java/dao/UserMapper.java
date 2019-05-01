package dao;

import model.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface UserMapper {
    @Select("select * from user where username=#{username} and password =#{password}")
    User selectUser(User user);
    @Insert("INSERT INTO USER (id,username,PASSWORD,NAME)  VALUES (DEFAULT,#{username},#{password},#{username});")
   int  insertUser(User user);

    @Select("select *from user where username=#{0}")
    User selectByUsername(String username);
}
