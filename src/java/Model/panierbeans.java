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
public class panierbeans {
    private panier pan=new panier();
    private ArrayList<panier> paniers=new ArrayList<panier>();

    public panier getPan() {
        return pan;
    }

    public void setPan(panier pan) {
        this.pan = pan;
    }

    public ArrayList<panier> getPaniers() {
        return paniers;
    }

    public void setPaniers(ArrayList<panier> paniers) {
        this.paniers = paniers;
    }
    
    
}
