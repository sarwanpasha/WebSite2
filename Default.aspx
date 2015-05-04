<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
                <link rel="SHORTCUT ICON" href="images/5.5.jpg">
  <title>Emergency Rescue App</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <style type="text/css">

.buttonclass
{
padding-left: 10px;
}
.buttonclass:hover
{
color: white;
background-color:grey;
}
            #slider {
   background: #000;
   border: 5px solid #eaeaea;
   box-shadow: 1px 1px 5px rgba(0,0,0,0.7);
   height: 340px;
   width: 500px;
   margin: 40px auto 0;
   overflow: visible;
   position: relative;
}
            #mask {
   overflow: hidden;
   height: 320px;
}
            #slider ul {
   margin: 0;
   padding: 0;
   position: relative;
}

#slider li {
   height: 400px;
   width: 500px;
   position: absolute;
   top: -400px; /* Original Position - Outside of the Slider */
   list-style: none;
}
#slider li.firstanimation {
   animation: cycle 25s linear infinite;
}

#slider li.secondanimation {
   animation: cycletwo 25s linear infinite;
}

#slider li.thirdanimation {
   animation: cyclethree 25s linear infinite;
}

#slider li.fourthanimation {
   animation: cyclefour 25s linear infinite;
}

#slider li.fifthanimation {
   animation: cyclefive 25s linear infinite;
}
@keyframes cycle {
   0%  { top: 0px; } /* When you start the slide, the first image is already visible */
   4%  { top: 0px; } /* Original Position */
   16% { top: 0px; opacity:1; z-index:0; } /* From 4% to 16 % = for 3 seconds the image is visible */
   20% { top: 325px; opacity: 0; z-index: 0; } /* From 16% to 20% = for 1 second exit image */
   21% { top: -325px; opacity: 0; z-index: -1; } /* Return to Original Position */
   92% { top: -325px; opacity: 0; z-index: 0; }
   96% { top: -325px; opacity: 0; } /* From 96% to 100% = for 1 second enter image*/
   100%{ top: 0px; opacity: 1; }
}

@keyframes cycletwo {
   0%  { top: -325px; opacity: 0; } /* Original Position */
   16% { top: -325px; opacity: 0; }/* Starts moving after 16% to this position */
   20% { top: 0px; opacity: 1; }
   24% { top: 0px; opacity: 1; }  /* From 20% to 24% = for 1 second enter image*/
   36% { top: 0px; opacity: 1; z-index: 0; }   /* From 24% to 36 % = for 3 seconds the image is visible */
   40% { top: 325px; opacity: 0; z-index: 0; } /* From 36% to 40% = for 1 second exit image */
   41% { top: -325px; opacity: 0; z-index: -1; }   /* Return to Original Position */
   100%{ top: -325px; opacity: 0; z-index: -1; }
}

@keyframes cyclethree {
   0%  { top: -325px; opacity: 0; }
   36% { top: -325px; opacity: 0; }
   40% { top: 0px; opacity: 1; }
   44% { top: 0px; opacity: 1; }
   56% { top: 0px; opacity: 1; }
   60% { top: 325px; opacity: 0; z-index: 0; }
   61% { top: -325px; opacity: 0; z-index: -1; }
   100%{ top: -325px; opacity: 0; z-index: -1; }
}

@keyframes cyclefour {
   0%  { top: -325px; opacity: 0; }
   56% { top: -325px; opacity: 0; }
   60% { top: 0px; opacity: 1; }
   64% { top: 0px; opacity: 1; }
   76% { top: 0px; opacity: 1; z-index: 0; }
   80% { top: 325px; opacity: 0; z-index: 0; }
   81% { top: -325px; opacity: 0; z-index: -1; }
   100%{ top: -325px; opacity: 0; z-index: -1; }
}
@keyframes cyclefive {
   0%  { top: -325px; opacity: 0; }
   76% { top: -325px; opacity: 0; }
   80% { top: 0px; opacity: 1; }
   84% { top: 0px; opacity: 1; }
   96% { top: 0px; opacity: 1; z-index: 0; }
   100%{ top: 325px; opacity: 0; z-index: 0; }
}
.progress-bar {
   position: relative;
   top: 19px;
   width: 510px;
   height: 8px;
   background: #FFFFFF; 
   animation: fullexpand 25s ease-out infinite;
   left: -4px;
        }
