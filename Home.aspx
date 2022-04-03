<%@ Page Title="" Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Learn__E.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  body {
    font: 400 15px/1.8 Lato, sans-serif;
    color: #777;
  }
  h3, h4 {
    margin: 10px 0 30px 0;
    letter-spacing: 10px;      
    font-size: 20px;
    color: #111;
  }
  .container {
    padding: 80px 120px;
  }
  .person {
    border: 10px solid transparent;
    margin-bottom: 25px;
    width: 80%;
    height: 80%;
    opacity: 0.7;
  }
  .person:hover {
    border-color: #f1f1f1;
  }
  .carousel-inner img {
    -webkit-filter: grayscale(90%);
    filter: grayscale(90%); /* make all photos black and white */ 
    width: 100%; /* Set width to 100% */
    margin: auto;
  }
  .carousel-caption h3 {
    color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
    background: #2d2d30;
    color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
    border-top-right-radius: 0;
    border-top-left-radius: 0;
  }
  .list-group-item:last-child {
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail p {
    margin-top: 15px;
    color: #555;
  }
  .btn {
    padding: 10px 20px;
    background-color: #333;
    color: #f1f1f1;
    border-radius: 0;
    transition: .2s;
  }
  .btn:hover, .btn:focus {
    border: 1px solid #333;
    background-color: #fff;
    color: #000;
  }
  .modal-header, h4, .close {
    background-color: #333;
    color: #fff !important;
    text-align: center;
    font-size: 30px;
  }
  .modal-header, .modal-body {
    padding: 40px 50px;
  }
  .nav-tabs li a {
    color: #777;
  }
  #googleMap {
    width: 100%;
    height: 400px;
    -webkit-filter: grayscale(100%);
    filter: grayscale(100%);
  }  
  .navbar {
    font-family: Montserrat, sans-serif;
    margin-bottom: 0;
    background-color: #2d2d30;
    border: 0;
    font-size: 11px !important;
    letter-spacing: 4px;
    opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
    color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
    color: #fff !important;
  }
  .navbar-nav li.active a {
    color: #fff !important;
    background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
  }
  .open .dropdown-toggle {
    color: #fff;
    background-color: #555 !important;
  }
  .dropdown-menu li a {
    color: #000 !important;
  }
  .dropdown-menu li a:hover {
    background-color: red !important;
  }
  footer {
    background-color: #2d2d30;
    color: #f5f5f5;
    padding: 32px;
  }
  footer a {
    color: #f5f5f5;
  }
  footer a:hover {
    color: #777;
    text-decoration: none;
  }  
  .form-control {
    border-radius: 0;
  }
  textarea {
    resize: none;
  }
  big{
      color: white;
      text-decoration-style:dashed;
  }
  </style>

<div id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <img src="/Icons/program.png" class="navbar-brand" href="#myPage" />
        <big>E-Learning </big>
          <a href="Login.aspx" class="btn btn-info" role="button" style="margin-right:9px;">Log In</a>
             <a href="registration.aspx" class="btn btn-info" role="button" >Register</a>
    </div>
    
     
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#myPage">HOME</a></li>
        <li><a href="#course">COURSES</a></li>
       <%-- <li><a href="#feedBack">FEEDBACK FORM</a></li>--%>
        <li><a href="#contact">CONTACT/ABOUT US</a></li>
       
       
       </ul>
    </div>
  </div>
</nav>
     </div>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="Images/copy.jpg" alt="learning" width="1200" height="700">
        <div class="carousel-caption">
          
          <p>E-learning, also referred to as online learning or electronic learning, is the acquisition of knowledge which takes place through electronic technologies and media. In simple language, e-learning is defined as “learning that is enabled electronically”. Typically, e-learning is conducted on the Internet, where students can access their learning materials online at any place and time.</p>
        </div>      
      </div>

      <div class="item">
        <img src="Images/copy1.jpg" alt="learning" width="1200" height="700">
        <div class="carousel-caption">
          <
          <p>E-learning, also referred to as online learning or electronic learning, is the acquisition of knowledge which takes place through electronic technologies and media. In simple language, e-learning is defined as “learning that is enabled electronically”. Typically, e-learning is conducted on the Internet, where students can access their learning materials online at any place and time.</p>
        </div>      
      </div>
    
      <div class="item">
        <img src="Images/copy2.jpg" alt="learning" width="1200" height="700">
        <div class="carousel-caption">
          
          <p>E-learning, also referred to as online learning or electronic learning, is the acquisition of knowledge which takes place through electronic technologies and media. In simple language, e-learning is defined as “learning that is enabled electronically”. Typically, e-learning is conducted on the Internet, where students can access their learning materials online at any place and time.</p>
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
    <!-- Container (The Band Section) -->
    
    <div id="course"class="container text-center">
  <h3><b>THE COURSES</b></h3>
  <p><em>GET TO LEARN..!!</em></p>
  <p>We have created an E-learning website for student. Enroll this subjects. Click images to see subject topics.</p>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <p><strong>RESEARCH MEHOD </strong></p><br>
         
      <img src="Images/research.png" class="img-circle" alt="RMCT" width="255" height="255">
             

    </div>
    <div class="col-sm-4">
      <p><strong>WEB SITE</strong></p><br>
      <img src="Images/wap.jpg" class="img-circle" alt="WAAP" width="255" height="255">
    </div>
    <div class="col-sm-4">
      <p><strong>HUMAN COMPUTER INFRASTRUCTUR</strong></p><br>
      <img src="Images/hci.jpg" alt="HCI" width="255" height="255">
    </div>
      <div class="col-sm-4"><br />
      <p><strong>DATA CENTER INFRASTRUCTURE</strong></p><br>
      <img src="Images/data.png" class="img-circle" alt="DCI" width="255" height="255">
    </div>
  </div>
