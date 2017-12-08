package edu.poly.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.HttpServerErrorException;

import edu.poy.bean.Staff;


@Controller
@Transactional

public class LoginController {
	@Autowired
	SessionFactory factory;
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String getLogin(Model model, Staff users) {
		model.addAttribute("users", new Staff());
		
		return "login";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String getLogin(Model model, Staff users, HttpServletResponse response) {
		@SuppressWarnings("unused")
		String redirect = null;
		model.addAttribute("users", users);
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("FROM Staff where tendangnhap = :tendangnhap  and matkhau = :matkhau");
		query.setParameter("tendangnhap", users.getTendangnhap());
		query.setParameter("matkhau", users.getMatkhau());
		@SuppressWarnings("unchecked")
		List<Staff> list = query.list();
		if (users.getTendangnhap().isEmpty() && users.getMatkhau().isEmpty()) {
			model.addAttribute("message", "Vui lòng điền thông tin");
			redirect = "login";
		} else if (users.getTendangnhap().isEmpty()) {
			model.addAttribute("message", "Vui lòng nhập Tên đăng nhập");
			redirect = "login";
		} else if (users.getMatkhau().isEmpty()) {
			model.addAttribute("message", "Vui lòng nhập mật khẩu");
			redirect = "login";
		} else if (list.isEmpty()) {
			model.addAttribute("message", "Mật khẩu hoặc tên đăng nhập sai");
			redirect = "login";
		} else {
			redirect = null;
			try {
				response.sendRedirect("demo.poly");
			} catch (Exception e) {
				// TODO: handle exception
			}
			
		}
		return "login";
	}
}
