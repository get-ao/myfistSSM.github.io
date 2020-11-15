package edu.jmi.dgsx.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import edu.jmi.dgsx.dao.qy_jobMapper;
import edu.jmi.dgsx.po.qy_job;
import edu.jmi.dgsx.service.qy_jobService;

@Service("qy_job")
public class qy_jobServiceImp implements qy_jobService {

	@Autowired
	private qy_jobMapper qy;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return qy.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(qy_job record) {
		// TODO Auto-generated method stub
		return qy.insert(record);
	}

	@Override
	public qy_job selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return qy.selectByPrimaryKey(id);
	}

	@Override
	public List<qy_job> selectAll() {
		// TODO Auto-generated method stub
		return qy.selectAll();
	}

	@Override
	public int updateByPrimaryKey(qy_job record) {
		// TODO Auto-generated method stub
		return qy.updateByPrimaryKey(record);
	}

}
