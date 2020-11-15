package edu.jmi.dgsx.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import edu.jmi.dgsx.po.account;
import edu.jmi.dgsx.po.qy_job;
import edu.jmi.dgsx.service.accountService;
import edu.jmi.dgsx.service.qy_jobService;

@Controller
@RequestMapping("admin")
public class adminControl {
	@Autowired
	private accountService aService;
	@Autowired
	private qy_jobService qService;
	
	@RequestMapping("user")
	public ModelAndView account() {
		ModelAndView model = new ModelAndView();
		List<account> list = aService.selectAll();
		model.addObject("list",list);
		model.setViewName("admin/account");
		return model;
	}
	@RequestMapping("userAdd")
	public ModelAndView userAdd(HttpServletRequest request,account ac ) {
		aService.insert(ac);
		ModelAndView model = new ModelAndView();
		List<account> list = aService.selectAll();
		model.addObject("list",list);
		model.setViewName("admin/account");
		return model;
	}
	@RequestMapping("userEdit")
	public ModelAndView userEdit(HttpServletRequest request ) {
		String id = request.getParameter("id");
		String user = request.getParameter("user");
		String psw = request.getParameter("psw");
		String name = request.getParameter("name");
		String kind = request.getParameter("kind");
		account ac = aService.selectByPrimaryKey(Integer.valueOf(id));
		ac.setUser(user);
		ac.setPsw(psw);
		ac.setName(name);
		ac.setKind(kind);
		aService.updateByPrimaryKey(ac);
		ModelAndView model = new ModelAndView();
		List<account> list = aService.selectAll();
		model.addObject("list",list);
		model.setViewName("admin/account");
		return model;
	}
	@RequestMapping("userDel")
	public ModelAndView userDel(HttpServletRequest request) {
		String id = request.getParameter("id");
		aService.deleteByPrimaryKey(Integer.valueOf(id));
		ModelAndView model = new ModelAndView();
		List<account> list = aService.selectAll();
		model.addObject("list",list);
		model.setViewName("admin/account");
		return model;
	}
	@RequestMapping("qy_job")
	public ModelAndView qy_job() {
		ModelAndView model = new ModelAndView();
		List<qy_job> list = qService.selectAll();
		model.addObject("list",list);
		model.setViewName("admin/qy_job");
		return model;
	}
	@RequestMapping("qy_jobEdit")
	public ModelAndView qy_jobEdit(HttpServletRequest request) {
		String id = request.getParameter("id");
		String statu = request.getParameter("statu");
		qy_job q = qService.selectByPrimaryKey(Integer.valueOf(id));
		q.setState(statu);
		qService.updateByPrimaryKey(q);
		ModelAndView model = new ModelAndView();
		List<qy_job> list = qService.selectAll();
		model.addObject("list",list);
		model.setViewName("admin/qy_job");
		return model;
	}
	@RequestMapping("data")
	public ModelAndView data() {
		ModelAndView model = new ModelAndView();
		List<qy_job> list = qService.selectAll();
		model.addObject("list",list);
		model.setViewName("admin/data");
		return model;
	}
}
