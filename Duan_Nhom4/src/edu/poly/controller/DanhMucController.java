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

import edu.poy.bean.Danhmuc;
@Transactional
@RequestMapping("danhmuc.poly")
@Controller
public class DanhMucController {
	@Autowired
	SessionFactory factory;
	@RequestMapping()
	public String index(ModelMap model) {
		model.addAttribute("danhmuc", new Danhmuc());
		return "danhmuc";
	}
	@ModelAttribute("danhmucs")
	public List<Danhmuc> getDanhmucs() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Danhmuc";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Danhmuc> list = query.list();
		return list;
	}

	@RequestMapping(params = "btnInsert")
	public String insert(ModelMap model, @ModelAttribute("danhmuc") Danhmuc danhmuc) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.save(danhmuc);
			transaction.commit();
			model.addAttribute("message", "Insert successfully !");
		} catch (Exception e) {
			model.addAttribute("message", "Insert fails !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("danhmuc", new Danhmuc());
		model.addAttribute("danhmucs", getDanhmucs());
		return "danhmuc";
	}

	@RequestMapping(params = "btnUpdate")
	public String update(ModelMap model, @ModelAttribute("danhmuc") Danhmuc danhmuc) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.update(danhmuc);
			transaction.commit();
			model.addAttribute("message", "Update successfully !");
		} catch (Exception e) {
			model.addAttribute("message", "Update fails !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("danhmucs", getDanhmucs());
		return "danhmuc";
	}

	@RequestMapping(params = "btnDelete")
	public String delete(ModelMap model, @ModelAttribute("Danhmuc") Danhmuc danhmuc) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.delete(danhmuc);
			transaction.commit();
			model.addAttribute("message", "Delete successfully !");
		} catch (Exception e) {
			model.addAttribute("message", "Delete fails !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("danhmuc", new Danhmuc());
		model.addAttribute("danhmucs", getDanhmucs());
		return "danhmuc";
	}

	@RequestMapping(params = "lnkEdit")
	public String edit(ModelMap model, @RequestParam("madanhmuc") String madanhmuc) {
		Session session = factory.getCurrentSession();
		Danhmuc danhmuc = (Danhmuc) session.get(Danhmuc.class, madanhmuc);
		model.addAttribute("danhmuc", danhmuc);
		return "danhmuc";
	}
	
			

}
