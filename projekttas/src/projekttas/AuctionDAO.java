package projekttas;

public class AuctionDAO {
	public String name, category, description, location, duration, price;
	/*
	AuctionDAO(String name, String category, String description, String location, int duration, float price){
		this.name = name;
		this.category = category;
		this.description = description;
		this.location = location;
		this.duration = duration;
		this.price = price;
	}
	*/
	
	AuctionDAO(String name, String category, String description, String location, String duration, String price){
		this.name = name;
		this.category = category;
		this.description = description;
		this.location = location;
		this.duration = duration;
		this.price = price;
	}
	
	public String getAuctionName(){
		return name;
	}
	
	
}
