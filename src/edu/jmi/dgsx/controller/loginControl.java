package edu.jmi.dgsx.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.jmi.dgsx.po.admin;
import edu.jmi.dgsx.service.accountService;
import edu.jmi.dgsx.service.adminService;

/**
 ** ��½������
 * @author Administrator
 *
 */
@Controller
@RequestMapping("login")
public class loginControl {
	@Autowired
	private accountService account;
	@Autowired
	private adminService ad;
	
	@RequestMapping(value = "person",method = RequestMethod.POST)
	public String school_techer(HttpServletRequest request,HttpServletResponse response,Model model) throws IOException {
		String user = request.getParameter("user");
		String psw = request.getParameter("psw");
		int choose = Integer.valueOf(request.getParameter("choose")) ;
		admin admin = ad.adminLogin(user, psw);
		edu.jmi.dgsx.po.account acc = account.login(user, psw);
		if(acc==null&&admin==null) {
			response.setContentType("text/html;charset=utf-8"); 
			response.getWriter().write("<script>alert('�û�������')</script>");
			 response.getWriter().flush();
			return "login/login";
		}
		if(choose==1&&acc.getKind().equals("ѧ��")) {//ѧ���˺ŵ�½
			model.addAttribute("userid",acc.getUser());
			request.getSession().setAttribute("user", acc);
			return "student/studentMain";
		}
		if(choose==2&&acc.getKind().equals("У����ʦ")) {//У����ʦ��½��֤
			request.getSession().setAttribute("teacher", acc);
			return "school-teacher/teacher_student";
		}
		if(choose==3&&acc.getKind().equals("��ҵ��ʦ")) {//��ҵ��ʦ��½
			request.getSession().setAttribute("qyTeacher", acc);
			return "qy_teacher/qy_teacher";
		}
		if(choose==4&&acc.getKind().equals("��ҵ������")) {//��ҵ�����˵�½
			request.getSession().setAttribute("qy_hander", acc);
			return "qy_hander/qyMain";
		}
		if(choose==5&&acc.getKind().equals("��ѧ������Ա")) {//��ѧ������Ա��½
			request.getSession().setAttribute("studyer", acc);
			return "adminStudy/Studyer";
		}
		if(choose==6&&admin.getName().toString().contains("����Ա")) {//����Ա��½
			request.getSession().setAttribute("admin", admin);
			return "admin/adminMain";
		}
		else {
			response.setContentType("text/html;charset=utf-8"); 
			response.getWriter().write("<script>alert('�û�������')</script>");
			response.getWriter().flush();
			return "login/login";
		}
	}
}
