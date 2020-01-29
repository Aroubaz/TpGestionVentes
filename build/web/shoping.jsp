<%-- 
    Document   : shoping
    Created on : 11 janv. 2020, 23:50:57
    Author     : YOUSFI
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Model.produit"%>
<%@page import="Model.operationproduit"%>
<%@page import="Model.produitbeans"%>

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
            produitbeans pb;
            if(request.getAttribute("model")!=null){
                pb =(produitbeans) request.getAttribute("model"); 
            }else{
                operationproduit o=new operationproduit();
                pb=new produitbeans();
                pb.setProds(o.getallproduit());
            }
            
         %>
         
         
         <%
            Object nbp=request.getAttribute("nbp");
            if (nbp==null)
            { nbp=0;}
            
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
            <a class="nav-link text-uppercase text-expanded" href="ajouterpanier?n2=ok">PANEL=<%= nbp%> </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <section class="page-section cta">
      <div class="container">
        <div class="row">
          <div class="col-xl-9 mx-auto">
            <div class=" text-center rounded">
              <h2 class="section-heading mb-5">
                <span class="section-heading-upper">ther is our fruits</span>
                <span class="section-heading-lower">Make your choice</span>
              </h2>
                  <table>
                   <%
                       int i = 0;
                Iterator<produit> list = pb.getProds().iterator();
                %> <tr><%
                while(list.hasNext()){
                    produit p=list.next();

                    if(i<3){
                      i++;
                        }else { %> 
                                 </tr> <tr>
                        <% i=1 ;}%>
                            <td>
                                <ul>
                            <li class="list-unstyled-item list-hours-item d-flex">
                                <img class="intro-img img-fluid mb-3 mb-lg-0 rounded" style="padding-left: 20% " src="template/img/<%=p.getImg()%>" alt=""> 
                          </li>


                        <li class="list-unstyled-item list-hours-item d-flex">

                          <%=p.getLiblet() %>
                          <span class="ml-auto"><%=p.getPrix()%> DA</span>
                         <!-- <span class="ml-auto"><%=p.getQuan()%></span>-->
                          <span class="ml-auto"><a style="color: black !important" href="ajouterpanier?n1=<%=p.getLiblet()%>">add to panel</a></span>
                        </li>
                                </ul>
                          </td>
                        <% }%>
         
                 
                  
                
                </table>
             
            </div>
          </div>
        </div>
      </div>
    </section>
       
         
          
        <!--<button type="submit" class="btn btn-primary btn-xl"><a href="/jee_tp/ajouterpanier?n2=ok">PANEL</a> </button>-->
        
        
        <%@include file="/include/footer.jsp" %>
        
        
    </body>
</html>
