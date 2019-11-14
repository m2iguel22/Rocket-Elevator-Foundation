$(document).ready(function(){

    console.log("BEN LOADE");


}) //ready

function customer(){
  
  var customer_id = $("#customer_id").val()
  console.log("Hello", customer_id);

  $.ajax({
    url: '/get_buildings',
    dataType: 'json',
    type: 'get',
    contentType: 'application/json',
    data: {customer_id: customer_id},
    
    error: function (status, error)
      {
        console.error('AJAX Error: ' + status + error);
      },
      success: function(buildings){ 
        $('#building_id').empty();
        buildings.forEach(building => { console.log("building Number", building.id)
        $('#building_id').append('<option value='+building.id+'>'+ building.id + " administator : " + building.admin_full_name +'</option>>');
        });
      }
    })       
$("#buildingform").show();
}; //function customer  


function building(){
  
  var building_id = $("#building_id").val()
  console.log("Hello", building_id);

  $.ajax({
    url: '/get_batteries',
    dataType: 'json',
    type: 'get',
    contentType: 'application/json',
    data: {building_id: building_id},
    
    error: function (status, error)
      {
        console.error('AJAX Error: ' + status + error);
      },
      success: function(battery){ 
        $('#battery_id').empty();
        battery.forEach(battery => { console.log("battery Number", battery.id)
        $('#battery_id').append('<option value='+battery.id+'>'+ battery.id + " - " + battery.type_of_battery +'</option>>');
        });
      }
    })       
$("#batteryform").show();
}; //function building

function battery(){
  
  var battery_id = $("#battery_id").val()
  console.log("Hello", battery_id);

  $.ajax({
    url: '/get_columns',
    dataType: 'json',
    type: 'get',
    contentType: 'application/json',
    data: {battery_id: battery_id},
    
    error: function (status, error)
      {
        console.error('AJAX Error: ' + status + error);
      },
      success: function(column){ 
        $('#column_id').empty();
        column.forEach(column => { console.log("column Number", columns.id)
        $('#column_id').append('<option value='+column.id+'>'+ column.id + " - " + column.type_of_battery +'</option>>');
        });
      }
    })       
$("#batteryform").show();
}; //function customer  
