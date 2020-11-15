import org.springframework.context.support.ClassPathXmlApplicationContext;

import edu.jmi.dgsx.po.gl_teacher;
import edu.jmi.dgsx.po.qy_job;
import edu.jmi.dgsx.po.student_info;
import edu.jmi.dgsx.service.gl_teacherService;
import edu.jmi.dgsx.service.student_infoService;

public class test {
	public static void main(String[] args) {
		@SuppressWarnings("resource")
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("config/spring/applicationContext.xml");
		gl_teacherService sAttributeService = (gl_teacherService) context.getBean("gl");
		gl_teacher gl_teacher = sAttributeService.selectByPrimaryKey("jxgl001");
		System.out.println(gl_teacher.getGlOutline());
	}
}
