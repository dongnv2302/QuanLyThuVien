package edu.poly.controller;

import java.util.ArrayList;
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
import edu.poy.bean.Danhmuc;

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
	public List<DanhMucLoaiSach> getDanhMucLoaiSachs(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM DanhMucLoaiSach";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<DanhMucLoaiSach> list = query.list();
		model.addAttribute("dmlss", phantrangdmls(vitrihientai,list)); //hiện danh sách đã phân trang 10 item 1 trang
		model.addAttribute("listSoLuongTrang", listSoLuongTrang(list,model));// 
		return phantrangdmls(vitrihientai,list);
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
		model.addAttribute("dmlss", getDanhMucLoaiSachs(model));
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
		model.addAttribute("dmlss", getDanhMucLoaiSachs(model));
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
		model.addAttribute("dmlss", getDanhMucLoaiSachs(model));
		return "dmls";
	}

	@RequestMapping(params = "lnkEdit")
	public String edit(ModelMap model, @RequestParam("maloaisach") String maloaisach) {
		Session session = factory.getCurrentSession();
		DanhMucLoaiSach dmls = (DanhMucLoaiSach) session.get(DanhMucLoaiSach.class, maloaisach);
		model.addAttribute("dmls", dmls);
		return "dmls";
	}
	// phân 10 item trên 1 trang. phải có vị trí để tính xuất 10 item thứ bao nhiêu
				int vitrihientai=1;
				public List<DanhMucLoaiSach> phantrangdmls(int vitrihientai,List<DanhMucLoaiSach> danhsach) {	
			List<DanhMucLoaiSach> l = danhsach;
			List<DanhMucLoaiSach> lreturn = new ArrayList<>();
			//lay ra 10 item
			for (int i = (vitrihientai-1)*10 ; i < (vitrihientai)*10 ; i++) {
				try {
				lreturn.add(l.get(i));
				}catch(Exception e) {
					break;
				}
			};
					return lreturn;
				}
				
				// số lượng button bấm chuyển trang
				public List<Integer> listSoLuongTrang(List<DanhMucLoaiSach> danhsach,ModelMap model){
					List<Integer> lreturn = new ArrayList<>();
					double temp = Double.parseDouble(danhsach.size()+"")/10.0;
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
				public String danhmucpage(ModelMap model,@RequestParam("page")int page,@ModelAttribute("dmls")DanhMucLoaiSach dmls) {
					Session session = factory.getCurrentSession();
					String hql = "FROM DanhMucLoaiSach";
					Query query = session.createQuery(hql);
					@SuppressWarnings("unchecked")
					List<DanhMucLoaiSach> list = query.list();
					
					vitrihientai = page;
					
					
				
					model.addAttribute("vitrihientai", vitrihientai);
					
					model.addAttribute("dmlss", phantrangdmls(vitrihientai,list)); //hiện danh sách đã phân trang 10 item 1 trang
					model.addAttribute("listSoLuongTrang", listSoLuongTrang(list,model));// 
					return "dmls";
					
				}

			

}
