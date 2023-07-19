package com.dao;

public class fac_list {
private Integer id;
private String name;
private String contact;
fac_list(Integer i,String n,String c)
{
	id=i;
	name=n;
	contact=c;
}
public Integer getId() {
	return id;
}

public String getName() {
	return name;
}

public String getContact() {
	return contact;
}

@Override
public String toString() {
	return "fac_list [id=" + id + ", name=" + name + ", contact=" + contact + "]";
}

}
