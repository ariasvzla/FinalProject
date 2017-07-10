 angular.module('firstApplication', ['ngMaterial','ngMessages', 'angucomplete-alt'])

    
  .controller('dateController', function dateController ($scope)

          {
          $scope.myDate= new Date();

            $scope.myDate2= new Date();

         })

.config(function($mdDateLocaleProvider) {
  $mdDateLocaleProvider.formatDate = function(date)
   {
       return moment(date).format('DD-MM-YYYY');
   };
});

  

