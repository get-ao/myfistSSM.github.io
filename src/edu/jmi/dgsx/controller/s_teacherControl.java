package edu.jmi.dgsx.controller;

import java.util.Date;
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
import edu.jmi.dgsx.po.teacher_send;
import edu.jmi.dgsx.service.accountService;
import edu.jmi.dgsx.service.student_attributeService;
import edu.jmi.dgsx.service.student_infoService;
import edu.jmi.dgsx.service.teacher_sendService;

@Controller
@RequestMapping("schoolTeacher")
public class s_teacherControl {

	@Autowired
	private student_attributeService sa;
	@Autowired
	private student_infoService sinfo;
	@Autowired
	private teacher_sendService tsend;
	@Autowired
	private accountService aServer;
	//学生列表
	@RequestMapping("studentList")
	public ModelAndView studentList() {
		ModelAndView model = new ModelAndView();
		List<student_attribute> sAttribute = sa.selectAll();
		model.addObject("sAttribute",sAttribute);
		model.setViewName("school-teacher/studentList");
		return model;	
		
	}
	//删除学生
		@RequestMapping("studentDel")
		public ModelAndView studentDel(HttpServletRequest request) {
			String sId = request.getParameter("sId");
			sa.deleteByPrimaryKey(Integer.valueOf(sId));
			ModelAndView model = new ModelAndView();
			List<student_attribute> sAttribute = sa.selectAll();
			model.addObject("sAttribute",sAttribute);
			model.setViewName("school-teacher/studentList");
			return model;	
		}
		//添加信息
		@RequestMapping("studentAdd")
		public ModelAndView studentAdd(HttpServletRequest request) {
			String student_id = request.getParameter("student_id");
			String name = request.getParameter("name");
			String sex = request.getParameter("sex");
			String grade = request.getParameter("grade");
			String adviser = request.getParameter("adviser");
			student_attribute sAttribute =  new student_attribute();
			sAttribute.setStudentId(Integer.valueOf(student_id));
			sAttribute.setStudentName(name);
			sAttribute.setStudentSex(sex);
			sAttribute.setStudentGrade(grade);
			sAttribute.setAdviser(adviser);
			sa.insert(sAttribute);
			//同步到登陆
			account ac = new account();
			ac.setUser(student_id);
			ac.setName(name);
			ac.setPsw("123");
			ac.setKind("学生");
			aServer.insert(ac);
			ModelAndView model = new ModelAndView();
			model.setViewName("school-teacher/studentList");
			return model;
		}
		//编辑信息
		@RequestMapping("studentEdit")
		public ModelAndView studentEdit(HttpServletRequest request) {
			String student_id = request.getParameter("student_id");
			String name = request.getParameter("name");
			String sex = request.getParameter("sex");
			String grade = request.getParameter("grade");
			String results = request.getParameter("results");
			String adviser = request.getParameter("adviser");
			student_attribute sAttribute =  sa.selectByPrimaryKey(Integer.valueOf(student_id));
			sAttribute.setStudentName(name);
			sAttribute.setStudentSex(sex);
			sAttribute.setStudentGrade(grade);
			sAttribute.setInspectionResults(Integer.valueOf(results));
			sAttribute.setAdviser(adviser);
			sa.updateByPrimaryKey(sAttribute);
			ModelAndView model = new ModelAndView();
			model.setViewName("school-teacher/studentList");
			return model;
		}
	//学生信息
	@RequestMapping("studentInfo")
	public ModelAndView studentInfo() {
		ModelAndView model = new ModelAndView();
		List<student_attribute> sAttribute = sa.selectAll();
		model.addObject("sAttribute",sAttribute);
		model.setViewName("school-teacher/studentInfo");
		return model;	
		
	}
	//学生考勤
	@RequestMapping("studentKao")
	public ModelAndView studentKao() {
		ModelAndView model = new ModelAndView();
		List<student_attribute> sAttribute = sa.selectAll();
		model.addObject("sAttribute",sAttribute);
		model.setViewName("school-teacher/studentKao");
		return model;	
		
	}
	//学生周记
		@RequestMapping("studentWeek")
		public ModelAndView studentWeek() {
			ModelAndView model = new ModelAndView();
			List<student_attribute> sAttribute = sa.selectAll();
			model.addObject("sAttribute",sAttribute);
			model.setViewName("school-teacher/studentWeek");
			return model;	
			
		}
	//消息推送
		@RequestMapping("sendInfo")
		public ModelAndView sendInfo() {
			ModelAndView model = new ModelAndView();
			List<student_attribute> list = sa.selectAll();
			model.addObject("list",list);
			model.setViewName("school-teacher/sendInfo");
			return model;
		}
	//选择推送对象
		@RequestMapping(value = "sendClass",method = RequestMethod.POST)
		public ModelAndView sendClass(HttpServletRequest request) {
			ModelAndView model = new ModelAndView();
			List<student_attribute> list = sa.selectAll();
			model.addObject("list",list);
			String info = request.getParameter("info");
			String student_id = request.getParameter("student");
			student_attribute sAttribute = sa.selectByPrimaryKey(Integer.valueOf(student_id));
			//推送到学生
			student_info sf = new student_info();
			sf.setStudentId(student_id);
			sf.setName(sAttribute.getStudentName());
			sf.setInfo(info);
			sf.setTime(new Date());
			sinfo.insert(sf);
			//保存到推送表
			account account = (edu.jmi.dgsx.po.account) request.getSession().getAttribute("teacher");
			teacher_send ts1 = new teacher_send();
			ts1.setStName(account.getName());
			ts1.setStUser(account.getUser());
			ts1.setStudent(sf.getName());
			ts1.setStudenId(student_id);
			ts1.setInfo(info);
			ts1.setTime(new Date());
			tsend.insert(ts1);
			model.setViewName("school-teacher/sendInfo");
			return model;
		}
		//查看推送历史
		@RequestMapping("histroyInfo")
		public ModelAndView histroyInfo() {
			ModelAndView model = new ModelAndView();
			List<teacher_send> list = tsend.selectAll();
			model.addObject("list",list);
			model.setViewName("school-teacher/histroySend");
			return model;
		}
		//删除推送历史
		@RequestMapping("histroyInfoDel")
		public ModelAndView histroyInfoDel(HttpServletRequest request) {
			String id = request.getParameter("id");
			tsend.deleteByPrimaryKey(Integer.valueOf(id));
			ModelAndView model = new ModelAndView();
			List<teacher_send> list = tsend.selectAll();
			model.addObject("list",list);
			model.setViewName("school-teacher/histroySend");
			return model;
		}
}
