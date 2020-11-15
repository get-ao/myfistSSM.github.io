package edu.jmi.dgsx.dao;

import edu.jmi.dgsx.po.gl_teacher;
import java.util.List;

import org.springframework.stereotype.Service;

@Service 
public interface gl_teacherMapper {
    int deleteByPrimaryKey(String glAccountId);

    int insert(gl_teacher record);

    gl_teacher selectByPrimaryKey(String glAccountId);

    List<gl_teacher> selectAll();

    int updateByPrimaryKey(gl_teacher record);
}