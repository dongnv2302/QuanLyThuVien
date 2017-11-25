package edu.poly.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.sound.midi.Soundbank;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.poy.bean.Sinhvien;
import net.sf.ehcache.hibernate.HibernateUtil;

@Transactional

@Controller
public class DangkyController {
	@Autowired
	SessionFactory factory;
	@RequestMapping("dangky.poly")
	public String index(ModelMap model,@Validated@ModelAttribute("sinhvien") Sinhvien sinhvien) {
		
		return "dangky";
	}
	

	@RequestMapping("dangkyaction.poly")
	public String insert(ModelMap model,@Validated@ModelAttribute("sinhvien") Sinhvien sinhvien, BindingResult errors) {
		
		if(errors.hasErrors()){
			return "dangky";
		}else {
			System.out.println(errors.getErrorCount());
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
			return "dangky";
		}
		
		
		
		
	}
}
