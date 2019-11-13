$(document).ready(function(){


    $("#customer_id").change(function(){
        var project = $(this).val();
        if(project == ''){
        $("#customer_id").prop("disabled", true);
         }else{
            $("#building_id").prop("disabled", false);
            console.log();
        }
        $.ajax({
          url: "/interventions",
          method: "GET",  
          dataType: "json",
          data: {id: project},
          error: function (xhr, status, error) {
            	console.error('AJAX Error: ' + status + error);
          },
          success: function (response) {
                console.log(response);
                
            
            	var buildings = response["add_update"];
             	$("#building_id").empty();
               console.log(buildings);
             	$("#building_id").append('<option>Select Building</option>');
             	for(var i = 0; i < buildings.length; i++){
  
                 $("#building_id").append('<option value="' + buildings[i]["id"] + '">' +buildings[i]["address_id"] + '</option>');
                 
             	}
          }
        });
        console.log(project)
  });

  $(document).ready(function(){


    ///// building_id ///////


    $("#customer_id").change(function(){
        var project = $(this).val();
        if(project == ''){
        $("#customer_id").prop("disabled", true);
         }else{
            $("#building_id").prop("disabled", false);
            console.log();
        }
        $.ajax({
          url: "/interventions",
          method: "GET",  
          dataType: "json",
          data: {id: project},
          error: function (xhr, status, error) {
            	console.error('AJAX Error: ' + status + error);
          },
          success: function (response) {
                console.log(response);
                
            
            	var buildings = response["add_update"];
             	$("#building_id").empty();
               console.log(buildings);
             	$("#building_id").append('<option>Select Building</option>');
             	for(var i = 0; i < buildings.length; i++){
  
                 $("#building_id").append('<option value="' + buildings[i]["id"] + '">' +buildings[i]["address_id"] + '</option>');
                 
             	}
          }
        });
        console.log(project)
  });
  $(document).ready(function(){

    ///// battery_id ///////


    $("#customer_id").change(function(){
        var project = $(this).val();
        if(project == ''){
        $("#customer_id").prop("disabled", true);
         }else{
            $("#building_id").prop("disabled", false);
            console.log();
        }
        $.ajax({
          url: "/interventions",
          method: "GET",  
          dataType: "json",
          data: {id: project},
          error: function (xhr, status, error) {
            	console.error('AJAX Error: ' + status + error);
          },
          success: function (response) {
                console.log(response);
                
            
            	var buildings = response["add_update"];
             	$("#building_id").empty();
               console.log(buildings);
             	$("#building_id").append('<option>Select Building</option>');
             	for(var i = 0; i < buildings.length; i++){
  
                 $("#building_id").append('<option value="' + buildings[i]["id"] + '">' +buildings[i]["address_id"] + '</option>');
                 
             	}
          }
        });
        console.log(project)
  });

  $(document).ready(function(){


    ////// column_id ///////

    $("#customer_id").change(function(){
        var project = $(this).val();
        if(project == ''){
        $("#customer_id").prop("disabled", true);
         }else{
            $("#building_id").prop("disabled", false);
            console.log();
        }
        $.ajax({
          url: "/interventions",
          method: "GET",  
          dataType: "json",
          data: {id: project},
          error: function (xhr, status, error) {
            	console.error('AJAX Error: ' + status + error);
          },
          success: function (response) {
                console.log(response);
                
            
            	var buildings = response["add_update"];
             	$("#building_id").empty();
               console.log(buildings);
             	$("#building_id").append('<option>Select Building</option>');
             	for(var i = 0; i < buildings.length; i++){
  
                 $("#building_id").append('<option value="' + buildings[i]["id"] + '">' +buildings[i]["address_id"] + '</option>');
                 
                }
            }
          });
          console.log(project)
        });
    })
