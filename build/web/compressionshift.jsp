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
  var img=document.getElementById("lena1");
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
  var img3Data=ctx.getImageData(0,0,c.width,c.height);
   
  ctx.drawImage(img,0,0);
  var imgData=ctx.getImageData(0,0,c.width,c.height);
  
   for (var i=0;i<imgData.data.length;i+=4)
    {
	//alert(imgData.data[i]);
	
	//alert(imgData.data[i]);
	//alert(imgData.data[i+1]);
	//alert(imgData.data[i+2]);
	//alert(img1Data.data[i]);
	
	img3Data.data[i] = Math.sqrt((imgData.data[i]*imgData.data[i])+(imgData.data[i]*imgData.data[i]));
	//alert(imgData.data[i]);
    img3Data.data[i+1] = Math.sqrt((imgData.data[i+1]*imgData.data[i+1])+(imgData.data[i+1]*imgData.data[i+1]));
    img3Data.data[i+2] = Math.sqrt((imgData.data[i+2]*imgData.data[i+2])+(imgData.data[i+2]*imgData.data[i+2]));
	
	imgData.data[i] = (img3Data.data[i] + img1Data.data[i])/2;
	//alert(imgData.data[i]);
    imgData.data[i+1] = (img3Data.data[i+1] + img1Data.data[i+1])/2;
    imgData.data[i+2] = (img3Data.data[i+2] + img1Data.data[i+2])/2;
	imgData.data[i+3] = 255;
	
	img1Data.data[i] = 5;
	//alert(imgData.data[i]);
    img1Data.data[i+1] = 6;
    img1Data.data[i+2] = 7;
	img1Data.data[i+3] = 255;
	
	}
  // invert colors
 
  ctx.putImageData(img1Data,0,0);
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
              <h2><strong>SHIFT Compression </strong> </h2>
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
                  <td><img src="images/stegoimage.jpg" name="lena1" width="256" height="256" id="lena1" /></td>
                  <td><p><img src="images/img_Hill_1.png" width="437" height="212" /></p>
                    <p align="center">
                      <label>
                      <input type="button" value="Compression" onclick="hillcipher1()" />
                      </label>
                    </p>                    </td>
                  <td><img src="" name="img3" width="258" height="256" id="img3"></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><div align="center"><a href="complexdecrypt.jsp" class="style2">Goto Decryption </a><a href="index.jsp" class="style2"></a></div></td>
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
