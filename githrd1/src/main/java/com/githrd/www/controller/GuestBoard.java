package com.githrd.www.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.githrd.www.dao.*;

@Controller
@RequestMapping("/gboard")
public class GuestBoard {
	@Autowired(required=false)
	GBoardDao gDao;
	
	public ModelAndView getList(ModelAndView mv) {
		return mv;
	}
}
