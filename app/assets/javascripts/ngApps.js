var app= angular.module('firstApplication', ['ngMaterial','ngMessages'])

    
  app.controller('dateController', function ($scope)
{
$scope.validation = function (startDate, endDate){
  


if ($("#origin").val()=="") {
   $("#errorHand").show(300 );
     $("#errorHand").html("Type an Origin");
      $("#errorHand").hide(1121);
     return false;
}
if ($("#dest").val()=="") {
   $("#errorHand").show(300 );
     $("#errorHand").html("Type a Destination");
      $("#errorHand").hide(1121);
     return false;
}
if ($("#exampleInputAmount").val()=="") {
   $("#errorHand").show(300 );
     $("#errorHand").html("Set a Budget please");
      $("#errorHand").hide(1121);
     return false;
  }
    else if ($("#exampleInputAmount").val()<100){
      $("#errorHand").show(300 );
      $("#errorHand").html("Budget too low!");
      $("#errorHand").hide(1121);
         return false;
      }

  
if (endDate == undefined && startDate==undefined){
  $("#errorHand").show(300 );
    $("#errorHand").html("Dates cannot be blank");
     $("#errorHand").hide(3121);
    return false;
  }if (startDate==undefined){
    $("#errorHand").show(300 );
    $("#errorHand").html("Select a Departure Date please");
     $("#errorHand").hide(3121);
    return false;
  }
  if (endDate==undefined){
    $("#errorHand").show(300 );
   $("#errorHand").html("Select a Returning Date please");
    $("#errorHand").hide(3121);
   return false;
  } if (d1>d2){
    $("#errorHand").show(300 );
     $("#errorHand").html("Start date must be before the End date");
      $("#errorHand").hide(3121);
       return false;
  }else {
     
    return true;
  }
 }

    
});
