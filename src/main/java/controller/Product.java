package controller;

public class Product {
	
	
	 int id;
	 String name;
	 int soluong;
	 public float dongia;
	 
	 
	 
	 public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	 
	 
	public Product(int id, String name, int soluong, float dongia) {
		super();
		this.id = id;
		this.name = name;
		this.soluong = soluong;
		this.dongia = dongia;
	}


	int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public float getDongia() {
		return dongia;
	}
	public void setDongia(float dongia) {
		this.dongia = dongia;
	}
	
	
}
