<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>High Performance Security System </title>
<script type="text/javascript">
function hillcipher1(){
  var c=document.getElementById("myCanvas");
  var ctx=c.getContext("2d");
  var img=document.getElementById("lena2");
  //var k11=Math.floor((Math.random()*100));
  //var k12=Math.floor((Math.random()*100));
  //var k13=Math.floor((Math.random()*100));
  //var k21=Math.floor((Math.random()*100));
  //var k22=Math.floor((Math.random()*100));
  //var k23=Math.floor((Math.random()*100));
  //var k31=Math.floor((Math.random()*100));
  //var k32=Math.floor((Math.random()*100));
  //var k33=Math.floor((Math.random()*100));
  var img1Data=ctx.getImageData(0,0,c.width,c.height);
  var k11 = 12;
  var k12 = 22;
  var k13 = 18;
  var k21 = 15;
  var k22 = 5;
  var k23 = 25;
  var k31 = 4;
  var k32 = 16;
  var k33 = 24;
  
 var detk = (k11*k22*k33) + (k21*k32*k13) + (k31*k12*k23) - (k11*k32*k23) - (k31*k22*k13) - (k21*k12*k33);
  
  var k111 = ((k22*k33)-(k23*k32))/detk;
  var k121 = ((k13*k32)-(k12*k33))/detk;
  var k131 = ((k12*k23)-(k13*k22))/detk;
  var k211 = ((k23*k31)-(k21*k33))/detk;
  var k221 = ((k11*k33)-(k13*k31))/detk;
  var k231 = ((k13*k21)-(k11*k23))/detk;
  var k311 = ((k21*k32)-(k22*k31))/detk;
  var k321 = ((k12*k31)-(k11*k32))/detk;
  var k331 = ((k11*k22)-(k12*k21))/detk;
  
  
  ctx.drawImage(img,0,0);
  var imgData=ctx.getImageData(0,0,c.width,c.height);
  // invert colors
 
  ctx.putImageData(imgData,0,0);
  	var img3 = document.getElementById('img3');
  img3.src = c.toDataURL("image/img");
}
</script>
<style type="text/css">
<!--
.style2 {font-size: x-large}
.style3 {	color: #990000;
	font-size: 16px;
}
-->
</style>
</head>

<body style="margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px">


  <table width="100%" height="650" border="0">
    <tr>
      <td bgcolor="#9999CC"><div align="center">
	  <table width="100%" border="0">
          <tr>
            <td><div align="center">
              <h2>Decryption </h2>
            </div></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td><div align="center">
             
              </div></td>
          </tr>
          <tr>
            <td><div align="center">
              <label></label>
            </div></td>
          </tr>
        </table>
        <table width="100%" border="0">
          <tr>
            <td><div align="center">
              <table width="80%" border="0">
                <form action="" method="post" name="form1" id="form1">
                <tr>
                  <td><img src="images/hilldecrypt.jpg" name="lena1" width="256" height="256" id="lena1" /></td>
                  <td><p><img src="images/img_Hill_1.png" width="437" height="212" /></p>
                    <p align="center">
                      <label>
                      <input type="button" value="Decryption" onclick="hillcipher1()" />
                      </label>
                    </p>                    </td>
                  <td><img src="" name="img3" width="258" height="256" id="img3"></td>
                </tr>
                <tr>
                  <td><img src="images/lena.jpg" style="visibility:hidden" name="lena2" width="256" height="256" id="lena2" /></td>
                  <td><div align="center"><a href="index.jsp" class="style2">Home</a></div></td>
                  <td>&nbsp;</td>
                </tr>
				</form>
              </table><canvas id="myCanvas" width="258" height="256" style="border:1px solid #d3d3d3; visibility:hidden">
              </div>
            </td>
			
          </tr>
        </table>
        
      </div></td>
    </tr>
  </table>

</body>
</html>
