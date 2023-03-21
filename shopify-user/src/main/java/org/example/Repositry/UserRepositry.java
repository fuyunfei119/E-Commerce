package org.example.Repositry;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.example.Entity.User;

@Mapper
public interface UserRepositry {
    final String userFields = "userId,userName,password,userPhonenumber";
    final String IsEmpty =
            "SELECT EXISTS " +
                    "(" +
                        "SELECT " +
                        "1" +
                        "FROM User " +
                        "WHERE userName=#{userName} " +
                        "LIMIT 1" +
                    ")";
    final String findOneByUserName = "SELECT 1 FROM User WHERE userName=#{userName} LIMIT 1";

    @Select(findOneByUserName)
    User findOneByUserName(String userName);

    @Select(IsEmpty)
    Boolean IsEmpty(String userName);

}
