/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author YOUSFI
 */
public class operationproduit {
    
    private ArrayList<produit> prods =new ArrayList<produit>();

    public void setProds(ArrayList<produit> prods) {
        this.prods = prods;
    }
    
    public void addproduit(produit p){
        
         try {
             
            Class.forName("com.mysql.jdbc.Driver");
            
            java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestventes", "root", "");
            
            PreparedStatement pr = cn.prepareStatement("INSERT INTO produit(libelle,photo,prix,qts) VALUES(?,?,?,?)");
            pr.setString(1, p.getLiblet());
            pr.setString(2, p.getImg());
            pr.setDouble(3, p.getPrix());
            pr.setInt(4, p.getQuan());                  
            pr.execute();
        
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
         
 
    }
    
    
    
    public ArrayList getallproduit(){
        ArrayList<produit> prods = new ArrayList<produit>();
        try {
            //1
            Class.forName("com.mysql.jdbc.Driver");
            //2
            java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost/gestventes", "root", "");
            //3
            PreparedStatement pr=cn.prepareStatement("SELECT libelle,photo,prix,qts FROM produit;");
           
            //4
            ResultSet rs = pr.executeQuery();
            //5
            while(rs.next()){
                
                produit p= new produit();
                p.setQuan(rs.getInt("qts"));
                p.setLiblet(rs.getString("libelle"));
                p.setImg(rs.getString("photo"));
                p.setPrix(rs.getDouble("prix"));
            
                
                
                prods.add(p);
                
            }
            
         
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }

            return prods;
    }
    
    public ArrayList getproduit(String liblet){
        ArrayList<produit> prods = new ArrayList<produit>();
        try {
            //1
            Class.forName("com.mysql.jdbc.Driver");
            //2
            java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost/gestventes", "root", "");
            //3
            PreparedStatement pr=cn.prepareStatement("SELECT * FROM produit where libelle='"+liblet+"';");
            
            //4
            ResultSet rs = pr.executeQuery();
            //5
            while(rs.next()){
                
                produit p= new produit();
                p.setQuan(rs.getInt("qts"));
                p.setLiblet(rs.getString("libelle"));
                p.setImg(rs.getString("photo"));
                p.setPrix(rs.getDouble("prix"));
            
                prods.add(p);
                
                
                
            }
            
         
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }

            return prods;
    }
    
     public produit getproduitt(String liblet){
        produit prod = new produit();
        try {
            //1
            Class.forName("com.mysql.jdbc.Driver");
            //2
            java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost/gestventes", "root", "");
            //3
            PreparedStatement pr=cn.prepareStatement("SELECT * FROM produit where libelle='"+liblet+"';");
            
            //4
            ResultSet rs = pr.executeQuery();
            //5
            while(rs.next()){
                
                produit p= new produit();
                p.setQuan(rs.getInt("qts"));
                p.setLiblet(rs.getString("libelle"));
                p.setImg(rs.getString("photo"));
                p.setPrix(rs.getDouble("prix"));
            
              
                
                
                
            }
            
         
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }

            return prod;
    }
    
    
}
