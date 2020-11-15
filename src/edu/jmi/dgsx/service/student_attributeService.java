package edu.jmi.dgsx.service;

import edu.jmi.dgsx.po.student_attribute;
import java.util.List;

public interface student_attributeService {
    int deleteByPrimaryKey(Integer studentId);

    int insert(student_attribute record);

    student_attribute selectByPrimaryKey(Integer studentId);

    List<student_attribute> selectAll();

    int updateByPrimaryKey(student_attribute record);
}