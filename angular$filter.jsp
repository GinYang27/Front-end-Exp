<div class="time-options">
  <md-radio-group ng-model="ctrl.selectedTimeOption.serverTime" ng-change="ctrl.packTimeOption(); ctrl.setServeTime()">
      <md-radio-button ng-repeat="option in ctrl.timeOptions track by $index" ng-value="option.serveTime">
          {{option.price | currency}} / {{option.serveTime}} min
      </md-radio-button>
  </md-radio-group>   
</div>

<script>
self.timeOptions = selectedCartItem.shoppingCartTimeOptionModels;
self.selectedTimeOption = {
    price: selectedCartItem.primaryPrice,
    serverTime: selectedCartItem.primaryServeTime
}

function packTimeOption() {
    self.newTimeOption = $filter('filter')(self.timeOptions, {serveTime: self.selectedTimeOption.serverTime});
    self.priamryPrice = $filter('filter')(self.serveDetailContent.timeOptionModels, {serveTime: $scope.selectedServeTime})[0].price;
}

</script>

//$filter syntax
