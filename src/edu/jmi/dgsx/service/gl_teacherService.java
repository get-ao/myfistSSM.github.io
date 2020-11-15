package edu.jmi.dgsx.service;

import edu.jmi.dgsx.po.gl_teacher;
import java.util.List;

import org.springframework.stereotype.Service;

@Service 
public interface gl_teacherService {
    int deleteByPrimaryKey(String glAccountId);

    int insert(gl_teacher record);

    gl_teacher selectByPrimaryKey(String glAccountId);

    List<gl_teacher> selectAll();

    int updateByPrimaryKey(gl_teacher record);
}