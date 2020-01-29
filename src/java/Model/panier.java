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
public class panier {
    private produit prod;
    private int quan;

    public produit getProd() {
        return prod;
    }

    public void setProd(produit prod) {
        this.prod = prod;
    }

    public int getQuan() {
        return quan;
    }

    public void setQuan(int quan) {
        this.quan = quan;
    }

    public panier() {
    }

    public panier(produit prod, int quan) {
        this.prod = prod;
        this.quan = quan;
    }
    
    
    
    
}
