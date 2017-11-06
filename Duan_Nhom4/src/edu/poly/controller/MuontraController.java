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

import edu.poy.bean.Muontra;
import edu.poy.bean.Sinhvien;

@Transactional
@RequestMapping("themmuontra.poly")
@Controller
public class MuontraController {
	@Autowired
	SessionFactory factory;
	@RequestMapping()
	public String index(ModelMap model) {
		model.addAttribute("muontra", new Muontra());
		return "themmuontra";
	}
	@ModelAttribute("muontras")
	public List<Muontra> getMuontras() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Muontra";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Muontra> list = query.list();
		return list;
	}
	@ModelAttribute("sinhvien")
	public List<Sinhvien> getSinhviens() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Sinhvien";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Sinhvien> list = query.list();
		return list;
	}
		
	@RequestMapping(params = "btnInsert")
	public String insert(ModelMap model, @ModelAttribute("muontra") Muontra muontra) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.save(muontra);
			transaction.commit();
			model.addAttribute("message", "Insert successfully !");
		} catch (Exception e) {
			model.addAttribute("message", "Insert fails !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("muontra", new Muontra());
		model.addAttribute("muontras", getMuontras());
		return "muontra";
	}

	@RequestMapping(params = "btnUpdate")
	public String update(ModelMap model, @ModelAttribute("muontra") Muontra muontra) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.update(muontra);
			transaction.commit();
			model.addAttribute("message", "Update successfully !");
		} catch (Exception e) {
			model.addAttribute("message", "Update fails !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("muontras", getMuontras());
		return "muontra";
	}

	@RequestMapping(params = "btnDelete")
	public String delete(ModelMap model, @ModelAttribute("Muontra") Muontra muontra) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.delete(muontra);
			transaction.commit();
			model.addAttribute("message", "Delete successfully !");
		} catch (Exception e) {
			model.addAttribute("message", "Delete fails !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("muontra", new Muontra());
		model.addAttribute("muontras", getMuontras());
		return "muontra";
	}

	@RequestMapping(params = "lnkEdit")
	public String edit(ModelMap model, @RequestParam("mamuontra") String mamuontra) {
		Session session = factory.getCurrentSession();
		Muontra muontra = (Muontra) session.get(Muontra.class, mamuontra);
		model.addAttribute("muontra", muontra);
		return "themmuontra";
	}
	
			

}
