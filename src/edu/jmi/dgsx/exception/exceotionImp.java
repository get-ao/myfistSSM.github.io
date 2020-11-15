package edu.jmi.dgsx.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

public class exceotionImp implements HandlerExceptionResolver {
	
	public ModelAndView resolveException(HttpServletRequest arg0,
				HttpServletResponse arg1,Object arg2,Exception arg3
			) {
		String ex = null;
		if(arg3 instanceof exception){
            ex=((exception)arg3).getEx();
        }else{
            ex="Î´Öª´íÎó";
        }
		ModelAndView model = new ModelAndView();
		model.addObject("error",ex);
		model.setViewName("error/error");
		return model;
	}
	
}
