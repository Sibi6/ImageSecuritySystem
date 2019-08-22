import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import javax.imageio.ImageIO;
import java.lang.*;

import java.util.Iterator;  
import java.util.List;  
  
import javax.servlet.ServletException; 
//import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
import org.apache.commons.fileupload.FileItem;  
import org.apache.commons.fileupload.FileUploadException;  
import org.apache.commons.fileupload.disk.DiskFileItemFactory;  
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet("/UploadImage1")

public class imagehillcipher extends javax.servlet.http.HttpServlet implements  
        javax.servlet.Servlet {
   
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    RequestDispatcher rd=null;
    HttpSession sn=null;
    PrintWriter out=null;
	
	static final long serialVersionUID = 1L;  
  
    private static final String DATA_DIRECTORY = "data";  
    private static final int MAX_THRESHOLD_SIZE = 1024 * 1024 * 2; // 2MB  
    private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 10;  // 10MB  
  
   
   public void doPost(HttpServletRequest request, 
               HttpServletResponse response)
              throws IOException,ServletException {
      
	response.setContentType("text/html");
        out = response.getWriter();
        //HttpSession sn = request.getSession(true);

	//Object obj = ;
  	//String filename1 = sn.getAttribute("tile_name").toString();
	
	//System.out.println("Filename:=" + filename1);

		// Check that we have a file upload request  
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);  
  
        if (!isMultipart) {  
            return;  
        }  
  
        // Create a factory for disk-based file items  
        DiskFileItemFactory factory = new DiskFileItemFactory();  
  
        // Sets the size threshold beyond which files are written directly to disk.  
        factory.setSizeThreshold(MAX_THRESHOLD_SIZE);  
  
        // Sets the directory used to temporarily store files that are larger  
        // than the configured size threshold. We use temporary directory for java  
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));  
  
        // constructs the folder where uploaded file will be stored  
        String uploadFolder = getServletContext().getRealPath("")  
                                    + File.separator + "images";  
  
        // Create a new file upload handler  
        ServletFileUpload upload = new ServletFileUpload(factory);  
  
        // Set overall request size constraint  
        upload.setSizeMax(MAX_REQUEST_SIZE);

		try {  
            // Parse the request  
            List items = upload.parseRequest(request);  
            Iterator iter = items.iterator();  
            while (iter.hasNext()) {  
                FileItem item = (FileItem) iter.next();  
  
                if (!item.isFormField()) {  
                    String fileName = new File(item.getName()).getName();
			String filename1 = "lena";  
                    String filePath = uploadFolder + File.separator + filename1 + ".jpg";  
                    File uploadedFile = new File(filePath);  
  
                    // saves the file to upload directory  
                    item.write(uploadedFile);  
                }  
            }  
	getServletContext().getRequestDispatcher("/hillcipherencrypt.jsp").forward(request, response);   
  
        } catch (FileUploadException ex) {  
            throw new ServletException(ex);  
        } catch (Exception ex) {  
            throw new ServletException(ex);  
        }        

   }
   public void doGet(HttpServletRequest request, 
                       HttpServletResponse response)
        throws ServletException, java.io.IOException {
        
        
   } 
}