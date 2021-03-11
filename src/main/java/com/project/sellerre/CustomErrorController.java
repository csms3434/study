package com.project.sellerre;

import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CustomErrorController implements ErrorController {

	@Override
	public String getErrorPath() {
		return "/errors";
	}

	@RequestMapping("/error")
	public ModelAndView handleError(HttpServletRequest request, Model model) {
		ModelAndView mav = new ModelAndView("/errors/error");
		Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
		HttpStatus httpStatus = HttpStatus.valueOf(Integer.valueOf(status.toString()));
		mav.addObject("code", status.toString());
		mav.addObject("class", request.getAttribute("javax.servlet.error.exception_type"));
		mav.addObject("message", request.getAttribute("javax.servlet.error.message"));
		mav.addObject("uri", request.getAttribute("javax.servlet.error.request_uri"));
		mav.addObject("exception", request.getAttribute("javax.servlet.error.exception"));
		mav.addObject("name", request.getAttribute("javax.servlet.error.servlet_name"));

		mav.addObject("msg", httpStatus.getReasonPhrase());
		mav.addObject("timestamp", new Date());
		mav.addObject("msg1", httpStatus.series());

		return mav;
	}

}
