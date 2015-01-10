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
		request.getRequestDispatcher("auctions/updatingAuction.jsp").forward(request, response);
		
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
