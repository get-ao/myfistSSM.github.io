package edu.jmi.dgsx.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import edu.jmi.dgsx.po.Talent_form;
import edu.jmi.dgsx.po.qy_job;
import edu.jmi.dgsx.po.student_attribute;
import edu.jmi.dgsx.service.Talent_formService;
import edu.jmi.dgsx.service.qy_jobService;
import edu.jmi.dgsx.service.student_attributeService;

@Controller
@RequestMapping("qy_hander")
public class qy_handerContr {
	
	@Autowired
	private qy_jobService qyjob;
	@Autowired
	private student_attributeService saService;
	@Autowired
	private Talent_formService tFormService;
	
	@RequestMapping("qyGraduates")
	public ModelAndView qyGraduates(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		List<student_attribute> sAttribute = saService.selectAll();
		model.addObject("sAttribute",sAttribute);
		model.setViewName("qy_hander/qyGraduates");
		return model;
	}
	@RequestMapping("qyJob")
	public ModelAndView qyJob(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		List<qy_job> qylist = qyjob.selectAll();
		model.addObject("qylist",qylist);
		model.setViewName("qy_hander/qyJob");
		return model;
	}
	@RequestMapping("qyJobDel")
	public ModelAndView qyJobDel(HttpServletRequest request) {
		qyjob.deleteByPrimaryKey(Integer.valueOf(request.getParameter("id")));
		ModelAndView model = new ModelAndView();
		List<qy_job> qylist = qyjob.selectAll();
		model.addObject("qylist",qylist);
		model.setViewName("qy_hander/qyJob");
		return model;
	}
	@RequestMapping("qyJobEdit")
	public ModelAndView qyJobEdit(HttpServletRequest request) {
		String id = request.getParameter("id");
		String job = request.getParameter("job");
		String need = request.getParameter("need");
		qy_job qy = qyjob.selectByPrimaryKey(Integer.valueOf(id));
		qy.setJob(job);  qy.setJobNeed(need);
		qyjob.updateByPrimaryKey(qy);
		ModelAndView model = new ModelAndView();
		List<qy_job> qylist = qyjob.selectAll();
		model.addObject("qylist",qylist);
		model.setViewName("qy_hander/qyJob");
		return model;
	}
	@RequestMapping("qyGuide")
	public ModelAndView qyGuide(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		List<Talent_form> tlist = tFormService.selectAll();
		model.addObject("tlist",tlist);
		model.setViewName("qy_hander/qyGuide");
		return model;
	}
}
