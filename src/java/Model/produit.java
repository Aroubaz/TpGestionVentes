/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author YOUSFI
 */
public class produit {
    private int id,quan;
    private String liblet,img;
    private double prix;

    public produit(int quan, String liblet, String img, double prix) {
        this.quan = quan;
        this.liblet = liblet;
        this.img = img;
        this.prix = prix;
    }

    public produit() {
    }

    public int getQuan() {
        return quan;
    }

    public String getLiblet() {
        return liblet;
    }

    public String getImg() {
        return img;
    }

    public double getPrix() {
        return prix;
    }

    public void setQuan(int quan) {
        this.quan = quan;
    }

    public void setLiblet(String liblet) {
        this.liblet = liblet;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }
    
}
