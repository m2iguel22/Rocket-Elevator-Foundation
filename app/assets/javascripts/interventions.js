$(document).ready(function(){


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
        $('#building_id').append(`<option value=''> <-- select a building --> </option>`);
        buildings.forEach(building => { console.log("building Number", building.id)
        $('#building_id').append('<option value='+building.id+'>'+ building.id + " administator : " + building.admin_full_name +'</option>>');
        });
      }
    })       
$("#buildingform").show();
}; //function customer  


function building(){
  
  var building_id = $("#building_id").val()
  console.log("building id number : ", building_id);

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
      success: function(batteries){ 
        $('#battery_id').empty();
        $('#battery_id').append(`<option value=''> <-- select a building --> </option>`);
        batteries.forEach(battery => { console.log("battery Number", battery.id)
          $('#battery_id').append('<option value='+battery.id+'>'+ battery.id + " type of :  " + battery.type_of_battery +'</option>>');
        });
      }
    })       
$("#batteryform").show();
}; //function building

function battery(){
  
  var battery_id = $("#battery_id").val()
  console.log("battery id : ", battery_id);

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
      success: function(columns){ 
        $('#column_id').empty();
        $('#column_id').append(`<option value=''> <-- select a column --> </option>`);
        columns.forEach(column => { console.log("column Number", column.id)
        $('#column_id').append('<option value='+column.id+'>'+ column.id + " - " + column.status +'</option>>');
        });
      }
    })       
$("#columnform").show();
}; //function battery 

function column(){
  
  var column_id = $("#column_id").val()
  console.log("column id number : ", column_id);
  
  console.log("test");
  $.ajax({
    url: '/get_elevators',
    dataType: 'json',
    type: 'get',
    contentType: 'application/json',
    data: {column_id: column_id},
    error: function (status, error)
    {
      console.error('AJAX Error: ' + status + error);
    },
    success: function(elevators){ 
      $('#elevator_id').empty();
      $('#elevator_id').append(`<option value=''> <-- select a elevator --> </option>`);
      elevators.forEach(elevator => { console.log("elevator Number :", elevator.id)
      $('#elevator_id').append('<option value='+elevator.id+'>'+ elevator.id + " - " + elevator.serial_number +'</option>>');
    });
      }
    })       
$("#elevatorform").show();
}; //function elevator 


// function elevator(){
  
//   var elevator_id = $("#elevator_id").val()
//   console.log("elevator id number : ", elevator_id);

//   $.ajax({
//     url: '/get_elevators',
//     dataType: 'json',
//     type: 'get',
//     contentType: 'application/json',
//     data: {column_id: column_id},
//     error: function (status, error)
//     {
//       console.error('AJAX Error: ' + status + error);
//     },
//   success: function(elevators){ 
//     $('#elevator_id').empty();
//     $('#elevator_id').append(`<option value=''> <-- select a elevator --> </option>`);
//     elevators.forEach(elevator => { console.log("elevator Number :", elevator.id)
//     $('#elevator_id').append('<option value='+elevator.id+'>'+ elevator.id + " - " + elevator.serial_number +'</option>>');
//   });
// }
// })     
// $("#elevatorform").show();
// }; //function customer   