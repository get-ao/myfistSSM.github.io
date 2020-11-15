package edu.jmi.dgsx.service;

import edu.jmi.dgsx.po.Talent_form;
import java.util.List;

import org.springframework.stereotype.Service;

@Service 
public interface Talent_formService {
    int deleteByPrimaryKey(String studentId);

    int insert(Talent_form record);

    Talent_form selectByPrimaryKey(String studentId);

    List<Talent_form> selectAll();

    int updateByPrimaryKey(Talent_form record);
}