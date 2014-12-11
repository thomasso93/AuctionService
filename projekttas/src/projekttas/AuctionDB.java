package projekttas;

import java.sql.*;

public class AuctionDB {
    private final static String URL = "jdbc:mysql://db4free.net:3306/projekttas";
    private final static String USER = "projekttas";
    private final static String PASSWORD = "kubis2014";
    private final static String DRIVER = "com.mysql.jdbc.Driver";
    
    private final static String query1 = "SELECT * FROM";
	private final static String insertQueryBegin = "INSERT INTO Auctions VALUES(";
	private final static String insertQueryEnd = "')";
   // private final static String query2 = "WHERE id =";
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
    
    public static ResultSet executeQuery(Connection conn, String query){
        try{
            Statement stm = conn.createStatement();
            result = stm.executeQuery(query);
        }
        catch(SQLException e){
            System.out.println("An error occurred while executing query " + e);
        }
        return result;
    }
    
    public static String getAuction(Connection conn){
        String resultString = "";
    	try {
            Statement stm = conn.createStatement();
            result = stm.executeQuery(query1 + " Auctions");
            while(result.next() == true){
                String name = result.getString("name");
                String id = result.getString("id");
                resultString += name + " " + "id = " + id + "</br>";
            }
        } 
        catch (SQLException e) {
            throw new RuntimeException(e);
        }
    	return resultString;
    }
    
    public static void addAuction(Connection conn, String values){

    	String query = "";
    	String idString = "";
    	int idInteger;
    	try{
    		Statement stm = conn.createStatement();
            result = stm.executeQuery(query1 + " Auctions");
    		
            while(result.next()){
    			idString = result.getString("id");
    		}
    		
            idInteger = Integer.parseInt(idString)+1;
    		idString = Integer.toString(idInteger);
    		query = insertQueryBegin + idString + ", '"+ values + insertQueryEnd;

    		stm.executeUpdate(query);
    	}
    	catch(SQLException e){
    		throw new RuntimeException(e);
    	}
    }
    
    public static String getValue(Connection conn, String value){
    	String resultString = "";

    	return resultString; 
    }
}
