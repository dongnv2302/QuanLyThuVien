package edu.poly.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.poy.bean.Sach;

@Transactional
@RequestMapping("index.poly")
@Controller
public class IndexController {
	@Autowired
	SessionFactory factory;
	@RequestMapping()
	public String index(ModelMap model) {
		model.addAttribute("sach", new Sach());
		return "index";
	}

	@ModelAttribute("sachsCNTT")
	public List<Sach> getSachsCNTT() {
		Session session = factory.getCurrentSession();
		String hql = "from Sach where maloaisach = 'LS2'";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Sach> list = query.list();
		return list;
	}
}
