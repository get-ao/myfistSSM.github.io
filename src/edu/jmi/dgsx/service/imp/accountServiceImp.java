package edu.jmi.dgsx.service.imp;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.jmi.dgsx.dao.accountMapper;
import edu.jmi.dgsx.po.account;
import edu.jmi.dgsx.service.accountService;

@Service("account")
public class accountServiceImp implements accountService {

	@Autowired
	private accountMapper am;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return am.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(account record) {
		// TODO Auto-generated method stub
		return am.insert(record);
	}

	@Override
	public account selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return am.selectByPrimaryKey(id);
	}

	@Override
	public List<account> selectAll() {
		// TODO Auto-generated method stub
		return am.selectAll();
	}

	@Override
	public int updateByPrimaryKey(account record) {
		// TODO Auto-generated method stub
		return am.updateByPrimaryKey(record);
	}

	@Override
	public account login(@Param("user")String username,@Param("psw")String password) {
		// TODO Auto-generated method stub
		return am.login(username, password);
	}

}
