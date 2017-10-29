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

import edu.poy.bean.Departs;
import edu.poy.bean.Staffs;

@Transactional
@RequestMapping("manager_staffs")
@Controller
public class StaffsController {
	@Autowired
	SessionFactory factory;
	@ModelAttribute("staffs")
	public List<Staffs> getStaffs() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Staffs";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Staffs> list = query.list();
		return list;
	}

	@RequestMapping()
	public String index(ModelMap model) {
		model.addAttribute("staff", new Staffs());
		return "manager_staffs";
	}

	@ModelAttribute("departs")
	public List<Departs> getDeparts() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Departs";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Departs> list = query.list();
		return list;
	}

	@RequestMapping(params = "btnInsert")
	public String insert(ModelMap model, @ModelAttribute("staff") Staffs staffs) {
		Session session = factory.openSession();
		@SuppressWarnings("unused")
		String redirect;
		Transaction transaction = session.beginTransaction();
		try {
			session.save(staffs);

			transaction.commit();
			model.addAttribute("message", "Insert successfully !");
			redirect = "manager_staffs";
		} catch (Exception e) {
			model.addAttribute("message", "Insert fails !");
			transaction.rollback();
			redirect = "manager_staffs";
		}
		session.close();
		model.addAttribute("staff", new Staffs());
		model.addAttribute("staffs", getStaffs());
		return "manager_staffs";
	}

	@RequestMapping(params = "btnUpdate")
	public String update(ModelMap model, @ModelAttribute("staff") Staffs staffs) {
		Session session = factory.openSession();
		@SuppressWarnings("unused")
		String redirect;
		Transaction transaction = session.beginTransaction();
		try {
			session.update(staffs);

			transaction.commit();
			model.addAttribute("message", "Update successfully !");

		} catch (Exception e) {
			model.addAttribute("message", "Update fails !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("staffs", getStaffs());
		return "manager_staffs";
	}

	@RequestMapping(params = "btnDelete")
	public String delete(ModelMap model, @ModelAttribute("staff") Staffs staffs) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.delete(staffs);
			transaction.commit();
			model.addAttribute("message", "Delete successfully !");
		} catch (Exception e) {
			model.addAttribute("message", "Delete fails !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("staff", new Staffs());
		model.addAttribute("staffs", getStaffs());
		return "manager_staffs";
	}

	@RequestMapping(params = "lnkEdit")
	public String edit(ModelMap model, @RequestParam("idstaffs") String idstaffs) {
		Session session = factory.getCurrentSession();
		Staffs staff = (Staffs) session.get(Staffs.class, idstaffs);
		model.addAttribute("staff", staff);
		return "manager_staffs";
	}
}
