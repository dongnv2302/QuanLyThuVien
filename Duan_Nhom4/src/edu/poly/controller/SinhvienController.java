package edu.poly.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poy.bean.Sinhvien;
@Transactional
@RequestMapping("sinhvien.poly")
@Controller
public class SinhvienController {
	@Autowired
	SessionFactory factory;
	@RequestMapping()
	public String index(ModelMap model) {
		model.addAttribute("sinhvien", new Sinhvien());
		return "sinhvien";
	}
	@ModelAttribute("sinhviens")
	public List<Sinhvien> getSinhviens() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Sinhvien";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Sinhvien> list = query.list();
		return list;
	}

	@RequestMapping(params = "btnInsert")
	public String insert(ModelMap model, @ModelAttribute("sinhvien") Sinhvien sinhvien) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.save(sinhvien);
			transaction.commit();
			model.addAttribute("message", "Insert successfully !");
		} catch (Exception e) {
			model.addAttribute("message", "Insert fails !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("sinhvien", new Sinhvien());
		model.addAttribute("sinhviens", getSinhviens());
		return "sinhvien";
	}

	@RequestMapping(params = "btnUpdate")
	public String update(ModelMap model, @ModelAttribute("sinhvien") Sinhvien sinhvien) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.update(sinhvien);
			transaction.commit();
			model.addAttribute("message", "Update successfully !");
		} catch (Exception e) {
			model.addAttribute("message", "Update fails !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("sinhviens", getSinhviens());
		return "sinhvien";
	}

	@RequestMapping(params = "btnDelete")
	public String delete(ModelMap model, @ModelAttribute("Sinhvien") Sinhvien sinhvien) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.delete(sinhvien);
			transaction.commit();
			model.addAttribute("message", "Delete successfully !");
		} catch (Exception e) {
			model.addAttribute("message", "Delete fails !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("sinhvien", new Sinhvien());
		model.addAttribute("sinhviens", getSinhviens());
		return "sinhvien";
	}

	@RequestMapping(params = "lnkEdit")
	public String edit(ModelMap model, @RequestParam("masinhvien") String masinhvien) {
		Session session = factory.getCurrentSession();
		Sinhvien sinhvien = (Sinhvien) session.get(Sinhvien.class, masinhvien);
		model.addAttribute("sinhvien", sinhvien);
		return "sinhvien";
	}
	@RequestMapping("seachsv")
	public List<Sinhvien> seachSinhVien(HttpServletRequest httpServletRequest) {
		String data = httpServletRequest.getParameter("data");
		Session session = factory.getCurrentSession();
		String hql = "FROM Sinhvien where masinhvien='"+data+"'";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Sinhvien> list = query.list();
		return list;
	}
			

}
