package edu.jmi.dgsx.service;

import edu.jmi.dgsx.po.teacher_send;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface teacher_sendService {
    int deleteByPrimaryKey(Integer id);

    int insert(teacher_send record);

    teacher_send selectByPrimaryKey(Integer id);

    List<teacher_send> selectAll();

    int updateByPrimaryKey(teacher_send record);
}