package edu.poly.controller;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;



@Transactional
@RequestMapping("contact.poly")
@Controller
public class contactController {
	@Autowired
	SessionFactory factory;
	
}
