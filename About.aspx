<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
                <link rel="SHORTCUT ICON" href="images/5.5.jpg">
    <title>About</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

        <style type="text/css">
nav {
opacity: 0.5;
filter: alpha(opacity=50); 
}
    body {
      height: 600px;
    }
    .dot {
      width: 2px;
      height: 2px;
      background-color: black;
      position: absolute;
    }
 
    </style>
</head>
<body>
    <script>
        (function () {
            "use strict";

            document.onmousemove = handleMouseMove;
            setInterval(getMousePosition, 100); // setInterval repeats every X ms
            function handleMouseMove(event) {
                var dot, eventDoc, doc, body, pageX, pageY;

                event = event || window.event; // IE-ism

                // If pageX/Y aren't available and clientX/Y
                // are, calculate pageX/Y - logic taken from jQuery
                // Calculate pageX/Y if missing and clientX/Y available
                if (event.pageX == null && event.clientX != null) {
                    eventDoc = (event.target && event.target.ownerDocument) || document;
                    doc = eventDoc.documentElement;
                    body = eventDoc.body;

                    event.pageX = event.clientX +
                      (doc && doc.scrollLeft || body && body.scrollLeft || 0) -
                      (doc && doc.clientLeft || body && body.clientLeft || 0);
                    event.pageY = event.clientY +
                      (doc && doc.scrollTop || body && body.scrollTop || 0) -
                      (doc && doc.clientTop || body && body.clientTop || 0);
                }

                // Add a dot to follow the cursor
                dot = document.createElement('div');
                dot.className = "dot";
                dot.style.left = event.pageX + "px";
                dot.style.top = event.pageY + "px";
                document.body.appendChild(dot);
            }
        })();
</script>
       <p>
           <br />
       </p>
       <p>
           &nbsp;</p>
      <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ambulence For Sure</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li><a href="Default.aspx">Home</a></li>
        <li><a href="About.aspx">About</a></li>
        <li><a href="Contact.aspx">Contact</a></li>
        <li><a href="ChatDefault.aspx">ChatRoom</a></li>  
        <li><a runat="server" href="Registration.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Register</a></li>
        <li><a runat="server" href="login.aspx">Log in</a></li>
        </ul>
    </div>
  </div>
</nav>
<form id="form1" runat="server">
           <div>
               <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;About.</h2>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The basic Purpose of the App is to reduce the arrival time of Ambulences.</h3>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; In Pakistan, many people die due to delayed medical attention. 
One of the most important reason for this delay is Ambulances which rarely reach on time. This location based app will 
aggregate &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ambulance providers(hospitals,Govt. agencies, private providers etc.). Upon use, it will pick nearest available 
ambulance and assign the driver, a shortest possible route to reach out to the person in &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;need and take patient to nearest 
hospital. The app will assign the driver ,nearest hospital & it's route based on patient's problem & condition. 
This app will also alert hospital staffs so that they are ready &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;with all the necessary formalities & equipment before the 
patient reaches hospital</p>
                <div class="container body-content"> 
            <hr />
                    <footer>
                        <p>&copy; <%: DateTime.Now.Year %> - Emergency Rescue App</p>
            </footer>
        </div>
 
    </div>
    </form>
</body>
</html>
