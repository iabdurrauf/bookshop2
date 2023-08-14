sap.ui.define(["sap/ui/model/Filter", "sap/ui/model/FilterOperator"], function(Filter, FilterOperator) {
    "use strict";
    return {
        onCaseInsensitiveFilter: function(sValue) {
            return new Filter({
                path: "title",
                operator: FilterOperator.Contains,
                value1: sValue,
                caseSensitive: false
            });
        }
    };
});
