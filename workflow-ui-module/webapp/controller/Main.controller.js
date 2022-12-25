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
                this.getOwnerComponent().getInboxAPI().addAction(
                    {
                      action: "Submit",
                      label: "Submit"
                    },
                    function () {
                      this.submitResponses();
                    },
                    this
                  );
            },
            EditableAction: function(sAction){
                return (sAction === "Approved" || sAction === "Rejected") ? false : true;
            },

            submitResponses: async function(){
                const oResponse = await fetch(`${this.getOwnerComponent()._getTaskInstancesBaseURL()}`);

                const oJSON = await oResponse.json();
                const sWorkflowId = oJSON["workflowInstanceId"];

                let oData = this.getView().byId("idResponseTable").getBinding("items").getModel().getData();

                const oPatch = await fetch(`${this.getOwnerComponent()._getWorkflowRuntimeBaseURL()}/workflow-instances/${sWorkflowId}/context`,{
                    method: "PATCH",
                    headers: {
                        'Content-Type': 'application/json',
                        "X-CSRF-Token": this.getOwnerComponent()._fetchToken()
                    },
                    body: JSON.stringify(oData)
                });
                const oPatchJSON = await oPatch.json();
            }
        });
    });
