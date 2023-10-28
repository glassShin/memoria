package product;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Vector;
import common.JDBCConnect;

public class ProductDAO extends JDBCConnect{
	PreparedStatement psmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	public ProductDAO() {
		con = getConnection();
	}
	
	public ProductDTO getproduct(String id) {
		ProductDTO dto = new ProductDTO();
		String sql = "select * from product where productid=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if(rs.next()) {
				dto.setP_id(rs.getString(1));
				dto.setP_kname(rs.getString(2));
				dto.setP_ename(rs.getString(3));
				dto.setP_price(rs.getInt(4));
				dto.setP_brand(rs.getString(5));
				dto.setScentid(rs.getString(6));
				dto.setType(rs.getString(7));
				dto.setImage(rs.getString(8));
				dto.setTop(rs.getString(9));
				dto.setMid(rs.getString(10));
				dto.setBase(rs.getString(11));
				dto.setInfomation(rs.getString(12));
				dto.setStock75ml(rs.getInt(13));
				dto.setStock50ml(rs.getInt(14));
				dto.setStock25ml(rs.getInt(15));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dto;
	}
	public ProductInfoDTO getproductInfo(String id) {
		ProductInfoDTO dto = new ProductInfoDTO();
		String sql = "SELECT p.productid, p.productkname, p.productEname, p.productprice, p.scentid, p.type, p.img, " +
	             "s.scentname AS top, s.scentcontent AS topcontent, " +
	             "m.scentname AS mid, m.scentcontent AS midcontent, " +
	             "b.scentname AS base, b.scentcontent AS basecontent, p.information, p.stock75ml, p.stock50ml, p.stock25ml " +
	             "FROM product p " +
	             "JOIN scent s ON p.top = s.scentid " +
	             "JOIN scent m ON p.mid = m.scentid " +
	             "JOIN scent b ON p.base = b.scentid " +
	             "WHERE p.productid = ?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if(rs.next()) {
				dto.setPid(rs.getString(1));
				dto.setKname(rs.getString(2));
				dto.setEname(rs.getString(3));
				dto.setPrice(rs.getInt(4));
				dto.setScentid(rs.getString(5));
				dto.setType(rs.getString(6));
				dto.setImg(rs.getString(7));
				dto.setTop(rs.getString(8));
				dto.setTopcontent(rs.getString(9));
				dto.setMid(rs.getString(10));
				dto.setMidcontent(rs.getString(11));
				dto.setBase(rs.getString(12));
				dto.setBasecontent(rs.getString(13));
				dto.setInfo(rs.getString(14));
				dto.setStock75(rs.getInt(15));
				dto.setStock50(rs.getInt(16));
				dto.setStock25(rs.getInt(17));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dto;
	}
	
	public ArrayList<ProductDTO> getProductList() {
		ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
		String sql = "select * from product";
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				ProductDTO dto = new ProductDTO();
				dto.setP_id(rs.getString(1));
				dto.setP_kname(rs.getString(2));
				dto.setP_ename(rs.getString(3));
				dto.setP_price(rs.getInt(4));
				dto.setP_brand(rs.getString(5));
				dto.setScentid(rs.getString(6));
				dto.setType(rs.getString(7));
				dto.setImage(rs.getString(8));
				dto.setTop(rs.getString(9));
				dto.setMid(rs.getString(10));
				dto.setBase(rs.getString(11));
				dto.setInfomation(rs.getString(12));
				dto.setStock75ml(rs.getInt(13));
				dto.setStock50ml(rs.getInt(14));
				dto.setStock25ml(rs.getInt(15));
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	public int productCount(Map<String, Object> map) {

    	int totalcount = 0;
    	
    	String query = "select count(*) from member";
    	
    	try {
    		stmt = con.createStatement();
    		rs = stmt.executeQuery(query);
    		rs.next();
    		totalcount = rs.getInt(1);
    		
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    	return totalcount;
    	
    }
    
    
    
	public List<ProductDTO> selectProductInfo(Map<String, Object> map) {
    	
    	List<ProductDTO> bbs = new Vector<ProductDTO>();
    	
    	String query = "SELECT * FROM product";
    	if (map.get("searchWord") != null) {
    	    query += " WHERE " + map.get("searchField") + " LIKE '%" + map.get("searchWord") + "%'";
    	}
    	query += " ORDER BY productid ASC";
    		  try {
    			  stmt = con.createStatement();
    			  rs = stmt.executeQuery(query);
    			  
    			  while (rs.next()) {
    				  ProductDTO dto = new ProductDTO();
    				  
    				  	dto.setP_id(rs.getString(1));
    					dto.setP_kname(rs.getString(2));
    					dto.setP_ename(rs.getString(3));
    					dto.setP_price(rs.getInt(4));
    					dto.setP_brand(rs.getString(5));
    					dto.setScentid(rs.getString(6));
    					dto.setType(rs.getString(7));
    					dto.setImage(rs.getString(8));
    					dto.setTop(rs.getString(9));
    					dto.setMid(rs.getString(10));
    					dto.setBase(rs.getString(11));
    					dto.setInfomation(rs.getString(12));
    					dto.setStock75ml(rs.getInt(13));
    					dto.setStock50ml(rs.getInt(14));
    					dto.setStock25ml(rs.getInt(15));
    				  
    				 bbs.add(dto);
    			  }
    		  } catch(Exception e) {
    			  e.printStackTrace();
    		  }
    		  return bbs;
    }

	
	public boolean deleteProduct(String id) {
		
		String sql = "DELETE FROM product WHERE productid = ?";

		try  {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, id);
			int rowsAffected = psmt.executeUpdate();
			return rowsAffected > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	
	public boolean addProduct(ProductDTO dto) {
		
		return false;
	}
	
	public void close() { 
		try {            
			if (rs != null) rs.close(); 
			if (stmt != null) stmt.close();
			if (psmt != null) psmt.close();
			if (con != null) con.close(); 

			System.out.println("JDBC 자원 해제");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

}
