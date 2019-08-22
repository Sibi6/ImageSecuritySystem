<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>High Performance Security System </title>
<script type="text/javascript">
function complexdecrypt(){
  var c=document.getElementById("myCanvas");
  var c1=document.getElementById("myCanvas1");
  var ctx=c.getContext("2d");
  var ctx1=c1.getContext("2d");
  var img=document.getElementById("stego");
  var img1=document.getElementById("cover");
  ctx1.drawImage(img1,0,0);
  var img1Data=ctx1.getImageData(0,0,c.width,c.height);
   var img3Data=ctx1.getImageData(0,0,c.width,c.height);
  
  ctx.drawImage(img,0,0);
  var imgData=ctx.getImageData(0,0,c.width,c.height);
  // invert colors
  	for (var i=0;i<imgData.data.length;i+=4)
    {
	
	//alert(imgData.data[i]);
	img3Data.data[i] = Math.sqrt((imgData.data[i]*2*2*imgData.data[i])-(img1Data.data[i]*img1Data.data[i]));
    img3Data.data[i+1] = Math.sqrt((imgData.data[i+1]*2*2*imgData.data[i+1])-(img1Data.data[i+1]*img1Data.data[i+1]));
    img3Data.data[i+2] = Math.sqrt((imgData.data[i+2]*2*2*imgData.data[i+2])-(img1Data.data[i+2]*img1Data.data[i+2]));
	imgData.data[i] = Math.sqrt(((imgData.data[i]*2)-img1Data.data[i])*((imgData.data[i]*2)-img1Data.data[i]))-2;
	imgData.data[i+1] = Math.sqrt(((imgData.data[i+1]*2)-img1Data.data[i+1])*((imgData.data[i+1]*2)-img1Data.data[i+1]))-2;
    imgData.data[i+2] = Math.sqrt(((imgData.data[i+2]*2)-img1Data.data[i+2])*((imgData.data[i+2]*2)-img1Data.data[i+2]))-2;
	//alert(imgData.data[i]);
	//alert(imgData.data[i+1]);
	//alert(imgData.data[i+2]);
	imgData.data[i+3] = 255;

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
.style3 {color: #990000;
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
              <h2>Data Retrieval </h2>
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
              <table width="71%" border="0">
                <form action="" method="post" name="form1" id="form1">
                <tr>
                  <td width="31%"><div align="center" class="style2">Stego image </div></td>
                  <td width="31%">&nbsp;</td>
                  <td width="38%"><div align="center"><span class="style2">Cover image </span></div></td>
                </tr>
                <tr>
                  <td><img src="images/stegoimage.jpg" name="stego" width="256" height="256" id="stego" /></td>
                  <td><p align="center"><img src="images/minus.png" width="120" height="120" /></p>
                    <p align="center">
                      <label>
                      <input type="button" value="Data Retrieval" onclick="complexdecrypt()" />
                      </label>
                    </p>                    </td>
                  <td><img src="images/cover.jpg" name="cover" width="256" height="256" id="cover" /></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><img src="" name="img3" width="256" height="256" id="img3" /></td>
                  <td><span id="span1" style="visibility:hidden" class="style3">Save image as hilldecrypt.jpg, Dont forget!!!!</span></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><div align="center"><a href="hillcipherdecrypt.jsp" class="style2">Goto<strong> </strong>Decryption </a></div></td>
                  <td>&nbsp;</td>
                </tr>
				</form>
              </table>
              <canvas id="myCanvas" width="256" height="256" style="border:1px solid #d3d3d3; visibility:hidden">
			  <canvas id="myCanvas1" width="256" height="256" style="border:1px solid #d3d3d3; visibility:hidden">
              </div>
            </td>
			
          </tr>
        </table>
        
      </div></td>
    </tr>
  </table>

</body>
</html>
