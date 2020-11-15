package edu.jmi.dgsx.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.jmi.dgsx.dao.student_attributeMapper;
import edu.jmi.dgsx.po.student_attribute;
import edu.jmi.dgsx.service.student_attributeService;

@Service("student_Attribute")
public class student_attributeServiceImp implements student_attributeService {

	@Autowired
	private student_attributeMapper sam;
	@Override
	public int deleteByPrimaryKey(Integer studentId) {
		// TODO Auto-generated method stub
		return sam.deleteByPrimaryKey(studentId);
	}

	@Override
	public int insert(student_attribute record) {
		// TODO Auto-generated method stub
		return sam.insert(record);
	}

	@Override
	public student_attribute selectByPrimaryKey(Integer studentId) {
		// TODO Auto-generated method stub
		return sam.selectByPrimaryKey(studentId);
	}

	@Override
	public List<student_attribute> selectAll() {
		// TODO Auto-generated method stub
		return sam.selectAll();
	}

	@Override
	public int updateByPrimaryKey(student_attribute record) {
		// TODO Auto-generated method stub
		return sam.updateByPrimaryKey(record);
	}

}
