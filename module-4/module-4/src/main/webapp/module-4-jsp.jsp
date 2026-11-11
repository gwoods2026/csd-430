<!-- Garrett Woods Module 4 -->
<%@ page import="com.assignment.beans.BookBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Module 4</title>
<style>
	body {font-family: Arial, sans-serif; margin: 30px; background-color: #f4f7f6;}
	.info-box {background: #eef2f3; padding: 15px; border-left: 5px solid #3498db; margin-bottom: 20px;}
	table {border-collapse: collapse; width: 60%; background #fff; box-shadow: 0 2px 5px rgba(0,0,0,0.1)}
	th, td {border: 1px solid #dddddd; text-align: left; padding: 12px}
	th {background-color: #3498db; color: white;}
	tr:nth-child(even) {background-color: #f2f2f2;}
	
</style>
</head>
<body>

	<h1>Books I like</h1>
	
	<div class="info-box">
		<p>
			This is a list pulled from java and displayed on the web page
		</p>
	</div>
	
	<!-- sets the information up for use later -->
	<%
		BookBean[] library = new BookBean[5];
	
		library[0] = new BookBean();
		library[0].setTitle("The Dark Tower");
		library[0].setAuthor("Steven King");
		library[0].setGenre("Sci-Fi, Western, Fantasy");
		library[0].setPublishYear("1982-2012");
		library[0].setSummary("The Dark Tower series follows The Gunslinger and his team as they travel the world to find the Dark Tower");
		
		library[1] = new BookBean();
		library[1].setTitle("The Wheel of Time");
		library[1].setAuthor("Robert Jordan");
		library[1].setGenre("Fantasy");
		library[1].setPublishYear("1990-2013");
		library[1].setSummary("A young group of friends gain powers and end up fighting evil to save the world");
		
		library[2] = new BookBean();
		library[2].setTitle("The Mistborne Triligy");
		library[2].setAuthor("Brandon Sanderson");
		library[2].setGenre("Fantasy");
		library[2].setPublishYear("2006-2008");
		library[2].setSummary("A ragtag group of thevies and criminals take down the governmen and instill their own");
		
		library[3] = new BookBean();
		library[3].setTitle("Project Hail Mary");
		library[3].setAuthor("Andy Weir");
		library[3].setGenre("Sci-Fi");
		library[3].setPublishYear("2021");
		library[3].setSummary("The earth is dying and we send a team to deep space to find out why");
		
		library[4] = new BookBean();
		library[4].setTitle("The Martin");
		library[4].setAuthor("Andy Weir");
		library[4].setGenre("Sci-Fi");
		library[4].setPublishYear("2011");
		library[4].setSummary("A mission on Mars goes wrong and a signle astronaught is left on the surface");
	%>
	
	
	<!-- Creates the table -->
	<div>
		<table>
			<thead>
				<tr>
					<th>Title</th>
					<th>Author</th>
					<th>Genre</th>
					<th>Year Published</th>
					<th>Short Summary</th>
				</tr>
			</thead>
			<tbody>
			
				<!-- loops through each entry getting the information requested -->
				<%
					for (int i = 0; i < library.length; i++) {
				%>
				
					<tr>
					
						<!-- gets the requested data and places it in the table -->
						<td><%= library[i].getTitle() %></td>
						<td><%= library[i].getAuthor() %></td>
						<td><%= library[i].getGenre() %></td>
						<td><%= library[i].getPublishYear() %></td>
						<td><%= library[i].getSummary() %></td>
					</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>

</body>
</html>