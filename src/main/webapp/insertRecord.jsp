<%@page import="com.Data.Storage" %>
<%@page import="java.sql.*" %>

<% 
		try
	        {
				Storage st=new Storage();	
				String fn,ln,pass,pno,city,gender,age,des;
				
				fn=request.getParameter("fn");  // fn-> name of field
				ln=request.getParameter("ln");
				pass=request.getParameter("pass");
				pno=request.getParameter("pno");
				city=request.getParameter("city");
				gender=request.getParameter("gender");
				age=request.getParameter("age");
				des=request.getParameter("des");
				
// 				out.println("First Name "+fn);
// 				out.println("Last Name "+ln);
// 				out.println("Password "+pass);
// 				out.println("Phone No "+pno);
// 				out.println("City "+city);
// 				out.println("Gender "+gender);
// 				out.println("Current Age "+age);
// 				out.println("Notes "+des);
	            //PreparedStatement ps=st.con.prepareStatement("insert into registration(fname,lname,password,pno,city,gender,age,description) values(?,?,?,?,?,?,?,?)");
	            st.ps=st.con.prepareStatement("insert into registration(fname,lname,password,phoneno,city,gender,age,description) values(?,?,?,?,?,?,?,?)");
	            
	            st.ps.setString(1, fn);
	            st.ps.setString(2, ln);
	            st.ps.setString(3, pass);
	            st.ps.setString(4, pno);
	            st.ps.setString(5, city);
	            st.ps.setString(6, gender);
	            st.ps.setString(7, age);
	            st.ps.setString(8, des);
	            
	            
	            
	            st.ps.executeUpdate();
	            st.con.close();
	            response.sendRedirect("index.jsp");
	        }
	        catch(SQLException e)
	        {
	            out.println(e);
	        }
%>	        