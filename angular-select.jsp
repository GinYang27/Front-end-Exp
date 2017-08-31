<select class="form-control" ng-model="selectedTimeOption" name="selectedTimeOption" ng-change="setServeTime()" required flex
    ng-options="option as ((option.price | currency) + ' / ' + (option.serveTime + 'min')) for option in ctrl.cartItem.shoppingCartTimeOptionModels track by option.serveTime">
</select>


<!-- NOTE: parenthese and track by is required -->

<select ng-show="msagDetailForm.selectedTimeOption.$valid && msagDetailForm.datePicker.$valid && msagDetailForm.gender.$valid" 
    class="form-control ic-select-time" ng-model="startTimeObj" name="startTimeObj" required flex
        ng-options="s.startTime disable when s.isAvailable == false for s in ctrl.startTimeList track by s.isAvailable">
    <!-- <option value="" selected disabled>Select the starting time</option>
    <option ng-repeat="startTimeObj in ctrl.startTimeList" ng-disabled="startTimeObj.isAvailable == false" ng-class="{ 'ic-unavilable' : !startTimeObj.isAvailable}">
        {{startTimeObj.startTime}} 
    </option> -->
</select>

.ic-select-time option[value="false"] {
    color: #bdbdbd;
}

I find a bug, if I used track by s.isAvilable, it will cause some bugs on ng-model's value, so I changed it to 
ng-options="s.startTime disable when s.isAvailable == false for s in ctrl.startTimeList track by s.startTime"

And for css:
.ic-select-time option:disabled {
    color: #bdbdbd;
}

