package projekttas;

import java.sql.*;
import java.util.ArrayList;

public class AuctionDB {
    private final static String URL = "jdbc:mysql://db4free.net:3306/projekttas";
    private final static String USER = "projekttas";
    private final static String PASSWORD = "kubis2014";
    private final static String DRIVER = "com.mysql.jdbc.Driver";
    
    private final static String QUERY_SELECT_ALL_FROM = "SELECT * FROM ";
	private final static String QUERY_INSERT_BEGIN = "INSERT INTO Auctions VALUES(";
	private final static String QUERY_INSERT_END = "')";
	private final static String QUERY_UPDATE_BEGIN = "UPDATE Auctions SET ";
    private final static String QUERY_WHERE_ID = "WHERE id =";

    private final static int INCREASE_ID_BY_ONE = 1;
    
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
    
    public static ArrayList<String> createAuctionsList(Connection conn){
        ArrayList<String> auctionsString = new ArrayList<>();
    	try {
            Statement stm = getStatement(conn);
            result = stm.executeQuery(QUERY_SELECT_ALL_FROM + "Auctions");
            
            while(result.next()){
                String name = result.getString("name");
                String id = result.getString("id");
                String price = result.getString("price");
                String location = result.getString("location");
                auctionsString.add(name);
                auctionsString.add(price);
                auctionsString.add(id);
                auctionsString.add(location);
            }
        } 
        catch (SQLException e) {
            throw new RuntimeException(e);
        }
    	return auctionsString;
    }
    
    public static void addAuction(Connection conn, AuctionDAO auction){

    	String query = "";
    	String idString = "";
    	int idInteger;
    	try{
    		Statement stm = conn.createStatement();
            result = stm.executeQuery(QUERY_SELECT_ALL_FROM + "Auctions");
    		
            while(result.next()){
    			idString = result.getString("id");
    		}
    		
            idInteger = Integer.parseInt(idString) + INCREASE_ID_BY_ONE;
    		idString = Integer.toString(idInteger);
    		query = QUERY_INSERT_BEGIN + idString + ", '"+ auction.name + "', '" + auction.category + "', '" + auction.description + "', '" + auction.location + "', '"
    		+ auction.duration + "', '" + auction.price + QUERY_INSERT_END;

    		stm.executeUpdate(query);
    	}
    	catch(SQLException e){
    		throw new RuntimeException(e);
    	}
    }
    
    public static void updateAuction(Connection conn,  AuctionDAO auction, String id){
    	Statement stm = getStatement(conn);
    	String query = QUERY_UPDATE_BEGIN+"name='" + auction.name + "', category='" + auction.category + "', description='" + auction.description +
				"', location='" + auction.location + "', duration='" + auction.duration + "', price='" + auction.price +"' WHERE id= " + id;
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
    		result = stm.executeQuery(QUERY_SELECT_ALL_FROM + "Auctions " + QUERY_WHERE_ID + id );
    		while(result.next()){
                name = result.getString("name");
                category = result.getString("category");
                description = result.getString("description");
                location = result.getString("location");
                duration = result.getString("duration");
                price = result.getString("price");
    		}
    		auction = new AuctionDAO(name, category, description, location, duration, price);
    	}
    	catch(SQLException e){
    		throw new RuntimeException(e);
    	}
    	return auction;
    }
}













