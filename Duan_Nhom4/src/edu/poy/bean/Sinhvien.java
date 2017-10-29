package edu.poy.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Departs")
public class Sinhvien {
	@Id
@Column(name="DepartId")
private String DepartId;
@Column(name="Name")	
private String Name;

public String getDepartId() {
	return DepartId;
}
public void setDepartId(String departId) {
	DepartId = departId;
}
public String getName() {
	return Name;
}
public void setName(String name) {
	Name = name;
}
public Sinhvien(String departId, String name) {
	super();
	DepartId = departId;
	Name = name;
}
public Sinhvien() {
	super();
}

}