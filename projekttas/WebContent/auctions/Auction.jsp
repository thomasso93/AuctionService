<%@page import="java.util.ArrayList"%>
<%@page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import ="projekttas.*" %>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="../css/bootstrap.min.css">
		<link rel="stylesheet" href="../css/bootstrap-theme.min.css">
		<link rel="stylesheet" href="../css/style.css">
		<script src="../js/jquery-1.11.1.min.js"></script>
		<script src="../js/bootstrap.min.js"></script>
	</head>
	<body>
		<nav class="navbar navbar-default" role="navigation">
		  <div class="container-fluid">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="..\index.jsp">Serwis Aukcyjny</a>
		    </div>

		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
		        <li><a href="..\index.jsp">Home</a></li>
		        <li class='active'><a href="Auction.jsp">Aukcje</a></li>
		        <li><a href="UpdateAuction.jsp">Aktualizuj</a></li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Kategorie <span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li class="dropdown-submenu">
		            	<a href="#">Motoryzacja</a>
		            	<ul class="dropdown-menu">
		            		<li><a href="#">Samochody</a></li>
		            		<li><a href="#">Motocykle</a></li>
		            	</ul>
		            </li>
		            <li class="dropdown-submenu">
		            	<a href="#">Nieruchomoci</a>
		            	<ul class="dropdown-menu">
		            		<li><a href="#">Mieszkania</a></li>
		            		<li><a href="#">Domy</a></li>
		            		<li><a href="#">Dzia³ki</a></li>
		            	</ul>
		            </li>
		            <li class="dropdown-submenu">
		            	<a href="#">Elektronika</a>
		            	<ul class="dropdown-menu">
		            		<li class="dropdown-submenu">
		            			<a href="#">Telefony</a>
		            			<ul class="dropdown-menu">
		            				<li><a href="#">Telefony</a></li>
		            				<li><a href="#">Akcesoria</a></li>
		            			</ul>
		            		</li>
		            		<li><a href="#">Komputery</a></li>
		            		<li><a href="#">Telewizory</a></li>
		            		<li><a href="#">Konsole</a></li>
		            		<li><a href="#">Sprzêt DVD/Blu-ray</a></li>
		            		<li class="dropdown-submenu">
		            			<a href="#">Fotografia</a>
		            			<ul class="dropdown-menu">
		            				<li><a href="#">Aparaty</a></li>
		            				<li><a href="#">Kamery</a></li>
		            			</ul>
		            		</li>
		            		<li><a href="#">Sprzêt audio</a></li>
		            		<li class="dropdown-submenu">
		            			<a href="#">Gry</a>
		            			<ul class="dropdown-menu">
		            				<li><a href="#">Komputerowe</a></li>
		            				<li><a href="#">Gry na konsole</a></li>
		            			</ul>
		            		</li>
		            	</ul>
		            </li>
		            <li class="dropdown-submenu">
		            	<a href="#">Moda</a>
		            	<ul class="dropdown-menu">
		            		<li class="dropdown-submenu">
		            			<a href="#">Ubrania</a>
		            			<ul class="dropdown-menu">
		            				<li><a href="#">Damskie</a></li>
		            				<li><a href="#">Mêskie</a></li>
		            			</ul>
		            		</li>
		            		<li class="dropdown-submenu">
		            			<a href="#">Buty</a>
		            			<ul class="dropdown-menu">
		            				<li><a href="#">Damskie</a></li>
		            				<li><a href="#">Mêskie</a></li>
		            			</ul>
		            		</li>
		            		<li><a href="#">Bi¿uteria</a></li>
		            		<li class="dropdown-submenu">
		            			<a href="#">Zegarki</a>
		            			<ul class="dropdown-menu">
		            				<li><a href="#">Damskie</a></li>
		            				<li><a href="#">Mêskie</a></li>
		            			</ul>
		            		</li>
		            		<li class="dropdown-submenu">
		            			<a href="#">Dodatki</a>
		            			<ul class="dropdown-menu">
		            				<li><a href="#">Damskie</a></li>
		            				<li><a href="#">Mêskie</a></li>
		            			</ul>
		            		</li>
		            		<li class="dropdown-submenu">
		            			<a href="#">Kosmetyki</a>
		            			<ul class="dropdown-menu">
		            				<li><a href="#">Damskie</a></li>
		            				<li><a href="#">Mêskie</a></li>
		            			</ul>
		            		</li>
		            	</ul>
		            </li>
		            <li class="dropdown-submenu">
		            	<a href="#">Sport</a>
		            	<ul class="dropdown-menu">
		       				<li><a href="#">Fitness</a></li>
		           			<li><a href="#">Rowery i akcesoria</a></li>
		           			<li><a href="#">Sporty dru¿ynowe</a></li>
		           			<li><a href="#">Sporty ekstremalne</a></li>
		           			<li><a href="#">Sporty zimowe</a></li>
		           			<li><a href="#">Tennis i pokrewne</a></li>
		           			<li><a href="#">Turystyka</a></li>
		           			<li><a href="#">Wêdkarstwo</a></li>
		            	</ul>
		            </li>
		            <li class="dropdown-submenu">
		            	<a href="#">Kultura</a>
		            	<ul class="dropdown-menu">
		       				<li><a href="#">Ksi¹zki</a></li>
		           			<li><a href="#">Komiksy</a></li>
		           			<li><a href="#">Muzyka</a></li>
		           			<li><a href="#">Instrumenty</a></li>
		           			<li><a href="#">Filmy</a></li>
		            	</ul>
		            </li>
		            <li class="dropdown-submenu">
		            	<a href="#">Dla dzieci</a>
		            	<ul class="dropdown-menu">
		       				<li class="dropdown-submenu">
		       					<a href="#">Ubranka dla dzieci</a>
		       					<ul class="dropdown-menu">
		       						<li><a href="#">Dla ch³opców</a></li>
		       						<li><a href="#">Dla dziewczynek</a></li>
		       					</ul>
		       				</li>
		           			<li class="dropdown-submenu">
		           				<a href="#">Buciki</a>
		           				<ul class="dropdown-menu">
		       						<li><a href="#">Dla ch³opców</a></li>
		       						<li><a href="#">Dla dziewczynek</a></li>
		       					</ul>
		       				</li>
		           			<li><a href="#">Zabawki</a></li>
		           			<li><a href="#">Wózki dzieciêce</a></li>
		            	</ul>
		            </li>
		            <li class="divider"></li>
		            <li><a href="#">Inne</a></li>
		          </ul>
		        </li>
		      </ul>
		      <form class="navbar-form navbar-left" role="search">
		        <div class="form-group">
		          <input type="text" class="form-control" placeholder="Search">
		        </div>
		        <button type="submit" class="btn btn-default">Szukaj</button>
		      </form>
		      <ul class="nav navbar-nav navbar-right">
		        <li><a href="../SignUp.jsp">Rejestracja</a></li>
		        <li><a href="../Login.jsp">Logowanie</a></li>
		      </ul>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>
		<div class="container">

	        <div class="dropdown">
	            <a id="dLabel" role="button" data-toggle="dropdown" class="btn btn-warning" data-target="#" href="/page.html">
	                Sortuj <span class="caret"></span>
	            </a>
	    		<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
	              <li class="dropdown-submenu">
	              	<a tabindex="-1" href="#">Czas do zakończenia aukcji</a>
	              	<ul class="dropdown-menu">
	              		<li><a href="#">Krótki</a></li>
	              		<li><a href="#">Długi</a></li>
	              	</ul>
	              </li>
	              <li class="dropdown-submenu">
	              	<a href="#">Aktualna cena</a>
	              	<ul class="dropdown-menu">
	              		<li><a href="#">Rosnąco</a></li>
	              		<li><a href="#">Malejąco</a></li>
	              	</ul>
	              </li>	
	              <li class="divider"></li>
	              <li class="dropdown-submenu">
	                <a tabindex="-1" href="#">Kategorie</a>
	                <ul class="dropdown-menu">
	                  <li class="dropdown-submenu">
		            	<a href="#">Motoryzacja</a>
		            	<ul class="dropdown-menu">
		            		<li><a href="#">Samochody</a></li>
		            		<li><a href="#">Motocykle</a></li>
		            	</ul>
		            </li>
		            <li class="dropdown-submenu">
		            	<a href="#">Nieruchomoci</a>
		            	<ul class="dropdown-menu">
		            		<li><a href="#">Mieszkania</a></li>
		            		<li><a href="#">Domy</a></li>
		            		<li><a href="#">Działki</a></li>
		            	</ul>
		            </li>
		            <li class="dropdown-submenu">
		            	<a href="#">Elektronika</a>
		            	<ul class="dropdown-menu">
		            		<li class="dropdown-submenu">
		            			<a href="#">Telefony</a>
		            			<ul class="dropdown-menu">
		            				<li><a href="#">Telefony</a></li>
		            				<li><a href="#">Akcesoria</a></li>
		            			</ul>
		            		</li>
		            		<li><a href="#">Komputery</a></li>
		            		<li><a href="#">Telewizory</a></li>
		            		<li><a href="#">Konsole</a></li>
		            		<li><a href="#">Sprzêt DVD/Blu-ray</a></li>
		            		<li class="dropdown-submenu">
		            			<a href="#">Fotografia</a>
		            			<ul class="dropdown-menu">
		            				<li><a href="#">Aparaty</a></li>
		            				<li><a href="#">Kamery</a></li>
		            			</ul>
		            		</li>
		            		<li><a href="#">Sprzęt audio</a></li>
		            		<li class="dropdown-submenu">
		            			<a href="#">Gry</a>
		            			<ul class="dropdown-menu">
		            				<li><a href="#">Komputerowe</a></li>
		            				<li><a href="#">Gry na konsole</a></li>
		            			</ul>
		            		</li>
		            	</ul>
		            </li>
		            <li class="dropdown-submenu">
		            	<a href="#">Moda</a>
		            	<ul class="dropdown-menu">
		            		<li class="dropdown-submenu">
		            			<a href="#">Ubrania</a>
		            			<ul class="dropdown-menu">
		            				<li><a href="#">Damskie</a></li>
		            				<li><a href="#">Mêskie</a></li>
		            			</ul>
		            		</li>
		            		<li class="dropdown-submenu">
		            			<a href="#">Buty</a>
		            			<ul class="dropdown-menu">
		            				<li><a href="#">Damskie</a></li>
		            				<li><a href="#">Mêskie</a></li>
		            			</ul>
		            		</li>
		            		<li><a href="#">Biżuteria</a></li>
		            		<li class="dropdown-submenu">
		            			<a href="#">Zegarki</a>
		            			<ul class="dropdown-menu">
		            				<li><a href="#">Damskie</a></li>
		            				<li><a href="#">Mêskie</a></li>
		            			</ul>
		            		</li>
		            		<li class="dropdown-submenu">
		            			<a href="#">Dodatki</a>
		            			<ul class="dropdown-menu">
		            				<li><a href="#">Damskie</a></li>
		            				<li><a href="#">Mêskie</a></li>
		            			</ul>
		            		</li>
		            		<li class="dropdown-submenu">
		            			<a href="#">Kosmetyki</a>
		            			<ul class="dropdown-menu">
		            				<li><a href="#">Damskie</a></li>
		            				<li><a href="#">Mêskie</a></li>
		            			</ul>
		            		</li>
		            	</ul>
		            </li>
		            <li class="dropdown-submenu">
		            	<a href="#">Sport</a>
		            	<ul class="dropdown-menu">
		       				<li><a href="#">Fitness</a></li>
		           			<li><a href="#">Rowery i akcesoria</a></li>
		           			<li><a href="#">Sporty dru¿ynowe</a></li>
		           			<li><a href="#">Sporty ekstremalne</a></li>
		           			<li><a href="#">Sporty zimowe</a></li>
		           			<li><a href="#">Tennis i pokrewne</a></li>
		           			<li><a href="#">Turystyka</a></li>
		           			<li><a href="#">Wêdkarstwo</a></li>
		            	</ul>
		            </li>
		            <li class="dropdown-submenu">
		            	<a href="#">Kultura</a>
		            	<ul class="dropdown-menu">
		       				<li><a href="#">Ksi¹zki</a></li>
		           			<li><a href="#">Komiksy</a></li>
		           			<li><a href="#">Muzyka</a></li>
		           			<li><a href="#">Instrumenty</a></li>
		           			<li><a href="#">Filmy</a></li>
		            	</ul>
		            </li>
		            <li class="dropdown-submenu">
		            	<a href="#">Dla dzieci</a>
		            	<ul class="dropdown-menu">
		       				<li class="dropdown-submenu">
		       					<a href="#">Ubranka dla dzieci</a>
		       					<ul class="dropdown-menu">
		       						<li><a href="#">Dla ch³opców</a></li>
		       						<li><a href="#">Dla dziewczynek</a></li>
		       					</ul>
		       				</li>
		           			<li class="dropdown-submenu">
		           				<a href="#">Buciki</a>
		           				<ul class="dropdown-menu">
		       						<li><a href="#">Dla ch³opców</a></li>
		       						<li><a href="#">Dla dziewczynek</a></li>
		       					</ul>
		       				</li>
		           			<li><a href="#">Zabawki</a></li>
		           			<li><a href="#">Wózki dzieciêce</a></li>
		            	</ul>
		            </li>
		            <li class="divider"></li>
		            <li><a href="#">Inne</a></li>
		          </ul>
		        </li>
	                </ul>
	              </li>
	            </ul>
	        </div>
	        <div id="a">
			Ostatnie aukcje:         
			<%
				Connection conn = AuctionDB.connect();
			
			if(conn == null){
	            out.println("Unable to connect to database ");
	        }
			%>
			<table> 
				<tr>
    				<th>Produkt:</th>
    				<th>Lokalizacja:</th>
    				<th>Cena:</th>
  				</tr>
				<%
					ArrayList<String> auctions = AuctionDB.createAuctionsList(conn);
							Iterator<String> iterator = auctions.iterator();
							while(iterator.hasNext()){ 
								String name = iterator.next();
								String price = iterator.next();
								String id = iterator.next();
								String location = iterator.next();
				%>
					<tr>
							<td width="400" style="padding-bottom: 10px">
								<a href=<% out.print(id);%>>
									<%out.print(name);%>
								</a>							
							</td>
							
							<td width="200"><% out.print(location);%></td>
							
					 		<td><% out.print(price);%></td>
					 	
					 </tr>
				<%
					}
				%>
			</table>
			
	        
	        </div>
			<div class="col-md-9 col-md-offset-4">
				<nav>
	  				<ul class="pagination">
						<li class="disabled"><a href="#"><span aria-hidden="true">&laquo;</span><span class="sr-only">Previous</span></a></li>
						<li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#"><span aria-hidden="true">&raquo;</span><span class="sr-only">Next</span></a></li>
					</ul>
				</nav>
			</div>
			<hr>
			<footer>
				<p>&copy; TAS 2014</p>
			</footer>
		</div>
	</body>
</html>