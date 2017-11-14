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

import edu.poy.bean.DanhMucLoaiSach;

@Transactional
@RequestMapping("dmls.poly")
@Controller
public class DanhMucLoaiSachController {
	@Autowired
	SessionFactory factory;
	@RequestMapping()
	public String index(ModelMap model) {
		model.addAttribute("dmls", new DanhMucLoaiSach());
		return "dmls";
	}
	@ModelAttribute("dmlss")
	public List<DanhMucLoaiSach> getDanhMucLoaiSachs() {
		Session session = factory.getCurrentSession();
		String hql = "FROM DanhMucLoaiSach";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<DanhMucLoaiSach> list = query.list();
		return list;
	}

	@RequestMapping(params = "btnInsert")
	public String insert(ModelMap model, @ModelAttribute("dmls") DanhMucLoaiSach dmls) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.save(dmls);
			transaction.commit();
			model.addAttribute("message", "Insert successfully !");
		} catch (Exception e) {
			model.addAttribute("message", "Insert fails !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("dmls", new DanhMucLoaiSach());
		model.addAttribute("dmlss", getDanhMucLoaiSachs());
		return "dmls";
	}

	@RequestMapping(params = "btnUpdate")
	public String update(ModelMap model, @ModelAttribute("dmls") DanhMucLoaiSach dmls) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.update(dmls);
			transaction.commit();
			model.addAttribute("message", "Update successfully !");
		} catch (Exception e) {
			model.addAttribute("message", "Update fails !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("dmlss", getDanhMucLoaiSachs());
		return "dmls";
	}

	@RequestMapping(params = "btnDelete")
	public String delete(ModelMap model, @ModelAttribute("dmls") DanhMucLoaiSach dmls) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.delete(dmls);
			transaction.commit();
			model.addAttribute("message", "Delete successfully !");
		} catch (Exception e) {
			model.addAttribute("message", "Delete fails !");
			transaction.rollback();
		}
		model.addAttribute("dmls", new DanhMucLoaiSach());
		model.addAttribute("dmlss", getDanhMucLoaiSachs());
		return "dmls";
	}

	@RequestMapping(params = "lnkEdit")
	public String edit(ModelMap model, @RequestParam("maloaisach") String maloaisach) {
		Session session = factory.getCurrentSession();
		DanhMucLoaiSach dmls = (DanhMucLoaiSach) session.get(DanhMucLoaiSach.class, maloaisach);
		model.addAttribute("dmls", dmls);
		return "dmls";
	}
	
			

}
