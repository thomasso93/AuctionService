package projekttas;

public class AuctionDAO {
	public String name, category, description, location, duration, price, id;
	public boolean deleted;
	
	AuctionDAO(String name, String category, String description, String location, String duration, String price){
		this.name = name;
		this.category = category;
		this.description = description;
		this.location = location;
		this.duration = duration;
		this.price = price;
	}
	
	AuctionDAO(String name, String category, String description, String location, String duration, String price, String id){
		this.name = name;
		this.category = category;
		this.description = description;
		this.location = location;
		this.duration = duration;
		this.price = price;
		this.id = id;
	}
	
	AuctionDAO(String name, String category, String description, String location, String duration, String price, boolean deleted){
		this.name = name;
		this.category = category;
		this.description = description;
		this.location = location;
		this.duration = duration;
		this.price = price;
		this.deleted = deleted;
	}
	
	public String getAuctionName(){
		return name;
	}
	
	
}
