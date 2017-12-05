package edu.poly.controller;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.poy.bean.Danhmuc;
import edu.poy.bean.Lienhe;
@Transactional
@RequestMapping("lienhe.poly")
@Controller
public class LienHeController {
	@Autowired
	SessionFactory factory;
	@RequestMapping()
	public String index(ModelMap model) {
		model.addAttribute("lienhe", new Lienhe());
		return "lienhe";
	}
}
