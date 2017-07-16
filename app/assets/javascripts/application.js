// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui

//= require angular
//= require angular-animate
//= require angular-resource
//= require jquery.easy-autocomplete.min
//= require bootstrap
//= require_tree .


/*var app= angular.module('firstApplication', ['ngMaterial','ngMessages'])

    
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

*/