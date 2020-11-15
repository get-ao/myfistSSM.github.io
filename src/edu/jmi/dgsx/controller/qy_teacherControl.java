package edu.jmi.dgsx.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.jmi.dgsx.po.Talent_form;
import edu.jmi.dgsx.po.student_attribute;
import edu.jmi.dgsx.service.Talent_formService;
import edu.jmi.dgsx.service.student_attributeService;

@Controller
@RequestMapping("qyTeacher")
public class qy_teacherControl {
	
	@Autowired
	private student_attributeService sAttributeService;
	@Autowired
	private Talent_formService tform;
	
	@RequestMapping("attendance")
	public ModelAndView attendance(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		java.util.List<student_attribute> sAttribute = (java.util.List<student_attribute>) sAttributeService.selectAll();
		model.addObject("sAttribute",sAttribute);
		model.setViewName("qy_teacher/attendance");
		return model;
	}
	//考勤修改
	@RequestMapping("attendanceEdit")
	public ModelAndView attendanceEdit(HttpServletRequest request) {
		String txt = request.getParameter("txt");
		String id = request.getParameter("id");
		student_attribute sA  = sAttributeService.selectByPrimaryKey(Integer.valueOf(id));
		sA.setAttendance(txt);
		sAttributeService.updateByPrimaryKey(sA);
		ModelAndView model = new ModelAndView();
		java.util.List<student_attribute> sAttribute = (java.util.List<student_attribute>) sAttributeService.selectAll();
		model.addObject("sAttribute",sAttribute);
		model.setViewName("qy_teacher/attendance");
		return model;
	}
	@RequestMapping("weekly")
	public ModelAndView weekly(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		java.util.List<student_attribute> sAttribute = (java.util.List<student_attribute>) sAttributeService.selectAll();
		model.addObject("sAttribute",sAttribute);
		model.setViewName("qy_teacher/week");
		return model;
	}
	@RequestMapping("evaluation")
	public ModelAndView evaluation(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		model.setViewName("qy_teacher/evaluation");	
		return model;
	}
	//提交评价
	@RequestMapping(value = "evaluationSubmit",method = RequestMethod.POST)
	public ModelAndView evaluationSubmit(HttpServletResponse response,Talent_form tForm) throws IOException {
		ModelAndView model = new ModelAndView();
		java.util.List<Talent_form> list = tform.selectAll();
		model.setViewName("qy_teacher/evaluation");
		for (Talent_form talent_form : list) {
			if(tForm.getStudentId().equals(talent_form.getStudentId())) {
				response.setContentType("text/html;charset=utf-8"); 
				response.getWriter().write("<script>alert('该学号已存在')</script>");
				response.getWriter().flush();
				return model;
			}else {
				int i = tform.insert(tForm);
				if (i!=0) {
					response.setContentType("text/html;charset=utf-8"); 
					response.getWriter().write("<script>alert('提交成功！')</script>");
					response.getWriter().flush();
				}
				else {
					response.setContentType("text/html;charset=utf-8"); 
					response.getWriter().write("<script>alert('提交失败！')</script>");
					response.getWriter().flush();
				}
				return model;
			}
		}
		return model;
	}
	//查看评价表
	@RequestMapping("evaluationInfo")
	public ModelAndView evaluationFind(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		java.util.List<Talent_form> list = tform.selectAll();
		model.addObject("list",list);
		model.setViewName("qy_teacher/evaluationFind");	
		return model;
	}
	@RequestMapping("evaluationEdit")
	public ModelAndView evaluationEdit(HttpServletRequest request) {
		String student_id = request.getParameter("student_id");
		String results = request.getParameter("results");
		String score = request.getParameter("score");
		Talent_form talent_form = tform.selectByPrimaryKey(student_id);
		talent_form.setResults(results);
		talent_form.setScore(score);
		tform.updateByPrimaryKey(talent_form);
		ModelAndView model = new ModelAndView();
		java.util.List<Talent_form> list = tform.selectAll();
		model.addObject("list",list);
		model.setViewName("qy_teacher/evaluationFind");	
		return model;
	}
	@RequestMapping("evaluationDel")
	public ModelAndView evaluationDel(HttpServletRequest request) {
		String student_id = request.getParameter("student_id");
		tform.deleteByPrimaryKey(student_id);
		ModelAndView model = new ModelAndView();
		java.util.List<Talent_form> list = tform.selectAll();
		model.addObject("list",list);
		model.setViewName("qy_teacher/evaluationFind");	
		return model;
	}
}
