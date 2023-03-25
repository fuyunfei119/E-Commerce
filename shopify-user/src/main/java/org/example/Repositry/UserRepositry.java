package org.example.Repositry;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.example.Entity.User;
import org.example.Param.UserLoginParam;

@Mapper
public interface UserRepositry {
    final String userFields = "userId,userName,password,userPhonenumber";
    final String IsEmpty =
            "SELECT EXISTS " +
                    "(" +
                        "SELECT " +
                        "1 " +
                        "FROM User " +
                        "WHERE userName=#{userName} " +
                        "LIMIT 1" +
                    ")";
    final String Insert = "INSERT INTO User " +
            "("+userFields+") " +
            "VALUES " +
            "(#{userId},#{userName},#{password},#{userPhonenumber})";

    final String findOneByUserName = "SELECT 1 FROM User WHERE userName=#{userName} LIMIT 1";

    final String validatePassword = "SELECT " + userFields + " FROM User WHERE userName=#{userName} AND password=#{password}";

    @Select(findOneByUserName)
    User findOneByUserName(String userName);

    @Select(validatePassword)
    User validatePassword(UserLoginParam userLoginParam);

    @Select(IsEmpty)
    Integer IsEmpty(String userName);

    @Insert(Insert)
    Integer save(User user);

}
