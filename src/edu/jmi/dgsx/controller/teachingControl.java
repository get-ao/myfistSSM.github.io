package edu.jmi.dgsx.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import edu.jmi.dgsx.po.account;
import edu.jmi.dgsx.po.gl_teacher;
import edu.jmi.dgsx.po.student_attribute;
import edu.jmi.dgsx.po.student_job;
import edu.jmi.dgsx.service.gl_teacherService;
import edu.jmi.dgsx.service.student_attributeService;
import edu.jmi.dgsx.service.student_jobService;

@Controller
@RequestMapping("teachingControl")
public class teachingControl {
	
	@Autowired
	private gl_teacherService glserService;
	@Autowired
	private student_attributeService sa;
	@Autowired
	private student_jobService sjob;
	
	@RequestMapping("stu_program")
	public ModelAndView  stu_program(HttpServletRequest request) {//大纲计划
		ModelAndView model = new ModelAndView();
		account account = (edu.jmi.dgsx.po.account) request.getSession().getAttribute("studyer");
		gl_teacher list = glserService.selectByPrimaryKey(account.getUser());
		model.addObject("list",list);
		model.setViewName("adminStudy/stu_program");
		return model;
	}
	@RequestMapping("change")
	public ModelAndView  change(HttpServletRequest request) {//修改大纲
		ModelAndView model = new ModelAndView();
		account account = (edu.jmi.dgsx.po.account) request.getSession().getAttribute("studyer");
		gl_teacher list = glserService.selectByPrimaryKey(account.getUser());
		list.setGlOutline(request.getParameter("text"));
		glserService.updateByPrimaryKey(list);
		model.addObject("list",list);
		model.setViewName("adminStudy/stu_program");
		return model;
	}
	@RequestMapping("stu_teacher")
	public ModelAndView  stu_teacher() {
		ModelAndView model = new ModelAndView();
		List<student_attribute> list = sa.selectAll();
		model.addObject("list",list);
		model.setViewName("adminStudy/stu_teacher");
		return model;
	}
	@RequestMapping("stu_teacherEdit")
	public ModelAndView  stu_teacherEdit(HttpServletRequest request) {
		String id = request.getParameter("id");
		String t = request.getParameter("txt");
		student_attribute sAttribute = sa.selectByPrimaryKey(Integer.valueOf(id));
		sAttribute.setAdviser(t);
		sa.updateByPrimaryKey(sAttribute);
		ModelAndView model = new ModelAndView();
		List<student_attribute> list = sa.selectAll();
		model.addObject("list",list);
		model.setViewName("adminStudy/stu_teacher");
		return model;
	}
	@RequestMapping("stu_audit")
	public ModelAndView  stu_audit() {
		ModelAndView model = new ModelAndView();
		List<student_job> list = sjob.selectAll();
		model.addObject("list",list);
		model.setViewName("adminStudy/stu_audit");
		return model;
	}
	@RequestMapping("stu_auditEdit")
	public ModelAndView  stu_auditEdit(HttpServletRequest request) {
		String id = request.getParameter("id");
		String staut = request.getParameter("staut");
		student_job stJob = sjob.selectByPrimaryKey(Integer.valueOf(id));
		stJob.setAuditSituation(staut);
		sjob.updateByPrimaryKey(stJob);
		ModelAndView model = new ModelAndView();
		List<student_job> list = sjob.selectAll();
		model.addObject("list",list);
		model.setViewName("adminStudy/stu_audit");
		return model;
	}
}
