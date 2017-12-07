package edu.poly.controller;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.poy.bean.Demo;
@Transactional
@RequestMapping("demo.poly")
@Controller
public class DemoController {
	@Autowired
	SessionFactory factory;
	@RequestMapping()
	public String getDemo(Model model) {
		model.addAttribute("demo", new Demo());
		
		return "demo";
	}
	}