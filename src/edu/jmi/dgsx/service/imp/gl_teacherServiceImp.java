package edu.jmi.dgsx.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.jmi.dgsx.dao.gl_teacherMapper;
import edu.jmi.dgsx.po.gl_teacher;
import edu.jmi.dgsx.service.gl_teacherService;

@Service("gl")
public class gl_teacherServiceImp implements gl_teacherService {

	@Autowired
	private gl_teacherMapper gl;
	@Override
	public int deleteByPrimaryKey(String glAccountId) {
		// TODO Auto-generated method stub
		return gl.deleteByPrimaryKey(glAccountId);
	}

	@Override
	public int insert(gl_teacher record) {
		// TODO Auto-generated method stub
		return gl.insert(record);
	}

	@Override
	public gl_teacher selectByPrimaryKey(String glAccountId) {
		// TODO Auto-generated method stub
		return gl.selectByPrimaryKey(glAccountId);
	}

	@Override
	public List<gl_teacher> selectAll() {
		// TODO Auto-generated method stub
		return gl.selectAll();
	}

	@Override
	public int updateByPrimaryKey(gl_teacher record) {
		// TODO Auto-generated method stub
		return gl.updateByPrimaryKey(record);
	}

}