@keyframes fullexpand {
   /* In these keyframes, the progress-bar is stationary */
   0%, 20%, 40%, 60%, 80%, 100% { width: 0%; opacity: 0; }

   /* In these keyframes, the progress-bar starts to come alive */
   4%, 24%, 44%, 64%, 84% { width: 0%; opacity: 0.3; }

   /* In these keyframes, the progress-bar moves forward for 3 seconds */
   16%, 36%, 56%, 76%, 96% { width: 100%; opacity: 0.7; }

   /* In these keyframes, the progress-bar has finished his path */
   17%, 37%, 57%, 77%, 97% { width: 100%; opacity: 0.3; }

   /* In these keyframes, the progress-bar will disappear and then resume the cycle */
   18%, 38%, 58%, 78%, 98% { width: 100%; opacity: 0; }
}
#slider .tooltip {
   background: rgba(0,0,0,0.7);
   width: 300px;
   height: 60px;
   position: relative;
   bottom: 75px;
   left: -320px;
}

#slider .tooltip h1 {
   color: #fff;
   font-size: 24px;
   font-weight: 300;
   line-height: 60px;
   padding: 0 0 0 10px;
}
#slider .tooltip {
…
   transition: all 0.3s ease-in-out;
}

#slider li#first: hover .tooltip,
#slider li#second: hover .tooltip,
#slider li#third: hover .tooltip,
#slider li#fourth: hover .tooltip,
#slider li#fifth: hover .tooltip {
   left: 0px;
}
#slider: hover li,
#slider: hover .progress-bar {
   animation-play-state: paused;

   #container {
    width: 100px;
    height: 100px;
    position: relative;
}

#navi, 
#infoi {
    width: 100%;
    height: 100%;
    position: absolute;
    top: 100;
    left: 100;
}

#infoi {
    z-index: 10;
}
text {
  stroke-dasharray: 1000;
  stroke-dashoffset: 1000;
  -webkit-animation: draw 8s forwards;
}
@-webkit-keyframes draw {
  100% {
    stroke-dashoffset: 0;
  }
}
text {
  stroke-dasharray: 1000;
  stroke-dashoffset: 1000;
  -webkit-animation: draw 8s forwards;
  -moz-animation: draw 8s forwards;
  -o-animation: draw 8s forwards;
  -ms-animation: draw 8s forwards;
  animation: draw 8s forwards;
}
@-webkit-keyframes draw {
  100% {
    stroke-dashoffset: 0;
  }
}
@-moz-keyframes draw {
  100% {
    stroke-dashoffset: 0;
  }
}
@-o-keyframes draw {
  100% {
    stroke-dashoffset: 0;
  }
}
@-ms-keyframes draw {
  100% {
    stroke-dashoffset: 0;
  }
}
@keyframes draw {
  100% {
    stroke-dashoffset: 0;
  }
}
video#bgvid {
position: fixed; right: 0; bottom: 0;

min-width: 100%; min-height: 100%;

width: auto; height: auto; z-index: -100;

background: url(images/design6.jpg) no-repeat;

background-size: cover;

}
#bgImg{ 
    position: absolute;
    top: 0;
    left: 0;
    border: 0;
    z-index: 1;
    width: 10000px;
    height:10000px;
}

#bgVideo{ 
    position: absolute;
    top: 0;
    left: 0;
    border: 0;
    z-index: 2;
    width: 10000%;
    height: 10000%;
}

#bodyDummy{ 
    position: absolute;
    top: 0;
    left: 0;
    z-index: 3;
    overflow: auto;
    width: 100%;
    height: 100%;
}
#container {
    width: 100px;
    height: 100px;
    position: relative;
}

#navi, 
#infoi {
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0;
    left: 0;
}

#infoi {
    z-index: 10;
}
}

</style>
    <style type="text/css">
        #Text1 {
            height: 197px;
            width: 425px;
        }
        #TextArea1 {
            height: 310px;
            width: 424px;
        }
    </style>
    <script type="text/javascript">
        $(function () {
            var f = $("#<%=hfPosition.ClientID%>");
        window.onload = function () {
            var position = parseInt(f.val());
            if (!isNaN(position)) {
                $(window).scrollTop(position);
            }
        };
        window.onscroll = function () {
            var position = $(window).scrollTop();
            f.val(position);
        };
        });

