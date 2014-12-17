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

@WebServlet("/AddAuctionServlet")
public class AddAuctionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddAuctionServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		
		PrintWriter out = response.getWriter();
		out.print("Incoming variable name= " + name + "</br></br>");
		out.print("List of all Auctions");
		
		Connection conn = AuctionDB.connect();
		
		if(conn == null){
            out.print("Unable to connect to database ");
        }
        
        //AuctionDB.addAuction(conn, name);
        out.print(AuctionDB.getAuction(conn) + "</br>");
        
        try{
            conn.close();
        }
        catch(SQLException e){
            out.print("An error occurred when closing the database connection " + e);
        }
        out.println("Connection closed successfully");
		
		
	}

}
