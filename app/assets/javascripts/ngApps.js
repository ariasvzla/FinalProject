var app= angular.module('firstApplication', ['ngMaterial','ngMessages'])

    
  app.controller('dateController', function ($scope)
{
$scope.validation = function (startDate, endDate){
  


if ($("#origin").val()=="") {
 
  $(".errorHand").html("Type an Origin");
   $(".errorHand").addClass('animated jackInTheBox');
    
     // $("#errorHand").hide(1121);
     return false;
}
if ($("#dest").val()=="") {

   $(".errorHand").html("Type a Destination");
   $(".errorHand").addClass('animated jackInTheBox');

  
     // $("#errorHand").hide(1121);
     return false;
}
if ($("#exampleInputAmount").val()=="") {
      $("#errorHand").hide();
       $("#errorHand4").hide();
     $("#errorHand5").hide();
       $("#errorHand6").hide();
     $("#errorHand7").hide();
  $("#errorHand8").hide();
  $("#errorHand2").hide();

   $("#errorHand3").addClass('animated jackInTheBox');
     $("#errorHand3").html("Set a Budget please");
     // $("#errorHand").hide(1121);
     return false;
  }
  if ($("#exampleInputAmount").val()<200){
          $("#errorHand").hide();
     $("#errorHand3").hide();
      $("#errorHand2").hide();
     $("#errorHand5").hide();
       $("#errorHand6").hide();
     $("#errorHand7").hide();
  $("#errorHand8").hide();
 
       $("#errorHand4").addClass('animated jackInTheBox');
      $("#errorHand4").html("Budget too low!");
     
         return false;
      }
      var d1= startDate;
      var d2= endDate;
   var nigths = d1-d2;
  
if (endDate == undefined && startDate==undefined){
   
         $("#errorHand").hide();
     $("#errorHand3").hide();
      $("#errorHand2").hide();
    
       $("#errorHand6").hide();
     $("#errorHand7").hide();
  $("#errorHand8").hide();
      $("#errorHand4").hide();
    $("#errorHand5").addClass('animated jackInTheBox');
    $("#errorHand5").html("Dates cannot be blank");
   
    return false;
  }if (startDate==undefined){
          $("#errorHand").hide();
     $("#errorHand3").hide();
      $("#errorHand2").hide();
     $("#errorHand5").hide();
     $("#errorHand7").hide();
  $("#errorHand8").hide();
      $("#errorHand4").hide();
  
     $("#errorHand6").addClass('animated jackInTheBox');
    $("#errorHand6").html("Select a Departure Date please");
    
    return false;
  }
  if (endDate==undefined){
          $("#errorHand").hide();
     $("#errorHand3").hide();
      $("#errorHand2").hide();
  $("#errorHand8").hide();
      $("#errorHand4").hide();
   $("#errorHand6").hide();
    $("#errorHand5").hide();
    $("#errorHand7").addClass('animated jackInTheBox');
   $("#errorHand7").html("Select a Returning Date please");
    //$("#errorHand").hide(3121);
   return false;
  } if (d1>d2){
         $("#errorHand").hide();
     $("#errorHand3").hide();
      $("#errorHand2").hide();
      $("#errorHand4").hide();
   $("#errorHand6").hide();
    $("#errorHand7").hide();
     $("#errorHand5").hide();
     $("#errorHand8").addClass('animated jackInTheBox');
     $("#errorHand8").html("Start date must be before the End date");
      //$("#errorHand").hide(3121);
       return false;
  }


  else {
     $("#errorHand").hide();
     $("#errorHand2").hide();
      $("#errorHand3").hide();
     $("#errorHand4").hide();
      $("#errorHand5").hide();
     $("#errorHand6").hide();
      $("#errorHand7").hide();
     $("#errorHand8").hide();
    return true;
  }
 }
});
