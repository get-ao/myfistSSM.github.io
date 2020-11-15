package edu.jmi.dgsx.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.jmi.dgsx.dao.Talent_formMapper;
import edu.jmi.dgsx.po.Talent_form;
import edu.jmi.dgsx.service.Talent_formService;

@Service
public class Talent_formServiceImp implements Talent_formService {

	@Autowired
	private Talent_formMapper Tf;
	@Override
	public int deleteByPrimaryKey(String studentId) {
		// TODO Auto-generated method stub
		return Tf.deleteByPrimaryKey(studentId);
	}

	@Override
	public int insert(Talent_form record) {
		// TODO Auto-generated method stub
		return Tf.insert(record);
	}

	@Override
	public Talent_form selectByPrimaryKey(String studentId) {
		// TODO Auto-generated method stub
		return Tf.selectByPrimaryKey(studentId);
	}

	@Override
	public List<Talent_form> selectAll() {
		// TODO Auto-generated method stub
		return Tf.selectAll();
	}

	@Override
	public int updateByPrimaryKey(Talent_form record) {
		// TODO Auto-generated method stub
		return Tf.updateByPrimaryKey(record);
	}

}
