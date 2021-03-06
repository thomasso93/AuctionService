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

@WebServlet("/UpdatedServlet")
public class UpdatedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String name = "";
	private String category = "";
	private String description = "";
	private String location = "";
	private String duration = "";
	private String price = "";
	private String id = "";
	private boolean deleted;

	public UpdatedServlet() {
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
		
		AuctionDAO auctionToUpdate = new AuctionDAO(name, category, description, location, duration, price, deleted);
		AuctionDB.updateAuction(conn, auctionToUpdate, id);

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
		id = request.getParameter("id");
		deleted = Boolean.parseBoolean(request.getParameter("deleted"));
	}
	
}
