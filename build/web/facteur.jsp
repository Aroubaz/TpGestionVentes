<%-- 
    Document   : facteur
    Created on : 14 janv. 2020, 23:45:01
    Author     : YOUSFI
--%>

<%@page import="Model.panier"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@include file="/include/css.jsp" %>
    </head>
    <body>
        
        
         <%
            ArrayList<panier> paniers= new ArrayList<panier>();
            if(request.getAttribute("paniers")!=null){
                paniers =(ArrayList<panier>) request.getAttribute("paniers"); 
            }/*else{
                operationproduit o=new operationproduit();
                pb=new produitbeans();
                pb.setProds(o.getallproduit());
            }*/
            
         %>
         
          <%
            Object nbp=request.getAttribute("prix");
          %>
         
         
        
         <h1 class="site-heading text-center text-white d-none d-lg-block">
    <span class="site-heading-upper text-primary mb-3"></span>
    <span class="site-heading-lower">Fruits Shop</span>
  </h1>
         
         
         
         

  <!-- Navigation -->
  
  <nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
    <div class="container">
        <a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="index.jsp">Fruits Shop</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav mx-auto">
          <li class="nav-item active px-lg-4">
            <a class="nav-link text-uppercase text-expanded" href="index.jsp">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item px-lg-4">
            <a class="nav-link text-uppercase text-expanded" href="login.jsp">vendor login</a>
          </li>
          <li class="nav-item px-lg-4">
            <a class="nav-link text-uppercase text-expanded" href="shoping.jsp">shoping</a>
          </li>
          <li class="nav-item px-lg-4">
            <a class="nav-link text-uppercase text-expanded" href="#info">info </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
        
  
  <section class="page-section cta">
      <div class="container">
        <div class="row">
          <div class="col-xl-9 mx-auto">
            <div class="cta-inner text-center rounded">
              <h2 class="section-heading mb-5">
                <span class="section-heading-upper"></span>
                <span class="section-heading-lower">PANEL</span>
              </h2>
              <ul class="list-unstyled list-hours mb-5 text-left mx-auto">
                  <li class="list-unstyled-item list-hours-item d-flex">
                    produit
                  <span class="ml-auto">prix</span>
                  <span class="ml-auto">quan</span>
                 <span class="ml-auto">total</span>
                  <span class="ml-auto"></span>
                </li>
                  
                   <%
                for(panier elem:paniers){
                    elem.getProd().getLiblet();
                    elem.getProd().getPrix();
                    elem.getQuan();
                
                
                
                    %>
                  
                <li class="list-unstyled-item list-hours-item d-flex">
                    <%= elem.getProd().getLiblet() %>
                  <span class="ml-auto"><%= elem.getProd().getPrix() %></span>
                  <span class="ml-auto"><%= elem.getQuan()%></span>
                 <span class="ml-auto"> <%= elem.getProd().getPrix()*elem.getQuan() %></span>
                  <span class="ml-auto"></span>
                </li>
                <% } %>
              </ul>
            
              <p class="mb-0">
                <small>
                  <em>Total</em>
                </small>
                <br>
                <%= nbp %>
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>
        
        
        
        
        <%@include file="/include/footer.jsp" %>
    </body>
</html>
