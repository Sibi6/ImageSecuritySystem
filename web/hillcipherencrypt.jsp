<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>High Performance Security System </title>
<script type="text/javascript">
function hillcipher(){
  var c=document.getElementById("myCanvas");
  var ctx=c.getContext("2d");
  var img=document.getElementById("lena");
  var img1Data=ctx.getImageData(0,0,c.width,c.height);
  //var k11=Math.floor((Math.random()*100));
  //var k12=Math.floor((Math.random()*100));
  //var k13=Math.floor((Math.random()*100));
  //var k21=Math.floor((Math.random()*100));
  //var k22=Math.floor((Math.random()*100));
  //var k23=Math.floor((Math.random()*100));
  //var k31=Math.floor((Math.random()*100));
  //var k32=Math.floor((Math.random()*100));
  //var k33=Math.floor((Math.random()*100));

  var k11 = 12;
  var k12 = 22;
  var k13 = 18;
  var k21 = 15;
  var k22 = 5;
  var k23 = 25;
  var k31 = 4;
  var k32 = 16;
  var k33 = 24;
  
  ctx.drawImage(img,0,0);
  var imgData=ctx.getImageData(0,0,c.width,c.height);
  // invert colors
  for (var i=0;i<imgData.data.length;i+=4)
    {
	//alert(imgData.data[i]);
		//alert(img1Data.data[i]);
	//alert(imgData.data[i+1]);
	//alert(imgData.data[i+2]);
    img1Data.data[i]=(k11*imgData.data[i]+k12*imgData.data[i]+k13*imgData.data[i]);
    img1Data.data[i+1]=(k21*imgData.data[i+1]+k22*imgData.data[i+1]+k23*imgData.data[i+1]);
    img1Data.data[i+2]=(k31*imgData.data[i+1]+k32*imgData.data[i+1]+k33*imgData.data[i+1]);
	img1Data.data[i+3]=255;

	imgData.data[i]=imgData.data[i]*2/(k11+k21+k31);
    imgData.data[i+1]=imgData.data[i+1]*2/(k12+k22+k32);
    imgData.data[i+2]=imgData.data[i+2]*2/(k13+k23+k33);
	imgData.data[i+3]=255;
	}
  ctx.putImageData(imgData,0,0);
  	var img3 = document.getElementById('img3');
  img3.src = c.toDataURL("image/png");
  document.getElementById('span1').style.visibility = "visible";
};
</script>
<style type="text/css">
<!--
.style2 {font-size: x-large}
.style3 {
	color: #990000;
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
              <h2><strong>Arnold Transform </strong> Encryption </h2>
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
                  <td><div align="center" class="style2">Secret image </div></td>
                  <td>&nbsp;</td>
                  <td><div align="center"><span class="style2">Encrypted image </span></div></td>
                </tr>
                <tr>
                  <td><img src="images/lena.jpg" name="lena" width="256" height="256" id="lena" /></td>
                  <td><p><img src="images/img_Hill_1.png" width="437" height="212" /></p>
                    <p align="center">
                      <label>
                      <input type="button" value="Encryption" onclick="hillcipher()" />
                      </label>
                    </p>                    </td>
                  <td><img src="" name="img3" width="256" height="256" id="img3"></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><div align="center"><a href="coverimageupload.jsp" class="style2">Cover Image  </a></div></td>
                  <td><span id="span1" style="visibility:hidden" class="style3">Save image as lena1.jpg, Dont forget!!!! </span></td>
                </tr>
				</form>
              </table>
              <canvas id="myCanvas" width="256" height="256" style="border:1px solid #d3d3d3; visibility:hidden">
              </div>
            </td>
			
          </tr>
        </table>
        
      </div></td>
    </tr>
  </table>

</body>
</html>
