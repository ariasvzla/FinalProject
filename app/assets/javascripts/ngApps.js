var app= angular.module('firstApplication', ['ngMaterial','ngMessages'])

    
  app.controller('dateController', function ($scope)
{
$scope.validation = function (startDate, endDate){
  


if ($("#origin").val()=="") {

   $(".errorHand").html("Enter an Origin!");
     $(".errorHand").show();
 $(".errorHand").addClass('animated tada');
   $(".errorHand").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
    function (e){
       $(".errorHand").removeClass('tada');
   }); 
    
     // $("#errorHand").hide(1121);
     return false;
}
if ($("#dest").val()=="") {
   $(".errorHand").html("Enter a Destination!");
     $(".errorHand").show();
 $(".errorHand").addClass('animated tada');
   $(".errorHand").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
    function (e){
       $(".errorHand").removeClass('tada');
   }); 
     return false;
}
if ($("#exampleInputAmount").val()=="") {

   $(".errorHand").html("Set a Budget please!");
     $(".errorHand").show();
 $(".errorHand").addClass('animated tada');
   $(".errorHand").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
    function (e){
       $(".errorHand").removeClass('tada');
   }); 
     return false;
  }

  if ($("#exampleInputAmount").val()<200){
 
       $(".errorHand").html("Budget too low!");
     $(".errorHand").show();
 $(".errorHand").addClass('animated tada');
   $(".errorHand").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
    function (e){
       $(".errorHand").removeClass('tada');
   }); 
         return false;
      }
      var d1= startDate;
      var d2= endDate;
   var nigths = d1-d2;
  
if (endDate == undefined && startDate==undefined){
   
   $(".errorHand").html("Dates cannot be blank");
     $(".errorHand").show();
 $(".errorHand").addClass('animated tada');
   $(".errorHand").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
    function (e){
       $(".errorHand").removeClass('tada');
   }); 
   
    return false;
  }if (startDate==undefined){

     $(".errorHand").html("Departure date is blank!");
     $(".errorHand").show();
 $(".errorHand").addClass('animated tada');
   $(".errorHand").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
    function (e){
       $(".errorHand").removeClass('tada');
   }); 
    
    return false;
  }
  if (endDate==undefined){
   
     $(".errorHand").html("Returning date is blank");
     $(".errorHand").show();
 $(".errorHand").addClass('animated tada');
   $(".errorHand").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
    function (e){
       $(".errorHand").removeClass('tada');
   }); 
    
   return false;
  } if (d1>d2){

        $(".errorHand").html("Departure date is greater than returning date!");
     $(".errorHand").show();
 $(".errorHand").addClass('animated tada');
   $(".errorHand").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
    function (e){
       $(".errorHand").removeClass('tada');
   }); 
    
       return false;
  }


  else {
     $(".errorHand").hide();

    return true;
  }
 }
});