</div>


<%--<!-- Container (Feedback Section) -->
<div id="#feedBack" >
  <div class="container">
    <form id="form2" runat="server" style="background-color:ivory; text-align:center; ">
    <h1><b>Feedback Form</b></h1>
    <p>We would love to hear your thoughts, suggestions, concerns or problems with anything so we can improve!</p>
    <br />    
    <small>Feedback Type</small><br />
    <asp:RadioButton ID="btnradio" runat="server" name="status" style= "margin:20px;" /> Comment
          <asp:RadioButton ID="btnradio1" runat="server" name="status" style= "margin:20px;" />Suggestion
          <asp:RadioButton ID="btnradio2" runat="server" name="status" style= "margin:20px;" /> Questions
          <br />
          <br />
          
          <textarea id="TextArea1" cols="50" rows="10" placeholder="Describe Your feedback here"></textarea><br /><br />
          <big><asp:Label ID="Label1" runat="server" Text="Label">Name</asp:Label></big><br />
          <asp:TextBox ID="txtbox" runat="server" placeholder="First Name" Width="156px"></asp:TextBox>
          <asp:TextBox ID="txtbox1" runat="server" placeholder="Last Name" style="margin-left: 20px;"></asp:TextBox>
          <br /><br />
           <asp:Label ID="Label2" runat="server" Text="Label" style="margin-right: 30px; " placeholder="Eg- Dinanath@gmail.com">Email: </asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Your Email" Width="240px" style="margin-right: 100px;" CssClass="col-xs-offset-0"></asp:TextBox>
          <br /><br />
          <asp:Button ID="btnSubmit" runat="server" Text="Submti" style="margin-right: 80px;"/>
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
         </form> 
    </div>

</div>--%>
   
<!-- Container (Contact Section) -->
<div id="contact" class="container ">
  <h3 class="text-center"><b>Contact</b></h3>
  <p class="text-center"><em>Things have changed. However not in education. Education isn't business, it's a human right !</em></p>

  <div class="row">
    <div class="col-md-4">
      <p>Fan? Drop a note.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>Kathmandu, NEPAL</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: 9803862135</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: Dinanath@gmail.com</p>
    </div>
    <div class="col-md-8">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
      <br>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn pull-right" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>

    <!-- Container (About Section) -->
 
    
     <h3  class="text-center"><b>ABOUT US</b></h3>
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">DinanathDahal</a></li>
    <li><a data-toggle="tab" href="#menu1">Amit Thakur</a></li>
    <li><a data-toggle="tab" href="#menu2">Prajwal Ghale</a></li>
  </ul>
  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h2>Dinanath Dahal, CEO</h2>
        <img src=".jpg" alt="sagar" />
      <b>I love playing games.</b>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h2>Amit Thakur, Manager</h2>
        <img src=".jpg" alt="amit" />
      <b>I'm a hungry loner.</b>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h2>Prajwal Ghale, Designer</h2>
        <img src=".jpg" alt="prajwal" />
      <b>Bigger in size.</b>
    </div>
  </div>
        </div>
         
        
        




<!-- Footer -->
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
     <div class="float-right d-none d-sm-inline">
      E-Learning Webiste<br />
        Published from: Kathmandu, Nepal<br />
        9803862135
        <a href="home.aspx"></a>
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2021-2022 <a href="home1.aspx">E-learning</a>.</strong> All rights reserved 
</footer>

<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
</script>
</asp:Content>
