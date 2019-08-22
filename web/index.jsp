<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>High Performance Security System </title>

<style type="text/css">
<!--
.style2 {font-size: x-large}
-->
</style>
</head>

<body style="margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px">
<form action="imagehillcipher" method="post" enctype="multipart/form-data" name="form2" id="form2">

  <table width="100%" height="650" border="0">
    <tr>
      <td bgcolor="#9999CC"><div align="center">
        <table width="100%" height="604" border="0">
          <tr>
            <td><div align="center">
              <h2><strong> Image Encryption using Arnold Transform </strong> </h2>
            </div>            </td>
          </tr>
          <tr>
            <td><div align="center">
              <table width="59%" height="233" border="0">
                
                <tr>
                  <td><div align="center" class="style2">Upload your Secret Image </div></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td><div align="center">
                      <label>
                      <input type="file" name="file" />
                      </label>
                      <label></label>
                  </div></td>
                </tr>
                <tr>
                  <td><div align="center">
                      <label></label>
                      <input type="submit" name="Submit" value="Submit" />
                  </div></td>
                </tr>
              </table>
            </div>
            <div align="center">
                    <p><a href="complexdecrypt.jsp" class="style2">Goto Decryption </a></p>
                    </div></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table>
        
      </div></td>
    </tr>
  </table>
</form>
</body>
</html>
