<%@page import="com.Data.Storage" %>
<%@page import="java.sql.*" %>

<%
	
	try {
	
		Storage st = new Storage();
		String fn,ln,pass,pno,city,gender,age,des;
		
		fn=request.getParameter("fn");								// fn-> name of field 
		ln=request.getParameter("ln");
		pass=request.getParameter("pass");
		pno=request.getParameter("pno");
		city=request.getParameter("city");
		gender=request.getParameter("gender");
		age=request.getParameter("age");
		des=request.getParameter("des");
		
		int regID = Integer.parseInt(request.getParameter("regID"));		
		System.out.print(regID);
		
		System.out.print("after data");
		//st.ps = st.con.prepareStatement("delete from registration WHERE regID=" + regID + "");
		st.ps = st.con.prepareStatement("update registration set deleteData='Yes' WHERE regID=" + regID + "");
		
	
		st.ps.executeUpdate();
		st.con.close();
		response.sendRedirect("index.jsp");
	
	} 
	catch(SQLException e){
		
        out.println(e);
    }

%>