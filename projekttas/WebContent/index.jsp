<%@page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/bootstrap-theme.min.css">
		<link rel="stylesheet" href="css/style.css">
		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</head>
	<body>
		<nav class="navbar navbar-default" style="margin-bottom:0px;" role="navigation">
		  <div class="container-fluid">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="index.jsp">Seriws Aukcyjny</a>
		    </div>

		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
		        <li class="active"><a href="index.jsp">Home</a></li>
		        <li><a href="auctions/Auction.jsp">Aukcje</a></li>
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
		            	<a href="#">Nieruchomości</a>
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
		            				<li><a href="#">Męskie</a></li>
		            			</ul>
		            		</li>
		            		<li class="dropdown-submenu">
		            			<a href="#">Buty</a>
		            			<ul class="dropdown-menu">
		            				<li><a href="#">Damskie</a></li>
		            				<li><a href="#">Męskie</a></li>
		            			</ul>
		            		</li>
		            		<li><a href="#">Biżuteria</a></li>
		            		<li class="dropdown-submenu">
		            			<a href="#">Zegarki</a>
		            			<ul class="dropdown-menu">
		            				<li><a href="#">Damskie</a></li>
		            				<li><a href="#">Męskie</a></li>
		            			</ul>
		            		</li>
		            		<li class="dropdown-submenu">
		            			<a href="#">Dodatki</a>
		            			<ul class="dropdown-menu">
		            				<li><a href="#">Damskie</a></li>
		            				<li><a href="#">Męskie</a></li>
		            			</ul>
		            		</li>
		            		<li class="dropdown-submenu">
		            			<a href="#">Kosmetyki</a>
		            			<ul class="dropdown-menu">
		            				<li><a href="#">Damskie</a></li>
		            				<li><a href="#">Męskie</a></li>
		            			</ul>
		            		</li>
		            	</ul>
		            </li>
		            <li class="dropdown-submenu">
		            	<a href="#">Sport</a>
		            	<ul class="dropdown-menu">
		       				<li><a href="#">Fitness</a></li>
		           			<li><a href="#">Rowery i akcesoria</a></li>
		           			<li><a href="#">Sporty drużynowe</a></li>
		           			<li><a href="#">Sporty ekstremalne</a></li>
		           			<li><a href="#">Sporty zimowe</a></li>
		           			<li><a href="#">Tennis i pokrewne</a></li>
		           			<li><a href="#">Turystyka</a></li>
		           			<li><a href="#">Wędkarstwo</a></li>
		            	</ul>
		            </li>
		            <li class="dropdown-submenu">
		            	<a href="#">Kultura</a>
		            	<ul class="dropdown-menu">
		       				<li><a href="#">Książki</a></li>
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
		       						<li><a href="#">Dla chłopców</a></li>
		       						<li><a href="#">Dla dziewczynek</a></li>
		       					</ul>
		       				</li>
		           			<li class="dropdown-submenu">
		           				<a href="#">Buciki</a>
		           				<ul class="dropdown-menu">
		       						<li><a href="#">Dla chłopców</a></li>
		       						<li><a href="#">Dla dziewczynek</a></li>
		       					</ul>
		       				</li>
		           			<li><a href="#">Zabawki</a></li>
		           			<li><a href="#">Wózki dziecięce</a></li>
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
		        <li><a href="SignUp.jsp">Rejestracja</a></li>
		        <li><a href="Login.jsp">Logowanie</a></li>
		      </ul>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>

		    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Dołącz do nas.</h1>
              <p>Tylko zarejestrowani użytkownicy mogą korzystać w pełni z naszego serwisu. Nie czekaj, więc i załóż darmowe konto.</p>
              <p><a class="btn btn-lg btn-primary" href="auctions/SingUp.jsp" role="button">Dołącz do nas!</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img src="data:image/gif;base64,R0lGODlhAQABAIAAAGZmZgAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Kupuj, sprzedawaj, licytuj.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img src="data:image/gif;base64,R0lGODlhAQABAIAAAFVVVQAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>One more for good measure.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
		<div class="container">
			<!--<div id="a">
	        <div class="dropdown">
	            <a id="dLabel" role="button" data-toggle="dropdown" class="btn btn-primary" data-target="#" href="/page.html">
	                Lista <span class="caret"></span>
	            </a>
	    		<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
	              <li><a href="#">Akcja 1</a></li>
	              <li><a href="#">Akcja 2</a></li>
	              <li class="divider"></li>
	              <li class="dropdown-submenu">
	                <a tabindex="-1" href="#">Wiêcej opcji</a>
	                <ul class="dropdown-menu">
	                  <li><a tabindex="-1" href="#">2 lvl</a></li>
	                  <li class="dropdown-submenu">
	                    <a href="#">Wiêcej</a>
	                    <ul class="dropdown-menu">
	                        <li><a href="#">3 lvl</a></li>
	                    	<li><a href="#">3 lvl</a></li>
	                    </ul>
	                  </li>
	                  <li><a href="#">2 lvl</a></li>
	                  <li><a href="#">2 lvl</a></li>
	                </ul>
	              </li>
	            </ul>
	        </div>
	    </div>-->
	    <div class="row">
		    	<div class="col-md-4">
		    		<h2>O serwisie</h2>
		    		<p>
		    			Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
		    		</p>
		    		<p>
		    			<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
		    		</p>
		    	</div>
		    	<div class="col-md-4">
		    		<h2>Dlaczego nasz serwis</h2>
		    		<p>
		    			Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
		    		</p>
		    		<p>
		    			<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
		    		</p>
		    	</div>
		    	<div class="col-md-4">
		    		<h2>O nas</h2>
		    		<p>
		    			Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
		    		</p>
		    		<p>
		    			<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
		    		</p>
		    	</div>
			</div>
			<hr>
			<footer>
				<p>&copy; TAS 2014</p>
			</footer>
		</div>
	</body>
</html>