<%-- 
    Document   : index
    Created on : 10 janv. 2020, 17:35:33
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
          <!-- Navigation -->
  
  <nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
    <div class="container">
      <a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="#">Fruits Shop</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav mx-auto">
          <li class="nav-item active px-lg-4">
            <a class="nav-link text-uppercase text-expanded" href="#">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item px-lg-4">
            <a class="nav-link text-uppercase text-expanded" href="login.jsp">vendor login</a>
          </li>
          <li class="nav-item px-lg-4">
            <a class="nav-link text-uppercase text-expanded" href="shoping.jsp">shoping</a>
          </li>
          
        </ul>
      </div>
    </div>
  </nav>
        
  <h1 class="site-heading text-center text-white d-none d-lg-block">
    <span class="site-heading-upper text-primary mb-3">wellcom to</span>
    <span class="site-heading-lower">FARMERS MARKET</span>
  </h1>



          <section class="page-section clearfix d-flex justify-content-center" >
    <!--<div class="container">-->
    
        <div >
            
                    <div class="intro-button mx-auto" >
            <a class="btn btn-primary btn-xl" href="prods">Start Shoping </a>
          </div>
                
                    
       <!--           
      <div class="intro" id="intro">
        <img style="width: 50% " src="template/img/s.jpg" alt="">
       <div class="intro-text left-0 text-center bg-faded p-5 rounded">
          <h2 class="section-heading mb-4">
            <span class="section-heading-upper">Fruits Shop</span>
            <span class="section-heading-lower">The best shop</span>
          </h2>
          <p class="mb-3">Your everyday morning routine shude be start with fruits. we think about you! we have fresh fruits with attractive prices. Start your shoping now.
          </p>
          
        </div>
       
       
      </div>
       -->
                   
    </div>
  </section>
<!--
  <section class="page-section cta" id="info">
    <div class="container">
      <div class="row">
        <div class="col-xl-9 mx-auto">
          <div class="cta-inner text-center rounded">
            <h2 class="section-heading mb-4">
              <span class="section-heading-upper">Our Promise</span>
              <span class="section-heading-lower">To You</span>
            </h2>
            <p class="mb-0">When you walk into our shop to start your day, we are dedicated to providing you with friendly service, a welcoming atmosphere, and above all else, excellent products. If you are not satisfied, please let us know and we will do whatever we can to make things right!</p>
          </div>
        </div>
      </div>
    </div>
  </section>
        
       --> 
        
        <%@include file="/include/footer.jsp" %>
    </body>
</html>
