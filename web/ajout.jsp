<%-- 
    Document   : ajout
    Created on : 11 janv. 2020, 23:01:36
    Author     : YOUSFI
--%>

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
            Object suc;
            if(request.getAttribute("suc")!=null){
                suc =request.getAttribute("suc"); 
            }else{
                suc="";
            }
            
          %>
       
  <h1 class="site-heading text-center text-white d-none d-lg-block">
    <span class="site-heading-upper text-primary mb-3">Add Product</span>
    <span class="site-heading-lower">Fruits Shop</span>
  </h1>
        
        
        <!-- Navigation -->
  
  <nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
    <div class="container">
      <a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="#">Fruits SHOP</a>
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

        
         
        </ul>
      </div>
    </div>
  </nav>

        
        
        
        
        
        
        <section class="page-section cta">
      <div class="container">
        <div class="row">
          <div class="col-xl-9 mx-auto">
            <div class="cta-inner text-center rounded">
                
                
                 <div class="card">
<article class="card-body">
    <h4 class="card-title "><%= suc%></h4>
	<h4 class="card-title text-center mb-4 mt-1">Add product</h4>
	<form action="ajout" method="post" enctype="multipart/form-data" >
            
	<div class="form-group">
	<div class="input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
		<input  class="form-control" placeholder="Liblet" type="text" name="liblet">
	</div> <!-- input-group.// -->
	</div> <!-- form-group// -->
        
        <div class="form-group">
	<div class="input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
            <input  class="form-control" placeholder="Price" type="number" name="prix">
                <input  class="form-control" placeholder="Quantité" type="number" name="quan">
	</div> <!-- input-group.// -->
	</div> <!-- form-group// -->
        
      
        
        
        <div class="form-group">
	<div class="input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
                <label class="form-control">Image</label>
                
                <input  class="btn btn-primary btn-block"  type="file" name="img" >
                 <!--<a class="btn btn-primary btn-xl" >Start Shoping </a>-->
                
	</div> <!-- input-group.// -->
	</div> <!-- form-group// -->
        
	
	<div class="form-group">
	<button type="submit" class="btn btn-primary btn-xl"> Add  </button>
	</div> <!-- form-group// -->
	
	</form>
</article>
</div>
               
                
                
                
            </div>
          </div>
        </div>
      </div>
    </section> 
        
        
        
          <%@include file="/include/footer.jsp" %>
        
    </body>
</html>
