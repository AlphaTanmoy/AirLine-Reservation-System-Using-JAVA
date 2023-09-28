package Servelet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Font;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.http.HttpSession;
import com.itextpdf.text.Image;
import com.itextpdf.layout.element.Cell; 
import com.itextpdf.layout.element.Table;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Element;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
public class GeneratePDF_from_PNR extends HttpServlet {
 private static final long serialVersionUID = 1L;
 
 public GeneratePDF_from_PNR() {
  super();
 }
 
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  doPost(request, response);
 }
 public byte[] getImage(URL url) throws IOException {
    ByteArrayOutputStream baos = new ByteArrayOutputStream();
    InputStream is = url.openStream ();
    byte[] b = new byte[4096];
    int n;
    while ( (n = is.read(b)) > -1 ) {
        baos.write(b, 0, n);
    }
    return baos.toByteArray();
}
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     System.out.println("-------------------------------INSIDE GENERATEPDF_FROM_PNR ----------------------");
  Connection conn = null;
  String url = "jdbc:mysql://localhost:3306/";
  String dbName = "AIRRESERVE";
  String driver = "com.mysql.jdbc.Driver";
  String userName = "root";
  String password = "";
  Statement st=null;
  
  ServletOutputStream os = response.getOutputStream();
  //set the response content type to PDF
  response.setContentType("application/pdf"); 
  //create a new document
  Document doc = new Document();
  doc.setMargins(25,0,25,25);
  
  //create some special styles and font sizes
  Font bfBold28 = new Font(FontFamily.TIMES_ROMAN, 22, Font.BOLD, new BaseColor(254,161,22)); 
  Font bf12 = new Font(FontFamily.TIMES_ROMAN, 18, Font.BOLDITALIC);
  
  String PNR = request.getParameter("PNR");
        
  try{
    
   
   PdfWriter.getInstance(doc, os); 
  
   Class.forName(driver).newInstance();
   conn = DriverManager.getConnection(url + dbName, userName, password);
   System.out.println("connected!.....");
   
   PdfWriter.getInstance(doc, new FileOutputStream("sample1.pdf"));
   
   
   doc.setPageSize(PageSize.LETTER);
   doc.open();
   
   doc.addHeader("AIRRESERVE Ticket Status", "AIRRESERVE Ticket Status");
   
   Image hdr = Image.getInstance("C:\\Users\\TANMOY DAS\\Desktop\\Arline Reservation System\\web\\hdr.png");
   doc.add(hdr);
   
   
   doc.add( new Paragraph("   AIRRESERVE Ticket Status ---------------------------------", bfBold28));
   //doc.add( Chunk.NEWLINE );
      
   String stmt = "SELECT * FROM payment_details WHERE PNR = ? ";
   PreparedStatement pstmt=conn.prepareStatement(stmt);
   pstmt.setString(1,PNR);
   ResultSet rs2 = pstmt.executeQuery();
   int flag = 0;
    
   
   while(rs2.next()){
    doc.add( new Paragraph("   PNR:                                    " + rs2.getString("PNR").trim(), bf12));
    doc.add( new Paragraph("   Transaction Id:                   " + rs2.getString("transaction_id").trim(), bf12));
    doc.add( new Paragraph("   Address:                               " + rs2.getString("address").trim(), bf12));
    doc.add( new Paragraph("   Payment Gateway:              " + rs2.getString("payment_gateway").trim(), bf12));
    doc.add( new Paragraph("   Payment Id:                        " + rs2.getString("payment_id").trim(), bf12));
    doc.add( new Paragraph("   Fair:                                    RS: " + rs2.getString("fair").trim() + " /-", bf12));
    doc.add( new Paragraph("   Coupon:                             " + rs2.getString("coupon").trim(), bf12));
    doc.add( new Paragraph("   Discount:                           " + rs2.getString("discount").trim() + " %", bf12));
    doc.add( new Paragraph("   Actual Fair:                      RS: " + rs2.getString("actual_fair").trim() + " /-", bf12));
    flag = 1;
   }
   
   if(flag==1){
    doc.add( Chunk.NEWLINE );
   
    PdfPTable table = new PdfPTable(2);
    float[] columnWidths = {4f, 4f};
    table.setWidths(columnWidths);
    PdfPCell cell1 = new PdfPCell(new Paragraph("Payment Status"));
    PdfPCell cell2 = new PdfPCell(new Paragraph("Successful"));
   
    cell1.setPadding(5);
    cell2.setPadding(5);
    table.addCell(cell1);
    table.addCell(cell2);
   
    PdfPCell cell3 = new PdfPCell(new Paragraph("Ticket Status"));
    PdfPCell cell4 = new PdfPCell(new Paragraph("Approved"));
    table.addCell(cell3); 
    table.addCell(cell4);
   
    cell3.setPadding(5);
    cell4.setPadding(5);
   
    doc.add(table);
   
    Image img_a = Image.getInstance("C:\\Users\\TANMOY DAS\\Desktop\\Arline Reservation System\\web\\sts_app.png");
    doc.add(img_a);
   
    
    doc.add( new Paragraph("\n                          Have A Great Journey Ahead!!\n", bfBold28));
    doc.add( Chunk.NEWLINE );
    Image ftr = Image.getInstance("C:\\Users\\TANMOY DAS\\Desktop\\Arline Reservation System\\web\\ftr.png");
    doc.add(ftr);
    rs2.absolute(1);
    rs2.close();
    conn.close();                                                              
    doc.close();
   }
   
   if(flag==0){
       doc.add( Chunk.NEWLINE );
   
   PdfPTable table = new PdfPTable(2);
   float[] columnWidths = {4f, 4f};
   table.setWidths(columnWidths);
      
   PdfPCell cell1 = new PdfPCell(new Paragraph("Booking Status"));
   PdfPCell cell2 = new PdfPCell(new Paragraph("Not Done Yet"));
   
   PdfPCell cell3 = new PdfPCell(new Paragraph("Payment Status"));
   PdfPCell cell4 = new PdfPCell(new Paragraph("Un-Successful or Did not receive"));
   
   PdfPCell cell5 = new PdfPCell(new Paragraph("Ticket Status"));
   PdfPCell cell6 = new PdfPCell(new Paragraph("No tickets found regaurding provided PNR"));
   
   table.addCell(cell1);
   table.addCell(cell2);
   table.addCell(cell3); 
   table.addCell(cell4);
   table.addCell(cell5);
   table.addCell(cell6);
   
   cell1.setPadding(5);
   cell2.setPadding(5);
   cell3.setPadding(5);
   cell4.setPadding(5);
   cell5.setPadding(5);
   cell6.setPadding(5);
   
   doc.add(table);
   doc.add( Chunk.NEWLINE );
   doc.add( Chunk.NEWLINE );
   Image img_r = Image.getInstance("C:\\Users\\TANMOY DAS\\Desktop\\Arline Reservation System\\web\\sts_dcl.png");
   doc.add(img_r);
   
   doc.add( Chunk.NEWLINE );
   doc.add( Chunk.NEWLINE );
   doc.add( new Paragraph("\nYou are advised to re-check the entered PNR! or If you have not done the booking yet!\nPlease do onece you will love the dscounts and Environment!!\n", bfBold28));
   doc.add( Chunk.NEWLINE );
   doc.add( Chunk.NEWLINE );
   Image ftr = Image.getInstance("C:\\Users\\TANMOY DAS\\Desktop\\Arline Reservation System\\web\\ftr.png");
   doc.add(ftr);
   //rs1.first();
   rs2.absolute(1);
   rs2.close();
  // rs1.close();                                                                
   conn.close();                                                              
   doc.close();
   }
     
   System.out.println("PDF Generated Successfully");
  }catch(DocumentException e){
   e.printStackTrace();
  }
  catch(Exception e){
   e.printStackTrace();
  }
  System.out.println("-------------------------------INSIDE GENERATEPDF FROM PNR ----------------------");
 }

    
 
}