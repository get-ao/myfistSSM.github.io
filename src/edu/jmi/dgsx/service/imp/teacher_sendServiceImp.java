package edu.jmi.dgsx.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.jmi.dgsx.dao.teacher_sendMapper;
import edu.jmi.dgsx.po.teacher_send;
import edu.jmi.dgsx.service.teacher_sendService;

@Service
public class teacher_sendServiceImp implements teacher_sendService {

	@Autowired
	private teacher_sendMapper tsend;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return tsend.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(teacher_send record) {
		// TODO Auto-generated method stub
		return tsend.insert(record);
	}

	@Override
	public teacher_send selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return tsend.selectByPrimaryKey(id);
	}

	@Override
	public List<teacher_send> selectAll() {
		// TODO Auto-generated method stub
		return tsend.selectAll();
	}

	@Override
	public int updateByPrimaryKey(teacher_send record) {
		// TODO Auto-generated method stub
		return tsend.updateByPrimaryKey(record);
	}

}
