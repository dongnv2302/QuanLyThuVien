package edu.poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poy.bean.Danhmuc;
import edu.poy.bean.Sach;

@Transactional
@RequestMapping("Tienganh.poly")
@Controller
public class TienganhController {
	@Autowired
	SessionFactory factory;
	@RequestMapping()
	public String index(ModelMap model) {
		model.addAttribute("Tienganh", new Sach());
		getTienganhs(model);
		return "Tienganh";
	}
	@ModelAttribute("tienganhs")
	public List<Sach> getTienganhs(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Sach where madanhmuc = 'MDM004'";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Sach> list = query.list();
		model.addAttribute("dulichs", phantrangcntt(vitrihientai,list)); //hiện danh sách đã phân trang 10 item 1 trang
		model.addAttribute("listSoLuongTrang", listSoLuongTrang(list,model));// 
		return phantrangcntt(vitrihientai,list);
	}
	@ModelAttribute("danhmuc")
	public List<Danhmuc> getDanhmucs() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Danhmuc";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Danhmuc> list = query.list();
		return list;
	}
	// phân 10 item trên 1 trang. phải có vị trí để tính xuất 10 item thứ bao nhiêu
				int vitrihientai=1;
				public List<Sach> phantrangcntt(int vitrihientai,List<Sach> danhsach) {	
			List<Sach> l = danhsach;
			List<Sach> lreturn = new ArrayList<>();
			//lay ra 10 item
			for (int i = (vitrihientai-1)*12 ; i < (vitrihientai)*12 ; i++) {
				try {
				lreturn.add(l.get(i));
				}catch(Exception e) {
					break;
				}
			};
					return lreturn;
				}
				
				// số lượng button bấm chuyển trang
				public List<Integer> listSoLuongTrang(List<Sach> danhsach,ModelMap model){
					List<Integer> lreturn = new ArrayList<>();
					double temp = Double.parseDouble(danhsach.size()+"")/12.0;
					int tempfor = (int) Math.ceil(temp);
					int a = 3;
					int b=3;
					
					
					
					if(vitrihientai==1) {
						a=0;
						b=6;
					}
					if(vitrihientai==2) {
						a=1;
						b=5;
					}
					if(vitrihientai==3) {
						a=2;
						b=4;
					}
					if(vitrihientai==4) {
						a=3;
						b=3;
					}
					
					if(vitrihientai==tempfor) {
						a=6;
						b=0;
					}
					if(vitrihientai==(tempfor-1)) {
						a=5;
						b=1;
					}
					if(vitrihientai==(tempfor-2)) {
						a=4;
						b=2;
					}
					if(vitrihientai==(tempfor-3)) {
						a=3;
						b=3;
					}
					if(vitrihientai == 1 && vitrihientai == tempfor ) {
						a=0;
						b=0;
					}
					if(vitrihientai == 1 && vitrihientai == tempfor - 1 ) {
						a=0;
						b=1;
					}
					if(vitrihientai == 1 && vitrihientai == tempfor - 2 ) {
						a=0;
						b=2;
					}
					if(vitrihientai == 1 && vitrihientai == tempfor - 3 ) {
						a=0;
						b=3;
					}
					if(vitrihientai == 1 && vitrihientai == tempfor - 4 ) {
						a=0;
						b=4;
					}
					if(vitrihientai == 1 && vitrihientai == tempfor - 5 ) {
						a=0;
						b=5;
					}
					if(vitrihientai == 1 && vitrihientai == tempfor - 6 ) {
						a=0;
						b=6;
					}

			//-------------
					if(vitrihientai == 2 && vitrihientai == tempfor ) {
						a=1;
						b=0;
					}
					if(vitrihientai == 2 && vitrihientai == tempfor - 1 ) {
						a=1;
						b=1;
					}
					if(vitrihientai == 2 && vitrihientai == tempfor - 2 ) {
						a=1;
						b=2;
					}
					if(vitrihientai == 2 && vitrihientai == tempfor - 3 ) {
						a=1;
						b=3;
					}
					if(vitrihientai == 2 && vitrihientai == tempfor - 4 ) {
						a=1;
						b=4;
					}
					if(vitrihientai == 2 && vitrihientai == tempfor - 5 ) {
						a=1;
						b=5;
					}
					//-------------
							if(vitrihientai == 3 && vitrihientai == tempfor ) {
								a=2;
								b=0;
							}
							if(vitrihientai == 3 && vitrihientai == tempfor - 1 ) {
								a=2;
								b=1;
							}
							if(vitrihientai == 3 && vitrihientai == tempfor - 2 ) {
								a=2;
								b=2;
							}
							if(vitrihientai == 3 && vitrihientai == tempfor - 3 ) {
								a=2;
								b=3;
							}
							if(vitrihientai == 3 && vitrihientai == tempfor - 4 ) {
								a=2;
								b=4;
							}
							//-------------
							if(vitrihientai == 4 && vitrihientai == tempfor ) {
								a=3;
								b=0;
							}
							if(vitrihientai == 4 && vitrihientai == tempfor - 1 ) {
								a=3;
								b=1;
							}
							if(vitrihientai == 4 && vitrihientai == tempfor - 2 ) {
								a=3;
								b=2;
							}
							if(vitrihientai == 4 && vitrihientai == tempfor - 3 ) {
								a=3;
								b=3;
							}
							//-------------
							if(vitrihientai == 5 && vitrihientai == tempfor ) {
								a=4;
								b=0;
							}
							if(vitrihientai == 5 && vitrihientai == tempfor - 1 ) {
								a=4;
								b=1;
							}
							if(vitrihientai == 5 && vitrihientai == tempfor - 2 ) {
								a=4;
								b=2;
							}
							if(vitrihientai == 5 && vitrihientai == tempfor - 3 ) {
								a=4;
								b=3;
							}
							//-------------
							if(vitrihientai == 6 && vitrihientai == tempfor ) {
								a=5;
								b=0;
							}
							if(vitrihientai == 6 && vitrihientai == tempfor - 1 ) {
								a=5;
								b=1;
							}
							if(vitrihientai == 6 && vitrihientai == tempfor - 2 ) {
								a=5;
								b=2;
							}
							if(vitrihientai == 6 && vitrihientai == tempfor - 3 ) {
								a=5;
								b=3;
							}
					
					
					for (int i = vitrihientai-a; i <= vitrihientai+b; i++) {
						lreturn.add(i);
					}
					if(danhsach.isEmpty()) {
						lreturn.clear();
					}
					model.addAttribute("danhsach",danhsach.size());   // để ẩn thanh button trang khi danh sách trống
					model.addAttribute("trangdau",1);
					model.addAttribute("trangcuoi",tempfor);
					model.addAttribute("vitrihientai", vitrihientai);
					return lreturn;
				}
				
				
				// khi chọn button thì chạy cái này. lấy page xuất danh sách
				@RequestMapping(params = "phantrangbtn")
				public String danhmucpage(ModelMap model,@RequestParam("page")int page,@ModelAttribute("Tienganh")Sach Tienganh) {
					Session session = factory.getCurrentSession();
					String hql = "from Sach where madanhmuc = 'MDM004'";
					Query query = session.createQuery(hql);
					@SuppressWarnings("unchecked")
					List<Sach> list = query.list();
					vitrihientai = page;
					model.addAttribute("vitrihientai", vitrihientai);
					model.addAttribute("tienganhs", phantrangcntt(vitrihientai,list)); //hiện danh sách đã phân trang 10 item 1 trang
					model.addAttribute("listSoLuongTrang", listSoLuongTrang(list,model));// 
					return "Tienganh";
					
				}

}
