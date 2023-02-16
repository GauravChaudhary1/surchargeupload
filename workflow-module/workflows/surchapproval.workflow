{
	"contents": {
		"76403ab3-a8c7-42e3-9309-07329b0c0a66": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "com.zgaur.wf.surchapproval",
			"subject": "surchapproval",
			"name": "surchapproval",
			"documentation": "Surcharge Approval",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				},
				"2b6d79dd-7be3-4843-9033-4f8322c74abd": {
					"name": "BoundaryTimerEvent1"
				}
			},
			"activities": {
				"c02435c8-efb3-4a59-baee-81ad96ab4c97": {
					"name": "ApproveSurcharge"
				},
				"b5fd770f-792a-405d-8534-0fe961706503": {
					"name": "UserTask2"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"1afc4cc7-444b-4ee3-921a-5b17d5fed813": {
					"name": "SequenceFlow2"
				},
				"497f8ae8-e6ce-40c3-ad53-80ed689b8a8e": {
					"name": "SequenceFlow3"
				},
				"4bba067f-e35a-45fd-9621-1b91dd9ca9bc": {
					"name": "SequenceFlow5"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"2b6d79dd-7be3-4843-9033-4f8322c74abd": {
			"classDefinition": "com.sap.bpm.wfs.BoundaryEvent",
			"isCanceling": false,
			"id": "boundarytimerevent1",
			"name": "BoundaryTimerEvent1",
			"attachedToRef": "c02435c8-efb3-4a59-baee-81ad96ab4c97",
			"eventDefinitions": {
				"5d988ffb-d060-401f-90f6-97e74dbed7eb": {}
			}
		},
		"c02435c8-efb3-4a59-baee-81ad96ab4c97": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approve Surcharge",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://surcharge.comzgaurfioriworkflowuimodule/com.zgaur.fiori.workflowuimodule",
			"recipientUsers": "${context.approver}",
			"userInterfaceParams": [],
			"id": "usertask1",
			"name": "ApproveSurcharge",
			"documentation": "Approve Surcharge"
		},
		"b5fd770f-792a-405d-8534-0fe961706503": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Forwarded: Approve Surcharge",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://surcharge.comzgaurfioriworkflowuimodule/com.zgaur.fiori.workflowuimodule",
			"recipientUsers": "${context.secondapprover}",
			"customAttributes": [],
			"id": "usertask2",
			"name": "UserTask2"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "c02435c8-efb3-4a59-baee-81ad96ab4c97"
		},
		"1afc4cc7-444b-4ee3-921a-5b17d5fed813": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "c02435c8-efb3-4a59-baee-81ad96ab4c97",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"497f8ae8-e6ce-40c3-ad53-80ed689b8a8e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "2b6d79dd-7be3-4843-9033-4f8322c74abd",
			"targetRef": "b5fd770f-792a-405d-8534-0fe961706503"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"7f9d6047-3a5b-4b0c-bfcc-f37eacfb93ed": {},
				"27ecb187-305a-4655-acf8-fa6becd5ab4e": {},
				"8f480569-39d9-4245-bf45-9cd1286cabec": {},
				"5575402a-ddaa-4314-befe-c69a2a0be3ee": {},
				"b3fc87e0-ab7d-4027-832a-9f6292697737": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 580,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,117 232,117",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "7f9d6047-3a5b-4b0c-bfcc-f37eacfb93ed",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"7f9d6047-3a5b-4b0c-bfcc-f37eacfb93ed": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 182,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "c02435c8-efb3-4a59-baee-81ad96ab4c97",
			"symbols": {
				"4b300155-82a4-4630-90dd-ee8b1c056f3e": {}
			}
		},
		"27ecb187-305a-4655-acf8-fa6becd5ab4e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "232,117.75 597.5,117.75",
			"sourceSymbol": "7f9d6047-3a5b-4b0c-bfcc-f37eacfb93ed",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "1afc4cc7-444b-4ee3-921a-5b17d5fed813"
		},
		"8f480569-39d9-4245-bf45-9cd1286cabec": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 300,
			"y": 220,
			"width": 100,
			"height": 60,
			"object": "b5fd770f-792a-405d-8534-0fe961706503"
		},
		"5575402a-ddaa-4314-befe-c69a2a0be3ee": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "232,164 232,250 350,250",
			"sourceSymbol": "4b300155-82a4-4630-90dd-ee8b1c056f3e",
			"targetSymbol": "8f480569-39d9-4245-bf45-9cd1286cabec",
			"object": "497f8ae8-e6ce-40c3-ad53-80ed689b8a8e"
		},
		"4b300155-82a4-4630-90dd-ee8b1c056f3e": {
			"classDefinition": "com.sap.bpm.wfs.ui.BoundaryEventSymbol",
			"x": 216,
			"y": 132,
			"object": "2b6d79dd-7be3-4843-9033-4f8322c74abd"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 1,
			"sequenceflow": 5,
			"startevent": 1,
			"boundarytimerevent": 1,
			"endevent": 2,
			"usertask": 2
		},
		"5d988ffb-d060-401f-90f6-97e74dbed7eb": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "PT1M",
			"id": "timereventdefinition1"
		},
		"4bba067f-e35a-45fd-9621-1b91dd9ca9bc": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "b5fd770f-792a-405d-8534-0fe961706503",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"b3fc87e0-ab7d-4027-832a-9f6292697737": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "350,250 490.25,250 490.25,117.5 580.5,117.5",
			"sourceSymbol": "8f480569-39d9-4245-bf45-9cd1286cabec",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "4bba067f-e35a-45fd-9621-1b91dd9ca9bc"
		}
	}
}