package edu.jmi.dgsx.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.jmi.dgsx.dao.student_jobMapper;
import edu.jmi.dgsx.po.student_job;
import edu.jmi.dgsx.service.student_jobService;

@Service
public class student_jobServiceImp implements student_jobService  {

	@Autowired
	private student_jobMapper sjob;
	@Override
	public int deleteByPrimaryKey(Integer studentId) {
		// TODO Auto-generated method stub
		return sjob.deleteByPrimaryKey(studentId);
	}

	@Override
	public int insert(student_job record) {
		// TODO Auto-generated method stub
		return sjob.insert(record);
	}

	@Override
	public student_job selectByPrimaryKey(Integer studentId) {
		// TODO Auto-generated method stub
		return sjob.selectByPrimaryKey(studentId);
	}

	@Override
	public List<student_job> selectAll() {
		// TODO Auto-generated method stub
		return sjob.selectAll();
	}

	@Override
	public int updateByPrimaryKey(student_job record) {
		// TODO Auto-generated method stub
		return sjob.updateByPrimaryKey(record);
	}

}
