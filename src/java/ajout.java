/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.operationproduit;
import Model.produit;
import java.io.InputStream;
import java.nio.file.Path;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Part;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FileUtils;

/**
 *
 * @author YOUSFI
 */
@WebServlet("/ajout")
@MultipartConfig(fileSizeThreshold=1024*1024*10, 	// 10 MB 
                 maxFileSize=1024*1024*50,      	// 50 MB
                 maxRequestSize=1024*1024*100)
public class ajout extends HttpServlet {
    
    operationproduit op=new operationproduit();

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
            
            String Liblet=(String)request.getParameter("liblet");
            String prix=(String)request.getParameter("prix");
            String quan=(String)request.getParameter("quan");
            String img=(String)request.getParameter("img");
            
            System.out.println("rani hna1");
            Part filePart = request.getPart("img");
            System.out.println("rani hna2");
            Path path = Paths.get(filePart.getSubmittedFileName());
            System.out.println("rani hna3");
            String fileName = path.getFileName().toString();
            System.out.println("rani hna4");
            InputStream fileContent = filePart.getInputStream();
            System.out.println("rani hna5");
            
            
            
            File targetFile=new File("C:\\Users\\aroubaz\\Documents\\NetBeansProjects\\jee_tp\\TpGestionVentes\\web\\template\\img\\"+fileName);
           System.out.println("rani hna6");
            FileUtils.copyInputStreamToFile(fileContent, targetFile);
		
		System.out.println("rani hna7");
	
            
            op.addproduit(new produit(Integer.parseInt(quan), Liblet, fileName, Double.parseDouble(prix)));
            request.setAttribute("suc", "Produit Ajouter");
            request.getRequestDispatcher("ajout.jsp").include(request, response); 
            
            
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