</script>


</head>
 
<body style="background-image:url(images/image_7.1.jpg)">


  <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Emergency Rescue App</a>
    </div>
   <div>
      <ul class="nav navbar-nav">
        <li><a href="Default.aspx">Home</a></li>
        <li><a href="About.aspx">About</a></li>
        <li><a href="Contact.aspx">Contact</a></li>
        <li><a href="ChatDefault.aspx">ChatRoom</a></li>  
        <li><a runat="server" href="Registration.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Register</a></li>
        <li><a id="logIn" runat="server" href="login.aspx">Log in</a></li>
        </ul>
    </div> 
  </div> 
</nav>   
<form id="form1" runat="server" >

    <div>        

           <asp:HiddenField runat="server" ID="hfPosition" Value="" />

              <div style="background-image:url(images/design6.jpg)"> 
 
                   
   <!--   <h1 style="color:brown;"">
                                &nbsp;Welcome To Emergency Rescue App!!&nbsp;&nbsp;&nbsp; <img src="images/cool.gif" alt="Lions"/>

    </h1> -->
            <asp:Label ID="LbTech" runat="server" Text="Tech News" ></asp:Label>
&nbsp;<marquee> 
           <div style="background-color:white;">
          
     <asp:Label runat="server" ID="lblAnything" Text="" style="color:green;"></asp:Label>
                </div></marquee>
        <asp:Label ID="LbPost" runat="server" Text="Post a tech News:"></asp:Label>
&nbsp;
        <asp:TextBox ID="tbpost" runat="server" BorderColor="Black" BorderWidth="3"></asp:TextBox>
&nbsp;
        <asp:Button ID="btnpost" runat="server" Text="Post >>" OnClick="btnpost_Click" class="buttonclass"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbname" runat="server"></asp:Label>
          

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnout" runat="server" OnClick="btnout_Click" Text="Sigout" Visible="False" onclientclick="document.forms[1].target ='_blank';" class="buttonclass"/>
    <svg width="1000"; height="100">
  <text x="100" y="80" fill="none" stroke="brown" stroke-width="3" font-size="50"  stroke-dasharray="1000"
  stroke-dashoffset="1000" >Welcome To Emergency Rescue App!!
  <animate attributeName="stroke-dashoffset"
    from="1000"
    to="0" 
    dur="20s"
      fill="freeze">
      </animate> </text>
</svg>      


             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="container" >

   <div id="content-slider" style="height: 373px; width: 1254px">
      <div id="slider">  <!-- Slider container -->
         <div id="mask">  <!-- Mask -->

         <ul>
         <li id="first" class="firstanimation">  <!-- ID for tooltip and class for animation -->
         <a href="#"> <img src="images/1.1.jpg" alt="Cougar"/> </a>
         <div class="tooltip"> <h1></h1> </div>
         </li>

         <li id="second" class="secondanimation">
         <a href="#"> <img src="images/2.2.jpg" alt="Lions"/> </a>
         <div class="tooltip"> <h1></h1> </div>
         </li>

         <li id="third" class="thirdanimation">
         <a href="#"> <img src="images/3.3.jpg" alt="Snowalker"/> </a>
         <div class="tooltip"> <h1></h1> </div>
         </li>

         <li id="fourth" class="fourthanimation">
         <a href="#"> <img src="images/4.4.jpg" alt="Howling"/> </a>
         <div class="tooltip"> <h1></h1> </div>
         </li>

         <li id="fifth" class="fifthanimation">
         <a href="#"> <img src="images/5.5.jpg" alt="Sunbathing"/> </a>
         <div class="tooltip"> <h1></h1> </div>
         </li>
         </ul>

         </div>  <!-- End Mask -->
         <div class="progress-bar"></div>  <!-- Progress Bar -->
      </div>  <!-- End Slider Container -->
   </div>
