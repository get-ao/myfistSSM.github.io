package edu.jmi.dgsx.dao;

import edu.jmi.dgsx.po.student_job;
import java.util.List;

import org.springframework.stereotype.Service;

@Service 
public interface student_jobMapper {
    int deleteByPrimaryKey(Integer studentId);

    int insert(student_job record);

    student_job selectByPrimaryKey(Integer studentId);

    List<student_job> selectAll();

    int updateByPrimaryKey(student_job record);
}