package com.packt.webstore.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.packt.webstore.domain.Product;

public class ProductDao {
	JdbcTemplate template;   
	
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}   
	
	public int addProduct(Product p){    
	    String sql="insert into products(`idproducts`,`name`,`description`,`unitPrice`,`manufacturer`,`category`,`condition`,`unitsInStock`)" + " values('"+p.getProductId()+"','"+p.getName()+"','"+p.getDescription()+"','"+p.getUnitPrice()+"','"+p.getManufacturer()+"','"+p.getCategory()+"','"+p.getCondition()+"','"+p.getUnitsInStock()+"');";    
	    
	    return template.update(sql);    
	}  
	
	public int update(Product p){    
	    String sql="update products SET `name` = '"+p.getName()+"', `description` = '"+p.getDescription()+"', `unitPrice` = '"+p.getUnitPrice()+"', `manufacturer` = '"+p.getManufacturer()+"', `category` = '"+p.getCategory()+"', `condition` = '"+p.getCondition()+"', `unitsInStock` = '"+p.getUnitsInStock()+"' WHERE (`idproducts` = '"+p.getProductId()+"');";    
	    return template.update(sql);
	}    
	public int delete(String id){    
	    String sql="delete from products where idproducts='"+id+"'";    
	    return template.update(sql);    
	}    
	public Product getProductById(String id){    
	    String sql="select * from products where idproducts=?";    
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Product>(Product.class));    
	}    
	public List<Product> getAllProducts(){    
	    return template.query("select * from products",new RowMapper<Product>(){    
	        public Product mapRow(ResultSet rs, int row) throws SQLException {    
	        	Product p=new Product();    
	        	p.setProductId(rs.getString(1));
	        	p.setName(rs.getString(2));
	        	p.setDescription(rs.getString(3));
	        	p.setUnitPrice(rs.getBigDecimal(4));
	        	p.setManufacturer(rs.getString(5));
	        	p.setCategory(rs.getString(6));
	        	p.setCondition(rs.getString(7));
	        	p.setUnitsInStock(rs.getInt(8));
	            return p;   
	        }    
	    });    
	} 
	
	public List<Product> getNewProducts(){    
	    return template.query("select * from products limit 4",new RowMapper<Product>(){    
	        public Product mapRow(ResultSet rs, int row) throws SQLException {    
	        	Product p=new Product();    
	        	p.setProductId(rs.getString(1));
	        	p.setName(rs.getString(2));
	        	p.setDescription(rs.getString(3));
	        	p.setUnitPrice(rs.getBigDecimal(4));
	        	p.setManufacturer(rs.getString(5));
	        	p.setCategory(rs.getString(6));
	        	p.setCondition(rs.getString(7));
	        	p.setUnitsInStock(rs.getInt(8));
	            return p;   
	        }    
	    });    
	} 
	
	public List<Product> getProductsByCategory(String category){    
	    return template.query("select * from products where category='"+category+"'",new RowMapper<Product>(){    
	        public Product mapRow(ResultSet rs, int row) throws SQLException {    
	        	Product p=new Product();    
	        	p.setProductId(rs.getString(1));
	        	p.setName(rs.getString(2));
	        	p.setDescription(rs.getString(3));
	        	p.setUnitPrice(rs.getBigDecimal(4));
	        	p.setManufacturer(rs.getString(5));
	        	p.setCategory(rs.getString(6));
	        	p.setCondition(rs.getString(7));
	        	p.setUnitsInStock(rs.getInt(8));
	            return p;   
	        }    
	    });    
	}
	
	public int processOrder(Product p,long quantity){    
	    String sql="update products SET `unitsInStock` = '"+p.getUnitsInStock()+"' - "+ quantity + " WHERE (`idproducts` = '"+p.getProductId()+"');";    
	    return template.update(sql);
	}  
}
