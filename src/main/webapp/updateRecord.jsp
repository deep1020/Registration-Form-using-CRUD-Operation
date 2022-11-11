<%@page import="com.Data.Storage" %>
<%@page import="java.sql.*" %>

<% 

		try
	        {
				Storage st=new Storage();	
				String fn,ln,pass,pno,city,gender,age,des;
		
				
				int regID = Integer.parseInt(request.getParameter("regID"));
				fn=request.getParameter("fn");								// fn-> name of field 
				ln=request.getParameter("ln");
				pass=request.getParameter("pass");
				pno=request.getParameter("pno");
				city=request.getParameter("city");
				gender=request.getParameter("gender");
				age=request.getParameter("age");
				des=request.getParameter("des");
				
				System.out.println("First Name "+fn);
				System.out.println("Last Name "+ln);
				System.out.println("Password "+pass);
				System.out.println("Phone No "+pno);
				System.out.println("City "+city);
				System.out.println("Gender "+gender);
				System.out.println("Current Age "+age);
				System.out.println("Notes "+des);
	            
	          
	            System.out.print("after data");
	            st.ps=st.con.prepareStatement("update registration SET fname='" + fn + "',lname='" + ln + "',password='"
	    				+ pass + "',phoneno='" + pno + "',city='" + city + "',gender='" + gender
	    				+ "', age='" + age + "', description='" + des +"'  where regID=" + regID + "");
	            
// 	            st.ps.setString(1, fn);
// 	            st.ps.setString(2, ln);
// 	            st.ps.setString(3, pass);
// 	            st.ps.setString(4, pno);
// 	            st.ps.setString(5, city);
// 	            st.ps.setString(6, gender);
// 	            st.ps.setString(7, age);
// 	            st.ps.setString(8, des);
	            
	            st.ps.executeUpdate();
	            st.con.close();
	            response.sendRedirect("index.jsp");
	        }
	        catch(SQLException e)
	        {
	            out.println(e);
	        }
%>	        