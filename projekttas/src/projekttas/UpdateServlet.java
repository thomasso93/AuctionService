package projekttas;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private String id = "";
	/*private String formBegin = "<form method=\"post\" action=\"updatedAuction\">";
	private String formMid = "<input type=\"text\" name=\"";
	private String formMid2 = "\" value=\"";
	private String formMid3 = "\"><br>";
	private String formHiddenB = "<input type=\"hidden\" name=\"id\" value=\"";
	private String formHiddenE = "\">";
	private String formEnd =  "<input type=\"submit\" value=\"Update\"></form>";
	 */
	
    public UpdateServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = AuctionDB.connect();
		
		getRequest(request);
		
		
		PrintWriter out = response.getWriter();
		
		if(conn == null){
            out.print("Unable to connect to database ");
        }
		
		AuctionDAO auction = AuctionDB.getAuctionToUpdate(conn, id);
		
		
		request.setAttribute("category", auction.category);
		request.setAttribute("description", auction.description);
		request.setAttribute("duration", auction.duration);
		request.setAttribute("location", auction.location);
		request.setAttribute("name", auction.name);
		request.setAttribute("price", auction.price);
		request.setAttribute("id", id);
		request.getRequestDispatcher("/WEB-INF/updatingAuction.jsp").forward(request, response);
		
		/*
		 * 
		out.print(formBegin);
		out.print("Name:" + formMid + "name" + formMid2 + auction.name + formMid3);
		out.print("Category:" + formMid + "category" + formMid2 + auction.category + formMid3);
		out.print("Description:" + formMid + "description" + formMid2 + auction.description + formMid3);
		out.print("Location:" + formMid + "location" + formMid2 + auction.location + formMid3);
		out.print("Duration:" + formMid + "duration" + formMid2 + auction.duration + formMid3);
		out.print("Price:" + formMid + "price" + formMid2 + auction.price + formMid3);
		out.print(formHiddenB + id + formHiddenE);
		out.print(formEnd);
		
		
        //out.print(AuctionDB.getAuction(conn) + "</br>");
        
        */
        try{
            conn.close();
        }
        catch(SQLException e){
            out.print("An error occurred when closing the database connection " + e);
        }
        out.println("Connection closed successfully");
	
	}
	
	private void getRequest(HttpServletRequest request){
		id = request.getParameter("id");
	}
	
}
