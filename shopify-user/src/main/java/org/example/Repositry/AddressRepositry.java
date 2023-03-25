package org.example.Repositry;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.example.Entity.Address;

import java.util.List;

@Mapper
public interface AddressRepositry {
    final String fields = "id,linkman,phone,address,userId";
    final String InsertOne = "INSERT INTO Address VALUES (#{id},#{linkman},#{phone},#{address},#{userId})";
    final String findSetByuserId = "SELECT " + fields + " FROM Address WHERE userId = #{userId}";
    final String deleteOneById = "DELETE FROM Address WHERE id = #{id}";

    @Select(findSetByuserId)
    List<Address> list(String userId);

    @Insert(InsertOne)
    Integer insertOne(Address address);

    @Delete(deleteOneById)
    Boolean remove(String id);

}
