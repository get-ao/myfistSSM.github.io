package edu.jmi.dgsx.service;

import edu.jmi.dgsx.po.student_info;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

@Service
public interface student_infoService {
    int deleteByPrimaryKey(Integer id);

    int insert(student_info record);

    student_info selectByPrimaryKey(Integer id);

    List<student_info> selectAll();

    int updateByPrimaryKey(student_info record);
    
    List<student_info> findbyName(@Param("studentId")String studentId,@Param("name")String name);
}