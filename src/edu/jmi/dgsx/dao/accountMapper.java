package edu.jmi.dgsx.dao;

import edu.jmi.dgsx.po.account;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

@Service 
public interface accountMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(account record);

    account selectByPrimaryKey(Integer id);

    List<account> selectAll();

    int updateByPrimaryKey(account record);
    
    account login(@Param("user")String username,@Param("psw")String password);
}