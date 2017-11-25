package edu.poly.controller;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.jrockit.jfr.ValueDefinition;

import edu.poy.bean.Book;

@Controller

public class TestController {
	
	@RequestMapping("showbook.poly")
	
	public String showbook(ModelMap model, @ModelAttribute("book")Book book) {
		// TODO Auto-generated method stub
		return "book";
	}
	
@RequestMapping("actionbook.poly")
	
	public String actionbook(ModelMap model,@Validated  @ModelAttribute("book")Book book,BindingResult errors) {
		if(errors.hasErrors()){
			return "book";
		}else{
			System.out.println("cac");
			return "book";
			
		}
	
			
		
		
	}
}
