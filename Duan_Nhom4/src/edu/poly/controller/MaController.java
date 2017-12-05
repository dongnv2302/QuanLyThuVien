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

import edu.poy.bean.Ma;
import edu.poy.bean.Sach;



@Transactional
@RequestMapping("ma.poly")
@Controller
public class MaController {
	@Autowired
	SessionFactory factory;
	@RequestMapping()
	public String index(ModelMap model) {
		model.addAttribute("ma", new Ma());
		return "ma";
	}
	@ModelAttribute("mas")
	public List<Ma> getMas() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Ma";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Ma> list = query.list();
		return list;
	}
	@ModelAttribute("sach")
	public List<Sach> getSachs() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Sach";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Sach> list = query.list();
		return list;
	}
		
	@RequestMapping(params = "btnInsert")
	public String insert(ModelMap model, @ModelAttribute("ma") Ma ma) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.save(ma);
			transaction.commit();
			model.addAttribute("message", "Thêm thành công !");
		} catch (Exception e) {
			model.addAttribute("message", "Thêm lỗi !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("ma", new Ma());
		model.addAttribute("mas", getMas());
		return "ma";
	}

	@RequestMapping(params = "btnUpdate")
	public String update(ModelMap model, @ModelAttribute("ma") Ma ma) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.update(ma);
			transaction.commit();
			model.addAttribute("message", "Sửa thành công !");
		} catch (Exception e) {
			model.addAttribute("message", "Sửa thất bại!");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("mas", getMas());
		return "ma";
	}

	@RequestMapping(params = "btnDelete")
	public String delete(ModelMap model, @ModelAttribute("Ma") Ma ma) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.delete(ma);
			transaction.commit();
			model.addAttribute("message", "Xóa thành công !");
		} catch (Exception e) {
			model.addAttribute("message", "Xóa thất bại !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("ma", new Ma());
		model.addAttribute("mas", getMas());
		return "ma";
	}

	@RequestMapping(params = "lnkEdit")
	public String edit(ModelMap model, @RequestParam("masosach") String masosach) {
		Session session = factory.getCurrentSession();
		Ma ma = (Ma) session.get(Ma.class, masosach);
		model.addAttribute("ma", ma);
		return "ma";
	}
	
			

}
