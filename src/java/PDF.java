
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Date;
import com.itextpdf.text.Font;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.List;
import com.itextpdf.text.Element;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.ListItem;
import  com.itextpdf.text.Document;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

public class PDF {

	public static void pdf(String name,String ticketid,String dtime,String atime,String duration,String flightid,String from,String to1,String date,String tickettype,int adult,int child,int i,String price) {
//public static void main(String args[]){		
try {
			OutputStream file = new FileOutputStream(new File("E:\\ticket"+i+".pdf"));

			Document document = new Document();
			PdfWriter.getInstance(document, file);

			document.open();
                         PdfPTable table=new PdfPTable(3);
  Font blue = new Font(FontFamily.HELVETICA, 20, Font.BOLD, BaseColor.BLUE);
  Font black = new Font(FontFamily.HELVETICA, 20, Font.BOLD, BaseColor.BLACK);
   Font white = new Font(FontFamily.HELVETICA, 12, Font.NORMAL, BaseColor.WHITE);
   Chunk blueText = new Chunk("          Ticket \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Airline \n\n\n\n", blue);	                    
 Chunk line=new Chunk("\t____________________________________________",black);
 
   PdfPCell cell = new PdfPCell (new Paragraph (from+"\tTO\t"+to1+"         date            AIRLINE ID:\t"+flightid,white));
 
				     cell.setColspan (3);
                                    cell.setMinimumHeight(0);
				      //cell.setHorizontalAlignment (Element.ALIGN_CENTER);
				      cell.setPadding (10.0f);
                                       cell.setBackgroundColor (new BaseColor (0, 0, 255));		
		
  table.getDefaultCell().setBorder(Rectangle.NO_BORDER);
				      table.addCell(cell);						               
 
				      table.addCell(dtime);
				      table.addCell("");
				      table.addCell(atime);
                      table.addCell(date);
				      table.addCell(duration);
				      table.addCell(date);
                                      table.addCell(from);
                                      table.addCell(tickettype);
                                      table.addCell(to1);
                                 
				      table.setSpacingBefore(30.0f);       // Space Before table starts, like margin-top in CSS
				      table.setSpacingAfter(30.0f);        // Space After table starts, like margin-Bottom in CSS								          
 PdfPTable t=new PdfPTable(3);
                                      PdfPCell c=new PdfPCell(new Paragraph("Travellers                          PNR no                            Ticketno"));
			 //Inserting List in PDF
                         t.getDefaultCell().setBorder(Rectangle.NO_BORDER);
                         c.setColspan(3);
                         t.addCell(c);
                         t.addCell(name);
                         t.addCell(ticketid);
                         t.addCell(ticketid);
				      List list=new List(true,30);
			          list.add(new ListItem("Java4s"));
				      list.add(new ListItem("Php4s"));
				      list.add(new ListItem("Some Thing..."));		
 
			 //Text formating in PDF
	                //Chunk chunk=new Chunk("Welecome To Java4s Programming Blog...");
					//1st co-ordinate is for line width,2nd is space between
				//	Chunk chunk1=new Chunk("Php4s.com");
				//	chunk1.setUnderline(+4f,-8f);
					//chunk1.setBackground(new BaseColor (17, 46, 193));      
 
			 //Now Insert Every Thing Into PDF Document
		         document.open();//PDF document opened........			       
 
 
					//document.add(Chunk.NEWLINE);   //Something like in HTML :-)
 
                   
 
					
 document.add(blueText);
 document.add(new Phrase("\n"));
 document.add(table);
 document.add(line);
 document.add(t);
 document.add(line);
 document.add(new Paragraph("TIP         eat well balanced meals and get good sleep before you depart to void jetlag"));
document.add(line);
document.add(new Paragraph("IMPORTANT: For hassle free refund processing, cancel your tickets with AIRLINE Customer Care instead of doing so directly with Airline.	"));
					///document.add(chunk);
					//document.add(chunk1);
                                        document.add(Chunk.NEWLINE);   //Something like in HTML :-)							    
 
       				document.newPage();            //Opened new page
					document.add(list); 
			//document.add(new Paragraph("Name:"+name));
			//document.add(new Paragraph("Flight ID"+flightid));
                       // document.add(new Paragraph("From:"+from));
                       // document.add(new Paragraph("To"+to1));
                       // document.add(new Paragraph("Date:"+date));
                       // document.add(new Paragraph("Class:"+tickettype));
                       // document.add(new Paragraph("Adult:"+adult));
                       // document.add(new Paragraph("Child:"+child));
                       // document.add(new Paragraph("Total numbar of people:"+sum));
                       // document.add(new Paragraph("Total price"+price));
            

			document.close();
			file.close();

		} catch (Exception e) {

			e.printStackTrace();
		}
	}
}