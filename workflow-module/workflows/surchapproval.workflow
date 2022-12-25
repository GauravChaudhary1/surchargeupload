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
				}
			},
			"activities": {
				"c02435c8-efb3-4a59-baee-81ad96ab4c97": {
					"name": "ApproveSurcharge"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"1afc4cc7-444b-4ee3-921a-5b17d5fed813": {
					"name": "SequenceFlow2"
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
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"7f9d6047-3a5b-4b0c-bfcc-f37eacfb93ed": {},
				"27ecb187-305a-4655-acf8-fa6becd5ab4e": {}
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
			"x": 340,
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
			"object": "c02435c8-efb3-4a59-baee-81ad96ab4c97"
		},
		"27ecb187-305a-4655-acf8-fa6becd5ab4e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "232,117.75 357.5,117.75",
			"sourceSymbol": "7f9d6047-3a5b-4b0c-bfcc-f37eacfb93ed",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "1afc4cc7-444b-4ee3-921a-5b17d5fed813"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 2,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1
		}
	}
}