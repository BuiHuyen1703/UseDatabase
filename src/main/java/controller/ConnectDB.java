package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.mysql.cj.xdevapi.PreparableStatement;

public class ConnectDB {
	private Connection conn;
	String path ="jdbc:mysql://localhost:3306/quanlysp";
	
	public ConnectDB() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			this.conn=DriverManager.getConnection(path,"root","");
			
		} catch (Exception e) {
			Logger.getLogger(ConnectDB.class.getName()).log(Level.SEVERE,null,e);
		}
	}
	
	public ResultSet getData() {
		Statement st = null;
		ResultSet re= null;
		try {
			st= conn.createStatement();
			String sql = "select*from sanpham";
			re=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return re;
	}
	
	public void inDL() {
		ConnectDB ob = new ConnectDB();
		ResultSet rs = ob.getData();
		try {
			while(rs.next()) {
				System.out.println("ID"+ rs.getInt(1)+"Ten sp"+ rs.getString(2)+"So luong"+rs.getInt(3)+"Don gia"+rs.getFloat(4));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public int insertdata(int id, String name, int quantity, float cost) {
		int chen =-1;
		String sql = "insert into sanpham(id, tensp, soluong, dongia) values(?,?,?,?)";
		try {
			PreparedStatement pp = conn.prepareStatement(sql);
			pp.setInt(1,id);
			pp.setString(2, name);
			pp.setInt(3, quantity);
			pp.setFloat(4, cost);
			chen= pp.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			Logger.getLogger(ConnectDB.class.getName()).log(Level.SEVERE,null,e);
		}
		return chen;
	}
	
	public void delete(int id) {
		String sql ="delete from sanpham where id=? ";
		PreparedStatement pp=null;
		try {
			pp = conn.prepareStatement(sql);
			pp.setInt(1, id);
			pp.execute();
		} catch (Exception e) {
			Logger.getLogger(ConnectDB.class.getName()).log(Level.SEVERE,null,e);
		}
	}
	
	public ResultSet find(int id) {
		String sql ="select * from sanpham where id like ? ";
		PreparedStatement pp=null;
		ResultSet re=null;
		try {
			pp = conn.prepareStatement(sql);
			pp.setInt(1, id);
			re= pp.executeQuery();
		} catch (Exception e) {
			Logger.getLogger(ConnectDB.class.getName()).log(Level.SEVERE,null,e);
		}
		
		return re;
	}
	
	public void update(int id, Product newproduct ) {
		String sql ="update sanpham set tenSp=?, soluong=?, dongia=? where id=? ";
		PreparedStatement pp= null;
		try {
			pp= conn.prepareStatement(sql);
			pp.setString(1, newproduct.getName());
			pp.setInt(2, newproduct.getSoluong());
			pp.setFloat(3, newproduct.getDongia());
			pp.setInt(4, id);
			pp.execute();
		} catch (SQLException e) {
			Logger.getLogger(ConnectDB.class.getName()).log(Level.SEVERE,null,e);
		}
	}
	
	public static void main(String[] args) {
		ConnectDB kn = new ConnectDB();
		ResultSet kq= kn.getData();
		
		try {
			while(kq.next()) {
				System.out.println("Ma sp :"+kq.getInt(1)+"Ten sp" +kq.getString(2)+"so luong:" +kq.getInt(3)+"don gia:" +kq.getFloat(4));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
}
