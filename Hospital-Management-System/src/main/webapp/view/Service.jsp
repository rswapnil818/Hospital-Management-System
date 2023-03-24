<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html><body>

<nav role="navigation">
  <div id="menuToggle">
  
     <input type="checkbox" />
     
         <span></span>
         <span></span>
         <span></span>
     
     <ul id="menu">
     
      <a href="Home"><li>Home</li></a>
      <a href="About"><li>About</li></a>
      <a href="Service"><li>Services</li></a>
      <a href="ContactPage"><li>Contact</li></a>
      <a href="/"><li>Log Out</li></a>
     
    </ul>
  </div>
</nav>
<br>
<br>
<br>
<br>

<h2></h2>
<p></p>

<div class="row">
  <div class="column">
    <img src="/images/CT-SCAN.png" alt="Snow" title="CT-Scan Center" style="width:1000px" height="700px">
  </div>
  <div class="column">
    <img src="/images/x-ray.jpg" alt="Forest" title="X-Ray Center" style="width:1000px" height="700px">
  </div>
  <div class="column">
    <img src="/images/mri.jpg" alt="Mountains" title="MRI Center" style="width:1000px" height="700px">
  </div>
</div>
<div class="row">
  <div class="column">
    <img src="/images/emg-care.jpg" alt="Snow" title="Emergency Care" style="width:1000px" height="700px">
  </div>
  <div class="column">
    <img src="/images/mental_health.jpg" alt="Forest" title="mental Health Care" style="width:1000px" height="700px">
  </div>
  <div class="column">
    <img src="/images/covid.jpg" alt="Mountains" title="Covid Care Center" style="width:1000px" height="700px" >
  </div>
</div>
<div class="row">
  <div class="column">
    <img src="/images/operation.jpg" alt="Snow" title="Operation theater" style="width:1000px" height="700px">
  </div>
  <div class="column">
    <img src="/images/pathology.jpeg" alt="Forest" title="Pathology Lab" style="width:1000px" height="700px">
  </div>
  <div class="column">
    <img src="/images/dialysis.jpg" alt="Mountains" title="Dialysis Center" style="width:1000px" height="700px">
  </div>
</div>
</body>
<style>

* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 33.33%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}
body
{
  margin: 0;
  padding: 0;
  
  /* make it look decent enough */
  background: #232323;
  color: #cdcdcd;
  font-family: "Avenir Next", "Avenir", sans-serif;
}

#menuToggle
{
  display: block;
  position: relative;
  top: 50px;
  left: 50px;
  
  z-index: 1;
  
  -webkit-user-select: none;
  user-select: none;
}

#menuToggle a
{
  text-decoration: none;
  color: #232323;
  
  transition: color 0.3s ease;
}

#menuToggle a:hover
{
  color: tomato;
}


#menuToggle input
{
  display: block;
  width: 40px;
  height: 32px;
  position: absolute;
  top: -7px;
  left: -5px;
  
  cursor: pointer;
  
  opacity: 0; /* hide this */
  z-index: 2; /* and place it over the hamburger */
  
  -webkit-touch-callout: none;
}

/*
 * Just a quick hamburger
 */
#menuToggle span
{
  display: block;
  width: 33px;
  height: 4px;
  margin-bottom: 5px;
  position: relative;
  
  background: #cdcdcd;
  border-radius: 3px;
  
  z-index: 1;
  
  transform-origin: 4px 0px;
  
  transition: transform 0.5s cubic-bezier(0.77,0.2,0.05,1.0),
              background 0.5s cubic-bezier(0.77,0.2,0.05,1.0),
              opacity 0.55s ease;
}

#menuToggle span:first-child
{
  transform-origin: 0% 0%;
}

#menuToggle span:nth-last-child(2)
{
  transform-origin: 0% 100%;
}

/* 
 * Transform all the slices of hamburger
 * into a crossmark.
 */
#menuToggle input:checked ~ span
{
  opacity: 1;
  transform: rotate(45deg) translate(-2px, -1px);
  background: #232323;
}

/*
 * But let's hide the middle one.
 */
#menuToggle input:checked ~ span:nth-last-child(3)
{
  opacity: 0;
  transform: rotate(0deg) scale(0.2, 0.2);
}

/*
 * Oh yeah and the last one should go the other direction
 */
#menuToggle input:checked ~ span:nth-last-child(2)
{
  transform: rotate(-45deg) translate(0, -1px);
}

/*
 * Make this absolute positioned
 * at the top left of the screen
 */
#menu
{
  position: absolute;
  width: 300px;
  margin: -100px 0 0 -50px;
  padding: 50px;
  padding-top: 125px;
  
  background: #ededed;
  list-style-type: none;
  -webkit-font-smoothing: antialiased;
  /* to stop flickering of text in safari */
  
  transform-origin: 0% 0%;
  transform: translate(-100%, 0);
  
  transition: transform 0.5s cubic-bezier(0.77,0.2,0.05,1.0);
}

#menu li
{
  padding: 10px 0;
  font-size: 22px;
}

/*
 * And let's slide it in from the left
 */
#menuToggle input:checked ~ ul
{
  transform: none;
}


</style>
</html>



