Class {
	#name : #FmxMBRealRingGraphiteEnvironment,
	#superclass : #FmxMBRealRingEnvironment,
	#category : #'Graphoose-environment'
}

{ #category : #initialization }
FmxMBRealRingGraphiteEnvironment >> slotNamed: slotName [
	^ (RGUnknownSlot named: slotName asSymbol) expression: #FMGTEProperty
]

{ #category : #initialization }
FmxMBRealRingGraphiteEnvironment >> slotNamed: slotName cardinality: cardinality type: type opposite: oppositeName [

	| cardinalityClassName |
	
	cardinalityClassName := cardinality = #one
		ifTrue: [ #FMGTEOne ]
		ifFalse: [ #FMGTEMany ].
		
	^ (RGUnknownSlot named: slotName asSymbol)
		 expression: ('{1} type: #{2} opposite: #{3}' 
			format: { cardinalityClassName. type. oppositeName}) 
]
