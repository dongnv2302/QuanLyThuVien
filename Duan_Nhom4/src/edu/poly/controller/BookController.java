package edu.poly.controller;

import java.util.List;

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

import edu.poy.bean.Sach;
import edu.poy.bean.Sinhvien;
@Transactional
@RequestMapping("themsach.poly")
@Controller
public class BookController {
	@Autowired
	SessionFactory factory;
	@RequestMapping()
	public String index(ModelMap model) {
		model.addAttribute("sach", new Sach());
		return "themsach";
	}

	@ModelAttribute("sachs")
	public List<Sach> getSachs() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Sach";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Sach> list = query.list();
		return list;
	}

	@RequestMapping(params = "btnInsert")
	public String insert(ModelMap model, @ModelAttribute("Sach") Sach sach) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.save(sach);
			transaction.commit();
			model.addAttribute("message", "Insert successfully !");
		} catch (Exception e) {
			model.addAttribute("message", "Insert fails !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("sach", new Sach());
		model.addAttribute("sachs", getSachs());
		return "sach";
	}

	@RequestMapping(params = "btnUpdate")
	public String update(ModelMap model, @ModelAttribute("sach") Sach sach) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.update(sach);
			transaction.commit();
			model.addAttribute("message", "Update successfully !");
		} catch (Exception e) {
			model.addAttribute("message", "Update fails !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("sachs", getSachs());
		return "sach";
	}

	@RequestMapping(params = "btnDelete")
	public String delete(ModelMap model, @ModelAttribute("Sach") Sach sach) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.delete(sach);
			transaction.commit();
			model.addAttribute("message", "Delete successfully !");
		} catch (Exception e) {
			model.addAttribute("message", "Delete fails !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("sach", new Sach());
		model.addAttribute("sachs", getSachs());
		return "sach";
	}

	@RequestMapping(params = "lnkEdit")
	public String edit(ModelMap model, @RequestParam("maloaisach") String maloaisach) {
		Session session = factory.getCurrentSession();
		Sach sach = (Sach) session.get(Sach.class, maloaisach);
		model.addAttribute("sach", sach);
		return "themsach";
	}

}
