Extension { #name : #FM3Class }

{ #category : #'*Graphoose' }
FM3Class >> createInstanceFor: aDestinationModel [

	^ implementingClass
		  ifNil: [ FMRuntimeElement new description: self ]
		  ifNotNil: [ aDestinationModel instantiate: implementingClass ]
]
