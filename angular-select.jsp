 <select class="form-control" ng-model="selectedServeTime" name="selectedServeTime" ng-change="setServeTime()" required flex
      ng-options="(option.price | currency) + ' / ' + (option.serveTime + 'min') for option in ctrl.cartItem.shoppingCartTimeOptionModels">
      <option value="" selected disabled>Select time long</option>
  </select>
