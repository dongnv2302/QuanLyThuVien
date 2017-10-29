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

import edu.poly.bean.Depart;
import edu.poly.bean.Staff;




@Transactional
@RequestMapping("Department")
@Controller
public class SinhvienController {
		@Autowired
		SessionFactory factory;
		@ModelAttribute("departs")
		public List< Depart> getDepart(){
			Session session = factory.getCurrentSession();
			String hql="FROM Depart";
			Query query = session.createQuery(hql);
			@SuppressWarnings("unchecked")
			List< Depart> list = query.list();	
			return list;
		}
		@RequestMapping()	
		public String insert(ModelMap model) {
			model.addAttribute("depart", new Depart());
			return "Department";
		}
		@ModelAttribute("Staffs")
		public List<Staff> getStaff(){
			Session session = factory.getCurrentSession();
			String hql="FROM Staff";
			Query query = session.createQuery(hql);
			@SuppressWarnings("unchecked")
			List<Staff> list = query.list();	
			return list;
}
		@RequestMapping(params="Add")
		public String insert(ModelMap model, @ModelAttribute("depart") Depart departs){
			Session session = factory.openSession();
			Transaction transaction= session.beginTransaction();
			try {
				session.save(departs);
				transaction.commit();
				model.addAttribute("message","Add new success");
			} catch (Exception e) {
				model.addAttribute("message","Add failed");
				transaction.rollback();
			}	
				session.close();
				model.addAttribute("depart", new Depart());
				model.addAttribute("departs", getDepart());
			return "Department";
		}
		@RequestMapping(params="Update")
		public String update(ModelMap model, @ModelAttribute("depart") Depart departs){
			Session session = factory.openSession();
			Transaction transaction= session.beginTransaction();
			try {
				session.update(departs);
				transaction.commit();
				model.addAttribute("message","Edit success");
			} catch (Exception e) {
				model.addAttribute("message","Edit Failed");
				transaction.rollback();
			}	
				session.close();
				model.addAttribute("depart", new Depart());
				model.addAttribute("departs", getDepart());
			return "Department";
		
		}
		@RequestMapping(params="Delete")
		public String delete(ModelMap model, @ModelAttribute("depart") Depart departs){
			Session session = factory.openSession();
			Transaction transaction= session.beginTransaction();
			try {
				session.delete(departs);
				transaction.commit();
				model.addAttribute("message","Delete success");
			} catch (Exception e) {
				model.addAttribute("message","Delete Failed");
				transaction.rollback();
			}	
				session.close();
				model.addAttribute("depart", new Depart());
				model.addAttribute("departs", getDepart());
			return "Department";
		}
		@RequestMapping(params="Edit")
		public String edit(ModelMap model,@RequestParam("departId") String departId){
			Session session = factory.getCurrentSession();
			Depart depart= (Depart) session.get(Depart.class,departId);
			model.addAttribute("depart", depart);
			return "Department";
		}
	}