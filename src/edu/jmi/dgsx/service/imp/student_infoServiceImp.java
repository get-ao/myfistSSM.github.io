package edu.jmi.dgsx.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.jmi.dgsx.dao.student_infoMapper;
import edu.jmi.dgsx.po.student_info;
import edu.jmi.dgsx.service.student_infoService;

@Service("student_info")
public class student_infoServiceImp implements student_infoService {

	@Autowired
	private student_infoMapper sinfo;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return sinfo.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(student_info record) {
		// TODO Auto-generated method stub
		return sinfo.insert(record);
	}

	@Override
	public student_info selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return sinfo.selectByPrimaryKey(id);
	}

	@Override
	public List<student_info> selectAll() {
		// TODO Auto-generated method stub
		return sinfo.selectAll();
	}

	@Override
	public int updateByPrimaryKey(student_info record) {
		// TODO Auto-generated method stub
		return sinfo.updateByPrimaryKey(record);
	}

	@Override
	public List<student_info> findbyName(String studentId, String name) {
		// TODO Auto-generated method stub
		return sinfo.findbyName(studentId, name);
	}

}
