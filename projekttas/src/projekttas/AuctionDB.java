package projekttas;

import java.sql.*;

public class AuctionDB {
    private final static String URL = "jdbc:mysql://db4free.net:3306/projekttas";
    private final static String USER = "projekttas";
    private final static String PASSWORD = "kubis2014";
    private final static String DRIVER = "com.mysql.jdbc.Driver";
    
    private final static String querySelectFrom = "SELECT * FROM ";
	private final static String queryInsertBegin = "INSERT INTO Auctions VALUES(";
	private final static String queryInsertEnd = "')";
	private final static String queryUpdateBegin = "UPDATE Auctions SET ";
    private final static String queryWhereId = "WHERE id =";

    private static Connection connection;
       
    public static ResultSet result;
    
    public static Connection connect(){
        connection = null;
        try{
            Class.forName(DRIVER);
        }
        catch(ClassNotFoundException e){
            System.out.println("Error when loading the database driver " + e);
            return null;
        }
        try{
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
        }
        catch(SQLException e){
        	throw new RuntimeException(e);
        }
        return connection;
    }
    
    public static Statement getStatement(Connection conn){
        Statement stm = null;
        try{
           stm = conn.createStatement(); 
        }
        catch(SQLException e){
            throw new RuntimeException(e);
        }
        return stm;
    }
    
    public static String getAuction(Connection conn){
        String resultString = "";
    	try {
            Statement stm = getStatement(conn);
            result = stm.executeQuery(querySelectFrom + "Auctions");
            
            while(result.next()){
                String name = result.getString("name");
                String id = result.getString("id");
                String category = result.getString("category");
                String description = result.getString("description");
                String location = result.getString("location");
                String duration = result.getString("duration");
                String price = result.getString("price");
                resultString += id + ". " + name + " <b>Category:</b> " + category + " <b>Description:</b> "+ description + " <b>Location:</b> " + location + " <b>Duration:</b> "+ 
                duration +"<b>h Price:</b> " + price + "</br>";
            }
        } 
        catch (SQLException e) {
            throw new RuntimeException(e);
        }
    	return resultString;
    }
    /*
    public static void addAuction(Connection conn, String name, String category, String description, String location, String duration, String price){

        String query = "";
    	String idString = "";
    	int idInteger;
    	try{
            Statement stm = getStatement(conn);
    		result = stm.executeQuery(querySelectFrom + " Auctions");
    		
            while(result.next()){
    			idString = result.getString("id");
    		}
    		
            idInteger = Integer.parseInt(idString) + 1;
    		idString = Integer.toString(idInteger);
    		
    		query = queryInsertBegin + idString + ", '"+ name + "', '" + category + "', '" + description + "', '" + location + "', '" + duration + "', '" + price + queryInsertEnd;
    		stm.executeUpdate(query);
    	}
    	catch(SQLException e){
    		throw new RuntimeException(e);
    	}
    }*/
    
    public static void addAuction(Connection conn, AuctionDAO auction){

    	String query = "";
    	String idString = "";
    	int idInteger;
    	try{
    		Statement stm = conn.createStatement();
            result = stm.executeQuery(querySelectFrom + "Auctions");
    		
            while(result.next()){
    			idString = result.getString("id");
    		}
    		
            idInteger = Integer.parseInt(idString) + 1;
    		idString = Integer.toString(idInteger);
    		query = queryInsertBegin + idString + ", '"+ auction.name + "', '" + auction.category + "', '" + auction.description + "', '" + auction.location + "', '"
    		+ auction.duration + "', '" + auction.price + queryInsertEnd;

    		stm.executeUpdate(query);
    	}
    	catch(SQLException e){
    		throw new RuntimeException(e);
    	}
    }
    
    public static void updateAuction(Connection conn,  AuctionDAO auction, String id){
    	Statement stm = getStatement(conn);
    	String query = queryUpdateBegin+"name='" + auction.name + "', category='" + auction.category + "', description='" + auction.description +
				"', location='" + auction.location + "', duration='" + auction.duration + "', price='" + auction.price +"' WHERE id=" + id;
    	try{
    		stm.executeUpdate(query);
    	}
    	catch(SQLException e){
    		throw new RuntimeException(e);
    	}
    }
    
    public static AuctionDAO getAuctionToUpdate(Connection conn, String id){
    	Statement stm = getStatement(conn);
    	String name = "";
        String category = "";
        String description = "";
        String location = "";
        String duration = "";
        String price = "";
        AuctionDAO auction = null;
    	
        try{
    		result = stm.executeQuery(querySelectFrom + "Auctions " + queryWhereId + id );
    		while(result.next()){
                name = result.getString("name");
                category = result.getString("category");
                description = result.getString("description");
                location = result.getString("location");
                duration = result.getString("duration");
                price = result.getString("price");
    		}
    		auction = new AuctionDAO(name, category, description, location, Integer.parseInt(duration), Float.parseFloat(price));
    	}
    	catch(SQLException e){
    		throw new RuntimeException(e);
    	}
    	return auction;
    }
}













