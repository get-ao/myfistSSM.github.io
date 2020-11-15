package edu.jmi.dgsx.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.jmi.dgsx.po.account;
import edu.jmi.dgsx.po.student_attribute;
import edu.jmi.dgsx.po.student_info;
import edu.jmi.dgsx.po.student_job;
import edu.jmi.dgsx.service.qy_jobService;
import edu.jmi.dgsx.service.student_attributeService;
import edu.jmi.dgsx.service.student_infoService;
import edu.jmi.dgsx.service.student_jobService;

/**
 * *ѧ��������
 * @author Administrator
 *
 */
@Controller
@RequestMapping("studentControl")
public class studentControl {

	@Autowired
	private student_attributeService sas;
	@Autowired
	private student_jobService sjob;
	@Autowired
	private qy_jobService qy_job;
	@Autowired
	private student_infoService sinfo;
	
	//������Ϣ
	@RequestMapping("info")
	public ModelAndView info(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		account account = (account)request.getSession().getAttribute("user");
		student_attribute sAttribute = (student_attribute) sas.selectByPrimaryKey(Integer.valueOf(account.getUser()));
		modelAndView.addObject("sAttribute",sAttribute);
		modelAndView.setViewName("student/info");
		return modelAndView;
	}
	//�����ܼ�
	@RequestMapping("week")
	public ModelAndView week(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		account account = (account)request.getSession().getAttribute("user");
		student_attribute sAttribute = (student_attribute) sas.selectByPrimaryKey(Integer.valueOf(account.getUser()));
		modelAndView.addObject("sAttribute",sAttribute);
		modelAndView.setViewName("student/week");
		return modelAndView;
	}
	//�޸��ܼ�
	@RequestMapping(value = "weekChange",method = RequestMethod.POST)
	public ModelAndView weekChange(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		account account = (account)request.getSession().getAttribute("user");//��ȡ��½����
		String week = request.getParameter("week");
		student_attribute sAttribute = (student_attribute) sas.selectByPrimaryKey(Integer.valueOf(account.getUser()));
		sAttribute.setWeekly(week);
		sas.updateByPrimaryKey(sAttribute);
		modelAndView.addObject("sAttribute",sAttribute);
		modelAndView.setViewName("student/week");
		return modelAndView;
	}
	//���˸�λ
	@RequestMapping("job")
	public ModelAndView job(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		account account = (account)request.getSession().getAttribute("user");//��ȡ��½����
		student_job sJob = sjob.selectByPrimaryKey(Integer.valueOf(account.getUser()));
		List<edu.jmi.dgsx.po.qy_job> listJob = (List<edu.jmi.dgsx.po.qy_job>) qy_job.selectAll();
		modelAndView.addObject("sjob",sJob);
		modelAndView.addObject("jobInfo",listJob);
		modelAndView.setViewName("student/job");
		return modelAndView;
	}
	//�����λ
	@RequestMapping("changeJob")
	public ModelAndView changeJob(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		account account = (account)request.getSession().getAttribute("user");//��ȡ��½����
		student_job sJob = sjob.selectByPrimaryKey(Integer.valueOf(account.getUser()));
		List<edu.jmi.dgsx.po.qy_job> listJob = (List<edu.jmi.dgsx.po.qy_job>) qy_job.selectAll();
		sJob.setApplyJob(request.getParameter("job"));
		sjob.updateByPrimaryKey(sJob);
		modelAndView.addObject("sjob",sJob);
		modelAndView.addObject("jobInfo",listJob);
		modelAndView.setViewName("student/job");
		return modelAndView;
	}
	//�鿴������Ϣ
	@RequestMapping("sendinfo")
	public ModelAndView sendinfo(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		account account = (account)request.getSession().getAttribute("user");//��ȡ��½����
		List<student_info> listsend = sinfo.findbyName(account.getUser(), account.getName());
		model.addObject("listsend",listsend);
		model.setViewName("student/getSend");
		return model;
	}
	@RequestMapping("sendInfoDel")
	public ModelAndView sendInfoDel(HttpServletRequest request) {
		int id = Integer.valueOf(request.getParameter("id"));
		sinfo.deleteByPrimaryKey(id);
		ModelAndView model = new ModelAndView();
		account account = (account)request.getSession().getAttribute("user");//��ȡ��½����
		List<student_info> listsend = sinfo.findbyName(account.getUser(), account.getName());
		model.addObject("listsend",listsend);
		model.setViewName("student/getSend");
		return model;
	}
}
