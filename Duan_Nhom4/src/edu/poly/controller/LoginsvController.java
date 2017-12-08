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

import edu.poy.bean.Sinhvien;
import edu.poy.bean.Staff;


@Controller
@Transactional

public class LoginsvController {
	@Autowired
	SessionFactory factory;
	@RequestMapping(value = "loginsv", method = RequestMethod.GET)
	public String getLogin(Model model, Sinhvien users) {
		model.addAttribute("users", new Sinhvien());
		
		return "loginsv";
	}

	@RequestMapping(value = "loginsv", method = RequestMethod.POST)
	public String getLogin(Model model, Sinhvien users, HttpServletResponse response) {
		@SuppressWarnings("unused")
		String redirect = null;
		model.addAttribute("users", users);
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("FROM Sinhvien where masinhvien = :masinhvien  and matkhau = :matkhau");
		query.setParameter("masinhvien", users.getMasinhvien());
		query.setParameter("matkhau", users.getMatkhau());
		@SuppressWarnings("unchecked")
		List<Staff> list = query.list();
		if (users.getMasinhvien().isEmpty() && users.getMatkhau().isEmpty()) {
			model.addAttribute("message", "Vui lòng nhập dữ liệu");
			redirect = "loginsv";
		} else if (users.getMasinhvien().isEmpty()) {
			model.addAttribute("message", "Bạn cần nhập tên đăng nhập");
			redirect = "loginsv";
		} else if (users.getMatkhau().isEmpty()) {
			model.addAttribute("message", "Bạn cần nhập mật khẩu");
			redirect = "loginsv";
		} else if (list.isEmpty()) {
			model.addAttribute("message", "Bạn nhập sai tên đăng nhập hoặc mật khẩu");
			redirect = "loginsv";
		} else {
			redirect = null;
			try {
				response.sendRedirect("index.poly");
			} catch (Exception e) {
				// TODO: handle exception
			}
			
		}
		return "loginsv";
	}
}
