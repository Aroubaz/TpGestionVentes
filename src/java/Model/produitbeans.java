/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.ArrayList;

/**
 *
 * @author YOUSFI
 */
public class produitbeans {
    private produit prod=new produit();
    private ArrayList<produit> prods=new ArrayList<produit>();

    public void setProd(produit prod) {
        this.prod = prod;
    }

    public void setProds(ArrayList<produit> prods) {
        this.prods = prods;
    }

    public produit getProd() {
        return prod;
    }

    public ArrayList<produit> getProds() {
        return prods;
    }
    
    
}