</div>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
            </div>
        &nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
          <div>
   <Body  style="background-color:lightblue;">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <br />
       <div style="background-image:url(images/cn1.png)">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbwho" runat="server" Text="Who We Are!!"></asp:Label>
           <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Label ID="Lb2" runat="server" 
             Text="................................................................................................................................................................................................"></asp:Label> 
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

             
            <br />

             
            <p id="aa">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="Offers" runat="server" OnClick="Offers_Click" Text="What We Offer"  class="buttonclass" onmouseover="bigImg(this)" onmouseout="normalImg(this)"/>
                    <script>
                        function bigImg(x) {
                            //    x.style.height = "64px";
                            //   x.style.width = "64px";
                            document.getElementById("theDiv").style.visibility = "hidden";
                        }

                        function normalImg(x) {
                            //  x.style.height = "32px";
                            // x.style.width = "32px";
                            document.getElementById("theDiv").style.visibility = "visible";
                        }
                        </script>
 <style>
p.pos_fixed {
    position: fixed;
    top: 980px;
    right: 500px;
    color: red;
}
     #navi {
         height: 112px;
     }
 </style>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button9" runat="server" Text="How IT Works" OnClick="Button9_Click"  class="buttonclass" onmouseover="bigImg(this)" onmouseout="normalImg(this)"/>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button10" runat="server" Text="Blog" OnClick="Button10_Click" class="buttonclass"  onmouseover="bigImg(this)" onmouseout="normalImg(this)"/>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btncontact" runat="server" Text="Contact" OnClick="Button11_Click"  class="buttonclass" onmouseover="bigImg(this)" onmouseout="normalImg(this)" />
               <aa  style="background-color:red;">
        </p>
            
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;

        <div id="theDiv" runat="server" style="height: 330px; width: 374px; left:100px" class="pos_fixed">
             <img src="images/circle2.logo.png" alt="Lions" style="height: 330px; width: 374px"/>
        </div>
                 
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnchat" OnClick="btnchat_Click" onclientclick="document.forms[0].target ='_blank';" 
              runat="server" Text="Chat Room" class="buttonclass" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
         
&nbsp;

        <asp:Label ID="Lb9" runat="server" 
             Text="................................................................................................................................................................................................"></asp:Label> 
    
               
       <p>
           </div>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
            <p>
                <div style="background-image:url(images/contact2.jpg)">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LbArrival" runat="server" Text="Now Ambulence Will Arrive Earlier Then Pizza!"></asp:Label>
            </p>
                    <p>

        <asp:Label ID="Lb3" runat="server" 
  Text="................................................................................................................................................................................................"></asp:Label>    
                    </p>
                <div style="margin-left: 320px">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:ImageButton ID="googleplay" runat="Server" 
       AlternateText="" ImageUrl="~/images/googleplay.logo.png"  
       OnClick="btngoogleplay_Click" Height="62px" Width="229px" onclientclick="document.forms[0].target ='_blank';"  />
                     <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="LbJoin" runat="server" Text="Join Us At"></asp:Label>
&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:ImageButton ID="btnfacebook" runat="Server" 
       AlternateText="Click to lock record" ImageUrl="~/images/facebook.logo.png"  
       OnClick="btnLock_Click" Height="62px" Width="71px" onclientclick="document.forms[0].target ='_blank';"  />

                            &nbsp;

                            &nbsp;&nbsp;

                            <asp:ImageButton ID="btntweet" runat="Server" 
       AlternateText="Click to lock record" ImageUrl="~/images/twitter.logo.png"  
       OnClick="btntreet_Click" Height="62px" Width="71px" onclientclick="document.forms[0].target ='_blank';"  />

                                               &nbsp;

                                               &nbsp;&nbsp;

                                               <asp:ImageButton ID="btngoogleplus" runat="Server" 
       AlternateText="" ImageUrl="~/images/google.logo.png"  
       OnClick="btngoogleplus_Click" Height="62px" Width="71px" onclientclick="document.forms[0].target ='_blank';"  />

                                                                   &nbsp;&nbsp;&nbsp;

                                                                   <asp:ImageButton ID="btninstagram" runat="Server" 
       AlternateText="" ImageUrl="~/images/instagram.logo.png"  
       OnClick="btninstagram_Click" Height="62px" Width="71px" onclientclick="document.forms[0].target ='_blank';"  />

                                                                   &nbsp;&nbsp;&nbsp;

                                                                   <asp:ImageButton ID="btnlinkedin" runat="Server" 
       AlternateText="" ImageUrl="~/images/linkedin.logo.png"  
       OnClick="btnlinkedin_Click" Height="62px" Width="71px" onclientclick="document.forms[0].target ='_blank';"  />

                </div>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Label ID="Lb4" runat="server" 
  Text="................................................................................................................................................................................................"></asp:Label>    
                    <br />
    
                    <br />
    
        </div>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <div style="background-image:url(images/contact.jpg)">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Label ID="lbviews" runat="server" Text="Contact Us!!"></asp:Label>
            &nbsp;&nbsp;<br />
            <asp:Label ID="Lb7" runat="server" 
  Text="................................................................................................................................................................................................"></asp:Label>            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
        <br />
            
