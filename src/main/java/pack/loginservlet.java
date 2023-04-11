package pack;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Data.Storage;

public class loginservlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public loginservlet() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		boolean flag=false;
		String uname = request.getParameter("username");
		System.out.println(uname);
		String pass = request.getParameter("password");
		System.out.println(pass);
		
		try {
			Storage sg=new Storage();
			Statement st = sg.con.createStatement();
			ResultSet rs = st.executeQuery("SELECT regID,fname,password FROM deep_db.registration");
			
			while(rs.next()) 
			{
				String fn = rs.getString("fname");
				String ps = rs.getString("password");
				//String dl = rs.getString("deleteData");
				
				int id = rs.getInt("regID");

				if (fn.equals(uname) && ps.equals(pass)) 
				{
					session.setAttribute("User name", uname);
					session.setAttribute("ID", id);
					flag=true;
					response.sendRedirect("feedback.jsp");
				}
			}
			if (flag != true) 
			{
				String msg = "Invalid Username or Password";
				response.sendRedirect("login_page.jsp?msg=" + msg);
			}
		}

		catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.toString());
		}

		//response.getWriter().append("Served at: ");
	}
	
	
}
