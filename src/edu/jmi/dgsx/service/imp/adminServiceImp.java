package edu.jmi.dgsx.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.jmi.dgsx.dao.adminMapper;
import edu.jmi.dgsx.po.admin;
import edu.jmi.dgsx.service.adminService;

@Service
public class adminServiceImp implements adminService {

	@Autowired
	private adminMapper admin;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return admin.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(admin record) {
		// TODO Auto-generated method stub
		return admin.insert(record);
	}

	@Override
	public admin selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return admin.selectByPrimaryKey(id);
	}

	@Override
	public List<admin> selectAll() {
		// TODO Auto-generated method stub
		return admin.selectAll();
	}

	@Override
	public int updateByPrimaryKey(admin record) {
		// TODO Auto-generated method stub
		return admin.updateByPrimaryKey(record);
	}

	@Override
	public edu.jmi.dgsx.po.admin adminLogin(String admin_user, String admin_psw) {
		// TODO Auto-generated method stub
		return admin.adminLogin(admin_user, admin_psw);
	}

}
