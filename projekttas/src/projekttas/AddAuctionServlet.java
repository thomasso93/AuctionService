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

@WebServlet("/MainServlet")
public class AddAuctionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String name = "";
	private String category = "";
	private String description = "";
	private String location = "";
	private String duration = "";
	private String price = "";
	

	public AddAuctionServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*PrintWriter out = response.getWriter();
		out.println("Auction Servis -> Projekt TAS 2014/15 </br></br>");
		out.println("Looking for new auctions. Found: </br>");
		Connection conn = AuctionDB.connect();
	      
        if(conn == null){
            out.print("Unable to connect to database ");
        }
        
        out.print(AuctionDB.getAuction(conn) + "</br>");
        
        try{
            conn.close();
        }
        catch(SQLException e){
            out.print("An error occurred when closing the database connection " + e);
        }
        out.println("Connection closed successfully");
		*/
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		getRequest(request);
		PrintWriter out = response.getWriter();
		out.print("List of all auctions: </br>");
		
		Connection conn = AuctionDB.connect();
		
		if(conn == null){
            out.print("Unable to connect to database ");
        }
        
        AuctionDAO auction = new AuctionDAO(name, category, description,location, duration, price);
 
        AuctionDB.addAuction(conn, auction);

        //out.print(AuctionDB.getAuction(conn) + "</br>");
        response.sendRedirect("auctions/Auction.jsp");
        try{
            conn.close();
        }
        catch(SQLException e){
            out.print("An error occurred when closing the database connection " + e);
        }
        out.println("Connection closed successfully");
		
	}
	
	private void getRequest(HttpServletRequest request){
		name = request.getParameter("name");
		category = request.getParameter("category");
		description = request.getParameter("description");
		location = request.getParameter("location");
		duration = request.getParameter("duration");
		price = request.getParameter("price");
	}
}
