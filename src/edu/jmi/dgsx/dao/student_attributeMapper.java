package edu.jmi.dgsx.dao;

import edu.jmi.dgsx.po.student_attribute;
import java.util.List;

public interface student_attributeMapper {
    int deleteByPrimaryKey(Integer studentId);

    int insert(student_attribute record);

    student_attribute selectByPrimaryKey(Integer studentId);

    List<student_attribute> selectAll();

    int updateByPrimaryKey(student_attribute record);
}