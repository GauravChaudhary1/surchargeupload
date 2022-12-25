sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("com.zgaur.fiori.workflowuimodule.controller.Main", {
            onInit: function () {
                
            },
            EditableAction: function(sAction){
                return (sAction === "Approved" || sAction === "Rejected") ? false : true;
            }
        });
    });
