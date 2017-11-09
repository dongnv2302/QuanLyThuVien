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

import edu.poy.bean.Sinhvien;
import edu.poy.bean.Staff;

@Transactional
@RequestMapping("quanlynhanvien.poly")
@Controller
public class StaffController {
	@Autowired
	SessionFactory factory;
	@RequestMapping()
	public String index(ModelMap model) {
		model.addAttribute("staff", new Staff());
		return "quanlynhanvien";
	}
	@ModelAttribute("staffs")
	public List<Staff> getStaffs() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Staff";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Staff> list = query.list();
		return list;
	}
	@RequestMapping(params = "btnInsert")
	public String insert(ModelMap model, @ModelAttribute("staff") Staff staff) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.save(staff);
			transaction.commit();
			model.addAttribute("message", "Insert successfully !");
		} catch (Exception e) {
			model.addAttribute("message", "Insert fails !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("staff", new Staff());
		model.addAttribute("staffs", getStaffs());
		return "quanlynhanvien";
	}
	@RequestMapping(params = "btnUpdate")
	public String update(ModelMap model, @ModelAttribute("staff") Staff staff) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.update(staff);
			transaction.commit();
			model.addAttribute("message", "Update successfully !");
		} catch (Exception e) {
			model.addAttribute("message", "Update fails !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("staffs", getStaffs());
		return "quanlynhanvien";
	}
	@RequestMapping(params = "btnDelete")
	public String delete(ModelMap model, @ModelAttribute("Staff") Staff staff) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.delete(staff);
			transaction.commit();
			model.addAttribute("message", "Delete successfully !");
		} catch (Exception e) {
			model.addAttribute("message", "Delete fails !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("staff", new Staff());
		model.addAttribute("staffs", getStaffs());
		return "quanlynhanvien";
	}
	@RequestMapping(params = "lnkEdit")
	public String edit(ModelMap model, @RequestParam("manhanvien") String manhanvien) {
		Session session = factory.getCurrentSession();
		Staff staff = (Staff) session.get(Staff.class, manhanvien);
		model.addAttribute("staff", staff);
		return "quanlynhanvien";
	}

}
