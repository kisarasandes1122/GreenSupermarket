package com.DAO;

import com.entity.ProductDetails;

import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

public class ProductDAOImpl implements ProductDAO {
        private Connection conn;

        public ProductDAOImpl(Connection conn){
            super();
            this.conn = conn;
        }
    
    
        @Override
	public boolean addProduct(ProductDetails p) {
            
            boolean f = false;
            
            try{
                String sql = "insert into product(productName,productQuantity,productCategory,productPrice,status,productImg,email) values(?,?,?,?,?,?,?)";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, p.getProductName());
                ps.setString(2, p.getProductQuantity());
                ps.setString(3, p.getProductCategory());
                ps.setString(4, p.getProductPrice());
                ps.setString(5, p.getStatus());
                ps.setString(6, p.getProductImg());
                ps.setString(7, p.getEmail());
                
                int i = ps.executeUpdate();
                if (i==1){
                    f=true;
                }
            }
            
            catch (Exception e){
                e.printStackTrace();
            }
            
            return false;
	}


	@Override
	public List<ProductDetails> getAllProducts() {
            
            List<ProductDetails> list = new ArrayList<ProductDetails>();
             

            try {
                String sql="select * from product";
                PreparedStatement ps = conn.prepareStatement(sql);

                ResultSet rs = ps.executeQuery();
                while(rs.next())
                {
                    ProductDetails p=new ProductDetails();
                    p.setProductID(rs.getInt(1));
                    p.setProductName(rs.getString(2));
                    p.setProductQuantity(rs.getString(3));
                    p.setProductCategory(rs.getString(4));
                    p.setProductPrice(rs.getString(5));
                    p.setStatus(rs.getString(6));
                    p.setProductImg(rs.getString(7));
                    p.setEmail(rs.getString(8));
                    list.add(p);


                }
            }
            catch (Exception e){
                    e.printStackTrace();
            }
            
            
            return list;
         } 
    
        @Override
	public ProductDetails getProductById(int id) {
		
            ProductDetails p = null;
            
            try {
                String sql ="select * from product where productID=?";
                PreparedStatement ps= conn.prepareStatement(sql);
                ps.setInt(1, id);

                ResultSet rs=ps.executeQuery();
                while(rs.next())
                {
                    p = new ProductDetails();
                    p.setProductID(rs.getInt(1));
                    p.setProductName(rs.getString(2));
                    p.setProductQuantity(rs.getString(3));
                    p.setProductCategory(rs.getString(4));
                    p.setProductPrice(rs.getString(5));
                    p.setStatus(rs.getString(6));
                    p.setProductImg(rs.getString(7));
                    p.setEmail(rs.getString(8));   
                }
               
            }
            catch (Exception e){
                    e.printStackTrace();
            }
            
            return p;
	} 
        
        @Override
	public boolean updateEditProducts(ProductDetails p) {
            boolean f=false;
            try{
                String sql="update product set productName=?, productQuantity=?, productPrice=?, status=? where productID=?";        
                PreparedStatement ps= conn.prepareStatement(sql);
                ps.setString(1,p.getProductName());
                ps.setString(2,p.getProductQuantity());
                ps.setString(3,p.getProductPrice());
                ps.setString(4,p.getStatus());
                ps.setInt(5,p.getProductID());

                int i= ps.executeUpdate();
                if(i==1)
                {
                    f=true;
                }

            }catch (Exception e) {
                e.printStackTrace();
            }
            return f;
    }

    @Override
    public boolean deleteProducts(int id) {
        boolean f = false;

        try {
            String sql = "delete from product where productID=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }


    @Override
    public List<ProductDetails> getRecentProducts() {

            List<ProductDetails> list = new ArrayList<ProductDetails>();

            try {
                String sql = "select * from product where status=? order by productID DESC";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, "active");
                ResultSet rs = ps.executeQuery();
                int i = 1;
                while (rs.next() && i <= 8) {
                    ProductDetails p = new ProductDetails();
                    p.setProductID(rs.getInt(1));
                    p.setProductName(rs.getString(2));
                    p.setProductQuantity(rs.getString(3));
                    p.setProductCategory(rs.getString(4));
                    p.setProductPrice(rs.getString(5));
                    p.setStatus(rs.getString(6));
                    p.setProductImg(rs.getString(7));
                    p.setEmail(rs.getString(8));
                    list.add(p);
                    i++;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        return list;
    }

    @Override
    public List<ProductDetails> getVegetables() {
        List<ProductDetails> list = new ArrayList<ProductDetails>();

            try {
                String sql = "select * from product where productCategory=?";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, "vegetable");
                ResultSet rs = ps.executeQuery();
                int i = 1;
                while (rs.next()) {
                    ProductDetails p = new ProductDetails();
                    p.setProductID(rs.getInt(1));
                    p.setProductName(rs.getString(2));
                    p.setProductQuantity(rs.getString(3));
                    p.setProductCategory(rs.getString(4));
                    p.setProductPrice(rs.getString(5));
                    p.setStatus(rs.getString(6));
                    p.setProductImg(rs.getString(7));
                    p.setEmail(rs.getString(8));
                    list.add(p);

                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        return list;
    }

    @Override
    public List<ProductDetails> getFruits() {
        List<ProductDetails> list = new ArrayList<ProductDetails>();

            try {
                String sql = "select * from product where productCategory=?";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, "fruits");
                ResultSet rs = ps.executeQuery();
                int i = 1;
                while (rs.next()) {
                    ProductDetails p = new ProductDetails();
                    p.setProductID(rs.getInt(1));
                    p.setProductName(rs.getString(2));
                    p.setProductQuantity(rs.getString(3));
                    p.setProductCategory(rs.getString(4));
                    p.setProductPrice(rs.getString(5));
                    p.setStatus(rs.getString(6));
                    p.setProductImg(rs.getString(7));
                    p.setEmail(rs.getString(8));
                    list.add(p);

                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        return list;
    }

    @Override
    public List<ProductDetails> getMeat() {
        List<ProductDetails> list = new ArrayList<ProductDetails>();

            try {
                String sql = "select * from product where productCategory=?";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, "meats");
                ResultSet rs = ps.executeQuery();
                int i = 1;
                while (rs.next()) {
                    ProductDetails p = new ProductDetails();
                    p.setProductID(rs.getInt(1));
                    p.setProductName(rs.getString(2));
                    p.setProductQuantity(rs.getString(3));
                    p.setProductCategory(rs.getString(4));
                    p.setProductPrice(rs.getString(5));
                    p.setStatus(rs.getString(6));
                    p.setProductImg(rs.getString(7));
                    p.setEmail(rs.getString(8));
                    list.add(p);

                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        return list;
    }

    @Override
    public List<ProductDetails> getJuice() {
        List<ProductDetails> list = new ArrayList<ProductDetails>();

            try {
                String sql = "select * from product where productCategory=?";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, "juices");
                ResultSet rs = ps.executeQuery();
                int i = 1;
                while (rs.next()) {
                    ProductDetails p = new ProductDetails();
                    p.setProductID(rs.getInt(1));
                    p.setProductName(rs.getString(2));
                    p.setProductQuantity(rs.getString(3));
                    p.setProductCategory(rs.getString(4));
                    p.setProductPrice(rs.getString(5));
                    p.setStatus(rs.getString(6));
                    p.setProductImg(rs.getString(7));
                    p.setEmail(rs.getString(8));
                    list.add(p);

                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        return list;
    }

    @Override
    public List<ProductDetails> getSnack() {
        List<ProductDetails> list = new ArrayList<ProductDetails>();

            try {
                String sql = "select * from product where productCategory=?";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, "snacks");
                ResultSet rs = ps.executeQuery();
                int i = 1;
                while (rs.next()) {
                    ProductDetails p = new ProductDetails();
                    p.setProductID(rs.getInt(1));
                    p.setProductName(rs.getString(2));
                    p.setProductQuantity(rs.getString(3));
                    p.setProductCategory(rs.getString(4));
                    p.setProductPrice(rs.getString(5));
                    p.setStatus(rs.getString(6));
                    p.setProductImg(rs.getString(7));
                    p.setEmail(rs.getString(8));
                    list.add(p);

                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        return list;
    }

    @Override
    public List<ProductDetails> getBakery() {
        List<ProductDetails> list = new ArrayList<ProductDetails>();

            try {
                String sql = "select * from product where productCategory=?";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, "bakery");
                ResultSet rs = ps.executeQuery();
                int i = 1;
                while (rs.next()) {
                    ProductDetails p = new ProductDetails();
                    p.setProductID(rs.getInt(1));
                    p.setProductName(rs.getString(2));
                    p.setProductQuantity(rs.getString(3));
                    p.setProductCategory(rs.getString(4));
                    p.setProductPrice(rs.getString(5));
                    p.setStatus(rs.getString(6));
                    p.setProductImg(rs.getString(7));
                    p.setEmail(rs.getString(8));
                    list.add(p);

                }
            } catch (Exception e) {
                e.printStackTrace();
            }

            return list;

    }

    @Override
    public List<ProductDetails> searchProducts(String searchTerm) {
        List<ProductDetails> productList = new ArrayList<>();

        try {
            String sql = "SELECT * FROM product WHERE productName LIKE ? OR productCategory LIKE ?";
            try (PreparedStatement ps = conn.prepareStatement(sql)) {
                ps.setString(1, "%" + searchTerm + "%");
                ps.setString(2, "%" + searchTerm + "%");

                try (ResultSet rs = ps.executeQuery()) {
                    while (rs.next()) {
                        ProductDetails p = new ProductDetails();
                        p.setProductID(rs.getInt(1));
                        p.setProductName(rs.getString(2));
                        p.setProductQuantity(rs.getString(3));
                        p.setProductCategory(rs.getString(4));
                        p.setProductPrice(rs.getString(5));
                        p.setStatus(rs.getString(6));
                        p.setProductImg(rs.getString(7));
                        p.setEmail(rs.getString(8));
                        productList.add(p);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace(); // Handle the exception appropriately (e.g., log it)
        }

        return productList;

    }

        
        
        
    
}