package edu.jmi.dgsx.service;

import edu.jmi.dgsx.po.account;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

@Service 
public interface accountService {
    int deleteByPrimaryKey(Integer id);

    int insert(account record);

    account login(@Param("user")String username,@Param("psw")String password);

    List<account> selectAll();

    int updateByPrimaryKey(account record);

	account selectByPrimaryKey(Integer id);
}