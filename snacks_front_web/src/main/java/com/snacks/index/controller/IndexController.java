package com.snacks.index.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("index")
public class IndexController {

	@RequestMapping("indexPage")
	public ModelAndView showConfigPage() {
		System.out.println("===============");
		return new ModelAndView("index");
	}
}
