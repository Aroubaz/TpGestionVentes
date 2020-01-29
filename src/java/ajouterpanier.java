/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.operationproduit;
import Model.panier;
import Model.panierbeans;
import Model.produit;
import org.apache.jasper.tagplugins.jstl.ForEach;

/**
 *
 * @author YOUSFI
 */
public class ajouterpanier extends HttpServlet {

    
    ArrayList<panier> paniers= new ArrayList<panier>(); 
    ArrayList<produit> prods= new ArrayList<produit>(); 
    operationproduit op= new operationproduit();
    int nbp=0;
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String liblet=request.getParameter("n1");
            String add=request.getParameter("n2");
            
            
         
         
             if(paniers.isEmpty()){
                 
                 prods=op.getproduit(liblet);
                
           
             for(produit elem: prods)
                
       {
           panier p=new panier(elem, 1);
            paniers.add(p);
            nbp++;
        request.setAttribute("nbp", nbp);
        request.getRequestDispatcher("/prods").include(request, response);
         
       }
                 
             }else{
                 boolean f=false;
                 for(panier el: paniers){
                      if((el.getProd().getLiblet()).equals(liblet)){
                          f=true;
                      }
                 }
                 if(f==true){
                 for(panier ele: paniers)
               {
              if((ele.getProd().getLiblet()).equals(liblet)){     
               ele.setQuan(ele.getQuan()+1);
               	out.print(paniers.size());
                nbp++;
                 request.setAttribute("nbp", nbp);
        request.getRequestDispatcher("/prods").include(request, response);
              }
           }}
           else{
               prods=op.getproduit(liblet);
           
             for(produit elem: prods)
                
       {
            panier p=new panier(elem, 1);
            paniers.add(p);
            nbp++;
        request.setAttribute("nbp", nbp);
        request.getRequestDispatcher("/prods").include(request, response);
        
         
       }
           }
         
       }
             
              
             
             
             double prix=0.0;   
            if(add.equals("ok")){
                 for(panier ele: paniers)
               {
                 
               
                out.print("quan="+ele.getQuan()+" liblet="+ele.getProd().getLiblet()+" size="+paniers.size()+"-----icrquan");
              out.println(prix+=(ele.getProd().getPrix()*ele.getQuan()));
              
              
               }
                 
                 
                  request.setAttribute("paniers", paniers);
                  request.setAttribute("prix", prix);
                  request.getRequestDispatcher("facteur.jsp").forward(request, response);
                 
                 paniers.clear();
                 nbp=0;
            }
             
            
             
             
           
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
