package edu.jmi.dgsx.dao;

import edu.jmi.dgsx.po.admin;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

@Service 
public interface adminMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(admin record);

    admin selectByPrimaryKey(Integer id);

    List<admin> selectAll();

    int updateByPrimaryKey(admin record);
    
    admin adminLogin(@Param("admin_user")String admin_user,@Param("admin_psw")String admin_psw );
}