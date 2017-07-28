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
    function (e){s
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
      //var nigths = d1-d2;
  
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


$scope.adults= 1;
  $scope.clear = function(){
      $scope.interests = undefined;
      $scope.origin= undefined;
      $scope.dest= undefined;
      $scope.budget= undefined;
      $scope.adults= undefined;
      $scope.kids= undefined;
      $scope.startDate = undefined;
      $scope.endDate= undefined;
  };


$scope.showAv= function(){
       $("#roomT").hide();
       $("#roomtT").hide();
  $("#titleAv").show();
  $("#titleAv").addClass('animated fadeIn');
  $("#titleAv").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
 function (e){
       $("#titleAv").removeClass('fadeIn');
}); 

  $("#avaibilities").show();
  $("#avaibilities").addClass('animated fadeIn');
  $("#avaibilities").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
 function (e){
       $("#avaibilities").removeClass('fadeIn');
}); 
$("#back").show();

}

$scope.backAv= function (){
  $("#avaibilities").hide();
  $("#titleAv").hide();
  $("#back").hide();
  $("#roomT").show();
  $("#roomT").addClass('animated fadeIn');
  $("#roomT").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
 function (e){
       $("#roomT").removeClass('fadeIn');
}); 
  $("#roomtT").show();
$("#roomtT").addClass('animated fadeIn');
  $("#roomtT").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
 function (e){
       $("#roomtT").removeClass('fadeIn');
}); 

};



 $scope.face = 'http://95tvdbxmdo-flywheel.netdna-ssl.com/wp-content/uploads/2014/06/content.jpg';

$scope.showH= function(){

  $("#hideH").show(500);

$("#hideH").addClass('animated bounceIn');
  $("#hideH").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
 function (e){
       $("#hideH").removeClass('bounceIn');
}); 

}

});

var validate = function(){
// ---------startdate room avaibility----------------
  var d1 = new Date($("#d1").val());
  // -------end date room avibility---------------
  var d2 = new Date($("#d2").val());
     // ----------check in user--------------------------
   var d3 = new Date( $('#booking_stdate').datepicker('getDate'));
   // ---------check out user------------------------
   var d4 = new Date($('#booking_endate').datepicker('getDate'));
   
//  var valu= Math.abs(d3.getTime() - d4.getTime());
// alert($('#booking_endate').val());
alert(d4).getDate();
 if (d3<d1){
alert("The room is not availbale in that date range");
 $("#btn-sign-up").removeAttr('data-disable-with');
 return false;
 } 


 if  (d3>d2){
alert("The room is not availbale in that date range");
 $("#btn-sign-up").removeAttr('data-disable-with');
 return false;
 }


  if (d4<d1){
alert("The room is not availbale in that date range");
$("#btn-sign-up").removeAttr('data-disable-with');
 return false;
} 

if (d4>d2){
  alert("The room is not availbale in that date range");
$("#btn-sign-up").removeAttr('data-disable-with');
 return false;
 }


  if ( d3>d4){
alert("Check in date must come before check out date");
$("#btn-sign-up").removeAttr('data-disable-with');
 return false;
  }

  if (d4< d3){
alert("Check out date must come after check in date");
$("#btn-sign-up").removeAttr('data-disable-with');
 return false;
  } 

  if ( $('#booking_endate').val()== "" &&  $('#booking_stdate').val()== " " ){
alert("Dates cannot be blank");
$("#btn-sign-up").removeAttr('data-disable-with');
 return false;
  } 


  if (d4 == ""){
alert("Check out date is empty");
$("#btn-sign-up").removeAttr('data-disable-with');
 return false;
  } 

  if (d3== ""){
alert("Check in date is empty");
$("#btn-sign-up").removeAttr('data-disable-with');
 return false;
  }

}
// if (d3<d1 || d3>d2){
//  alert("The room is not availbale in that date range");
//   $("#btn-sign-up").removeAttr('data-disable-with');
//  return false;
// }else if (d4<d3 || d4>d2){
//  alert("The room is not availbale in that date range");
//    $("#btn-sign-up").removeAttr('data-disable-with');
//   return false;
// }else {
//   $("#btn-sign-up").removeAttr('data-disable-with');
// return true;
// }



//  if (document.getElementById('avaibility_datefrom_2i').value =="" || document.getElementById('avaibility_datefrom_1i').value =="" || document.getElementById('avaibility_datefrom_3i').value =="")
//  {
// $(".errorHand").html("Dates cannot be blank");
//     $(".errorHand").show();
//     $(".errorHand").addClass('animated tada');
//     $(".errorHand").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
//     function (e){
//        $(".errorHand").removeClass('tada');
//    }); 
// $("#btn-sign-up").removeAttr('data-disable-with');
//     return false;
// }

// if (document.getElementById('avaibility_dateto_2i').value =="" || document.getElementById('avaibility_dateto_1i').value =="" || document.getElementById('avaibility_dateto_3i').value =="")
// { 
// $(".errorHand").html("Dates cannot be blank");
//     $(".errorHand").show();
//     $(".errorHand").addClass('animated tada');
//     $(".errorHand").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
//     function (e){
//        $(".errorHand").removeClass('tada');
//    }); 

// $("#btn-sign-up").removeAttr('data-disable-with');
//    return false;
//   }

// if (document.getElementById('avaibility_datefrom_1i').value > document.getElementById('avaibility_dateto_1i').value && document.getElementById('avaibility_datefrom_2i').value> document.getElementById('avaibility_dateto_2i').value && document.getElementById('avaibility_datefrom_3i').value>document.getElementById('avaibility_dateto_3i').value)
// {
// $(".errorHand").html("Invalid dates");
//    $(".errorHand").show();
//     $(".errorHand").addClass('animated tada');
//     $(".errorHand").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
//     function (e){
//        $(".errorHand").removeClass('tada');
//    }); 
//    $("#btn-sign-up").removeAttr('data-disable-with');
//     return false;
// }else{
//   return true;
//   }
// }