&nbsp;&nbsp; <asp:TextBox ID="fromemail" runat="server" Width="241px" style="opacity: 0.5;filter: alpha(opacity=50)" BorderColor="Black" BorderWidth="5" placeholder="Email ID*"></asp:TextBox >
            <br />
            <br />
            &nbsp;&nbsp;
            <asp:TextBox ID="TBNAME" runat="server" Width="241px" style="opacity: 0.5;filter: alpha(opacity=50)" BorderColor="Black" BorderWidth="5" placeholder="Name*"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;
            <asp:TextBox ID="TBNUMBER" runat="server" Width="241px" style="opacity: 0.5;filter: alpha(opacity=50)" BorderColor="Black" BorderWidth="5" placeholder="Number*"></asp:TextBox>
        <br />
            
            <br />
&nbsp;&nbsp;
        <asp:TextBox ID="fromcomments" runat="server" TextMode="MultiLine" Height="276px" Width="689px"  style="opacity: 0.5;filter: alpha(opacity=50)" BorderColor="Black" BorderWidth="5" placeholder="Comments"></asp:TextBox>
&nbsp;<br />
        <br />
            <asp:ImageButton ID="ImageButtonsend" runat="Server" 
       AlternateText="Click to lock record" ImageUrl="~/images/send.logo.png"  
       OnClick="btnimagesend_Click" Height="62px" Width="128px" onclientclick="document.forms[1].target ='_blank';"  />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="commentdisplay" runat="server"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Label ID="Lb8" runat="server" 
            Text="................................................................................................................................................................................................."></asp:Label>
    
            <br />
            <br />
        </div>
            <br />
        <br />
        <asp:Label ID="Clocation" runat="server"></asp:Label>
        <br />
        <br /> 
        <asp:Button ID="btnLocation" onclick="btnLocation_Click"  onclientclick="document.forms[0].target ='_blank';" runat="server" text="Location" class="buttonclass" />
            <br />
        <br />
        <div>
        <input id="Hidden1" type="hidden" runat="server" />
            <br />
            <asp:Label ID="lattitude" runat="server"></asp:Label>
    </div>
 
    
    <p style="margin-left: 40px">
<div style="background-color: black">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Lb5" runat="server" 
  Text="................................................................................................................................................................................................."></asp:Label>    
                </p>
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="LbLocation" runat="server" Text="Location"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LbAbout" runat="server" Text="About the App"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LbUet" runat="server" Text="UET Peshawar"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="LbPurpose" runat="server" Text="The basic Purpose of the App is to reduce the"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbcopy" runat="server" Text="Copyright © Emergency Rescue App"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LbNumber" runat="server" Text="+923239549789"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbarrival1" runat="server" Text="arrival time of Ambulences"></asp:Label>
            </p>
        <p>
        <asp:Label ID="Lb6" runat="server" 
  Text="................................................................................................................................................................................................."></asp:Label>    
          </br>
              </p>
                                        </div>
                </p>
    <div style="background-image:url(images/cn1.png)">
<fieldset style ="width:341px;">
    <legend>
        <asp:Label ID="Lbvisited" runat="server" Text="Site Visited"></asp:Label>
&nbsp;<asp:Label ID="lblSiteVisited" runat="server" Text=""
            style="color: #FFFFFF; background-color: #3366FF"></asp:Label><br />
           <asp:Label ID="Lbdate" runat="server" Text="Date"></asp:Label>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Label ID="lblOnlineUsers" runat="server" Text=""
            style="color: #FFFFFF; background-color: #009933"></asp:Label><br />
       
        <asp:Button ID="btnClearSesson" runat="server" Text="Clear Session"
            onclick="btnClearSesson_Click" />
        <br />
        <asp:Label ID="LBST" runat="server"></asp:Label>
        </fieldset>
        </div>
    </form>

</body>

</html>
