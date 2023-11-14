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
import log.LogDAO;

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
				dto.setP_stock(rs.getInt(5));
				dto.setP_brand(rs.getString(6));
				dto.setScentid(rs.getString(7));
				dto.setType(rs.getString(8));
				dto.setImage(rs.getString(9));
				dto.setTop(rs.getString(10));
				dto.setMid(rs.getString(11));
				dto.setBase(rs.getString(12));
				dto.setInfomation(rs.getString(13));
				dto.setP_ml(rs.getString(14));
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
	             "b.scentname AS base, b.scentcontent AS basecontent, p.information, p.productml " +
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
				dto.setPml(rs.getString(15));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dto;
	}
	
	public ArrayList<ProductDTO> getProductList() {
		ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
		String sql = "select * from product where productml='50ml'";
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				ProductDTO dto = new ProductDTO();
				dto.setP_id(rs.getString(1));
				dto.setP_kname(rs.getString(2));
				dto.setP_ename(rs.getString(3));
				dto.setP_price(rs.getInt(4));
				dto.setP_stock(rs.getInt(5));
				dto.setP_brand(rs.getString(6));
				dto.setScentid(rs.getString(7));
				dto.setType(rs.getString(8));
				dto.setImage(rs.getString(9));
				dto.setTop(rs.getString(10));
				dto.setMid(rs.getString(11));
				dto.setBase(rs.getString(12));
				dto.setInfomation(rs.getString(13));
				dto.setP_ml(rs.getString(14));
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	public ArrayList<ProductDTO> recommendlist(String type) {
		ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
		String sql = "select * from product where productml='50ml' and type=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, type);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				ProductDTO dto = new ProductDTO();
				dto.setP_id(rs.getString(1));
				dto.setP_kname(rs.getString(2));
				dto.setP_ename(rs.getString(3));
				dto.setP_price(rs.getInt(4));
				dto.setP_stock(rs.getInt(5));
				dto.setP_brand(rs.getString(6));
				dto.setScentid(rs.getString(7));
				dto.setType(rs.getString(8));
				dto.setImage(rs.getString(9));
				dto.setTop(rs.getString(10));
				dto.setMid(rs.getString(11));
				dto.setBase(rs.getString(12));
				dto.setInfomation(rs.getString(13));
				dto.setP_ml(rs.getString(14));
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
    	
    	String query = "select count(*) from product";
    	
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
	
	public List<ProductDTO> recommendmainList(String email) {
		List<ProductDTO> list = new ArrayList<ProductDTO>();
		String type = new LogDAO().recommendcate(email);
		String sql = "select * from product where productml='50ml' and type="+type;
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				ProductDTO dto = new ProductDTO();
				dto.setP_id(rs.getString(1));
				dto.setP_kname(rs.getString(2));
				dto.setP_ename(rs.getString(3));
				dto.setP_price(rs.getInt(4));
				dto.setP_stock(rs.getInt(5));
				dto.setP_brand(rs.getString(6));
				dto.setScentid(rs.getString(7));
				dto.setType(rs.getString(8));
				dto.setImage(rs.getString(9));
				dto.setTop(rs.getString(10));
				dto.setMid(rs.getString(11));
				dto.setBase(rs.getString(12));
				dto.setInfomation(rs.getString(13));
				dto.setP_ml(rs.getString(14));
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean addDIYProduct(ProductDTO dto) {
	      String sql = "insert into product values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	      
	      try {
	         psmt = con.prepareStatement(sql);
	         psmt.setString(1, dto.getP_id());
	         psmt.setString(2, dto.getP_kname());
	         psmt.setString(3, dto.getP_ename());
	         psmt.setInt(4, dto.getP_price());
	         psmt.setInt(5, dto.getP_stock());
	         psmt.setString(6, dto.getP_brand());
	         psmt.setString(7, dto.getScentid());
	         psmt.setString(8, dto.getP_ml());
	         psmt.setString(9, dto.getType());
	         psmt.setString(10, dto.getImage());
	         psmt.setString(11, dto.getTop());
	         psmt.setString(12, dto.getMid());
	         psmt.setString(13, dto.getBase());
	         psmt.setString(14, dto.getInfomation());
	         int rowsAffected = psmt.executeUpdate();
	         return rowsAffected > 0;
	         
	         
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      return false;
	   }
	
	public String findType(String scent) {
	      String type="";
	      String sql = "select category from scent where scentid = ?" ;
	      
	      try {
	         psmt = con.prepareStatement(sql);
	         psmt.setString(1, scent);
	         rs=psmt.executeQuery();
	         while(rs.next()) {
	            type = rs.getString(1);
	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      
	      
	      return type;
	   }

	
	public List<ProductDTO> selectProductInfo(Map<String, Object> map) {
    	
    	List<ProductDTO> bbs = new Vector<ProductDTO>();
    	
    	String query = "SELECT * FROM product where productml='50ml'";
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
    					dto.setP_stock(rs.getInt(5));
    					dto.setP_brand(rs.getString(6));
    					dto.setScentid(rs.getString(7));
    					dto.setType(rs.getString(8));
    					dto.setImage(rs.getString(9));
    					dto.setTop(rs.getString(10));
    					dto.setMid(rs.getString(11));
    					dto.setBase(rs.getString(12));
    					dto.setInfomation(rs.getString(13));
    					dto.setP_ml(rs.getString(14));
    				  
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
