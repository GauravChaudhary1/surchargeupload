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
            selectResponse: function(oEvent){
                const oSelectedIndex = oEvent.getParameter('selectedIndex');
                const sPurchaseOrder = oEvent.getSource().getParent().getCells()[1].getText();
                const sPurchaseOrderItem = oEvent.getSource().getParent().getCells()[2].getText();

                this.getView().byId("idResponseTable").getBinding("rows").aIndices.forEach(i => {
                    if (this.getView().byId("idResponseTable").getAggregation('rows')[i].getCells()[1].getText() === sPurchaseOrder && 
                        this.getView().byId("idResponseTable").getAggregation('rows')[i].getCells()[2].getText() === sPurchaseOrderItem) {                        
                            this.getView().byId("idResponseTable").getAggregation('rows')[i].getCells()[0].setSelectedIndex(oSelectedIndex);                    
                    }                                        
                })
            },
            setAction: function(sAction){
                let i = 3;
                switch (sAction) {
                    case "Approved":
                        i = 0;
                        break;
                    case "Rejected":
                        i = 1;
                        break;
                
                    default:
                        i = 2;
                        break;
                }
                return i;
            },

            submitResponses: async function(){
                const oResponse = await fetch(`${this.getOwnerComponent()._getTaskInstancesBaseURL()}`);

                const oJSON = await oResponse.json();
                const sWorkflowId = oJSON["workflowInstanceId"];

                let oData = this.getView().byId("idResponseTable").getBinding("rows").getModel().getData();

                this.getView().byId("idResponseTable").getBinding("rows").aIndices.forEach(i => {
                    
                    
                    switch (this.getView().byId("idResponseTable").getAggregation('rows')[i].getCells()[0].getSelectedIndex()) {
                        case 0:
                            oData.filecontent[i]["ActionPerformed"] = "Approved";
                            break;
                        case 1:
                            oData.filecontent[i]["ActionPerformed"] = "Rejected";
                            break;
                        default:
                            break;
                    }
                });
                this.getView().byId("idResponseTable").getBinding("rows").getModel().setData(oData);
                this.getView().byId("idResponseTable").getBinding("rows").getModel().refresh(true);

                // Make backend Calls

                const oPatch = await fetch(`${this.getOwnerComponent()._getWorkflowRuntimeBaseURL()}/workflow-instances/${sWorkflowId}/context`,{
                    method: "PATCH",
                    headers: {
                        'Content-Type': 'application/json',
                        "X-CSRF-Token": this.getOwnerComponent()._fetchToken()
                    },
                    body: JSON.stringify(oData)
                });


                // if all action is taken then close the task
                if ( !oData.filecontent.find((el) =>{ return el["ActionPerformed"] === "" } ) ){
                    this.getOwnerComponent().completeTask();
                };

                // Refresh the task list
                this.getOwnerComponent()._refreshTaskList();
            }
        });
    });
