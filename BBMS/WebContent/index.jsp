<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
.mySlides {display:none;}

input[type="text"], input[type="mail"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
}
</style>
</head>
<body>

<div class="header">
  <a href="#default" class="logo"><img class="logo" src="bb.gif"></a>
  <div class="header-right">
    <a class="active" href="index.jsp">Home</a>
    <a href="adminLogin.jsp">Admin Login</a>
  </div>
</div>

<div style="max-width:100%">
  <img class="mySlides"  src="pic1.jpg" >
  <img class="mySlides"  src="aa.jpg" >
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 5000); // Change image every 2 seconds
}
</script>


<body>
  <br>
 
   <% 
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
	%>
 <center><font color="red" size="5"> From Submitted ... You will be notified within 24 hours</font></center>
<% 
  }
  
  if("Invalid".equals(msg))
  {
	%>
<center><font color="red" size="5">Sorry! Some of your details was incorrect! Please try again.</font></center>
	<%
  }
  %>
 
 <center><h1> Enter Your Details To Request Blood</h1>
 <form action="indexFormAction.jsp" method="post">
 <input type="text" name="name" placeholder="Enter Name" required>
 <input type="text" name="mobilenumber" placeholder="Enter Mobile Number" required>
 <input type="mail" name="email" placeholder="Enter Email ID" required>
 <input type="text" name="bloodgroup" placeholder="Enter Blood Group" required>
 <button class="button1"><span>Submit</span></button>
 </form>
 </center>
 
 

  <br>
  <br>
  </div>
</div>

<div class="row1"> 
<div class="container"> 
<br>         
<br>
    </tbody>
  </table>
</div>
</div>

</body>
</html>

