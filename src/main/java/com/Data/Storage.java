package com.Data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Storage {
	
		public Connection con;
		public PreparedStatement ps;
		public ResultSet rs;
		
		public Storage()
		{
				try
				{
					Class.forName("com.mysql.jdbc.Driver");
					con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deep_db","root","root");					
					//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deep_db?verifyServerCertificate=false&useSSL=false","root","root");
					if (con!=null)
		            {
		                System.out.println("Connect Successfully.");
		            }
				}
				catch(Exception e)
		        {
		            System.out.println(e);
		        }
		}
	
}
