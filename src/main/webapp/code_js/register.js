function getAge()
{
	var age=$("#lblRange").html($("#age").val());
}

function registerInsertCrud()  // Save Button #id
{	
	var fn=$("#fn").val();  // fn-> id of field
	var ln=$("#ln").val();
	var pass=$("#pass").val();
	var pno=$("#pno").val();
	var city=$("#city").val();
	var gender= $("input[name='gender']:checked").val(); 
	var age=$("#age").val();
	var des=$("#des").val();
	
	if(fn== "" || ln=="" || pass=="" || pno=="" || city=="" || gender=="" || age=="" || des=="")
	{	
		swal("User Register Required","Ples Fill Record ","error");
	}
	else
	{
		$.ajax({
				
			url		:	'insertRecord.jsp',
			type	:	'POST',
			
			data	:
			{
				fn,
				ln,
				pass,
				pno,
				city,
				gender,
				age,
				des,
			},
	
			success	: function(data){
				
				if(data != ""){
					
					swal("User Register","Record Saved Successfully","success"); 	// sweet
																					// alert
					clearRegisterAll();
					
					saveAllRecords();
//					 getDataTable("getform1","tblForm1","tbodyForm1");
				}
			}
		});
		$("#insertbtn").show();
		$("#updatebtn").hide();
	}	
}
function saveAllRecords()
{

	$.ajax({
		
		url		:	'SelectQueryForRefresh.jsp',
		type	:	'POST',
		
		data	:
		{
			
		},

		success	: function(data){
			
			if(data != ""){
				
				swal("User Register","Record Saved Successfully","success"); 	// sweet
																				// alert
				// clearRegisterAll();
			}
		}
	});
	
	
}
function clearRegisterAll() // New Button
{	
	$("#fn").val("");
	$("#ln").val("");
	$("#pass").val("");
	$("#pno").val("");
	$("#city").val("");
	$("#male").prop("checked", false); 
	$("#female").prop("checked", false);
	$("#age").val("");
	$("#des").val("");
}

function update_1() {

	$("#myTable > tbody > tr").click(function() {

		var regID = $(this).find(".regID").html();
		var fn = $(this).find(".fn").html();
		var ln = $(this).find(".ln").html();
		var pass = $(this).find(".pass").html();
		var pno = $(this).find(".pno").html();
		var city = $(this).find(".city").html();
		var gender = $(this).find(".gender").html();
		var age = $(this).find(".age").html();
		var dis = $(this).find(".dis").html();
		
		// var gender= $("input[name='gender']:checked").val();
		
		$("#myTable > tbody > tr").unbind("click");   // myTable -> table name

		$("#regID").val(regID);
		$("#fn").val(fn);
		$("#ln").val(ln);
		$("#pass").val(pass);
		$("#pno").val(pno);
		$("#city").val(city);
		
		if(gender=="male"){
			
				$("#male").prop("checked", true);
		}
		else if(gender=="female"){
			
			$("#female").prop("checked", true);
		}
		
		$("#age").val(age);
		$("#dis").val(dis);
		

	});

	$("#insertbtn").hide();
	$("#updatebtn").show();
	// alert("after btn");

}

function updateQuery() {

	var regID = $("#regID").val();
	var fn=$("#fn").val();  			// fn-> id of field
	var ln=$("#ln").val();
	var pass=$("#pass").val();
	var pno=$("#pno").val();
	var city=$("#city").val();
	var gender= $("input[name='gender']:checked").val(); 
	var age=$("#age").val();
	var des=$("#des").val();
	
	alert("in update query");
	// ///////////////////////////alert(idproject1+Name+email+Mobile+Username+Password+Address);

	$.ajax({
		
		url : 'updateRecord.jsp',
		type : 'POST',
		data : {
			
			regID:regID,
			fn:fn,
			ln:ln,
			pass:pass,
			pno:pno,
			city:city,
			gender:gender,
			age:age,
			des:des,

		},
		
		success	: function(data){
			alert("HII");
			if(data != ""){
				
				swal("User Register","Record Saved Successfully","success");
				
			}
		}

	});

}

function deleteform1() {
		
	$("#myTable > tbody > tr").click(function() {

		var regID = $(this).find(".regID").html();
				
		$("#myTable > tbody > tr").unbind("click");   // myTable -> table name

		$("#regID").val(regID);
		
		
// var regID = $("#regID").val();
// alert(regID);
	
// $.ajax({
//
// url : 'deleteRecord.jsp',
// type : 'POST',
// data : {
// regID : regID,
// },
//
// success : function(data){
//				
// if(data != ""){
//					
// swal("User Register","Record deleted Successfully","success");
// }
// }
//
// });
		
		
		var regID=$("#regID").val(); 
		
		swal({
            title: "Are you sure to Delete : " + regID + " Row Contact Account Detail ?",
            text: "Once deleted, you will not be able to recover this !",
            icon: "warning",
            buttons: true,
            dangerMode: true,
        }).then((willDelete) => {
            if (willDelete) {

                $.ajax({
                    url: 'deleteRecord.jsp',
                    type: 'POST',
                    data: {
                    	regID : regID,                    
                    },
                    cache: false,
                    success: function (data) {
                        if (data !== "") {

                            swal("Contact Account Detail", "Delete Successfully", "success");
                           
                        }
                    }
                });
            } else {
                swal("Your data is safe !");
            }
        });

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	});
}



