Class {
	#name : #GTEFamixMBRealRingGraphiteEnvironment,
	#superclass : #FmxMBRealRingEnvironment,
	#category : #'Graphoose-environment'
}

{ #category : #initialization }
GTEFamixMBRealRingGraphiteEnvironment >> slotNamed: slotName [
	^ (RGUnknownSlot named: slotName asSymbol) expression: #GTEProperty
]

{ #category : #initialization }
GTEFamixMBRealRingGraphiteEnvironment >> slotNamed: slotName cardinality: cardinality type: type opposite: oppositeName [

	| cardinalityClassName |
	
	cardinalityClassName := cardinality = #one
		ifTrue: [ #GTEOne ]
		ifFalse: [ #GTEMany ].
		
	^ (RGUnknownSlot named: slotName asSymbol)
		 expression: ('{1} type: #{2} opposite: #{3}' 
			format: { cardinalityClassName. type. oppositeName}) 
]
