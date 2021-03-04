Trait {
	#name : #FamixGTEReferenceable,
	#instVars : [
		'#incomingReferences => FMGTEMany type: #FamixGTEReference opposite: #referredType'
	],
	#category : #'Graphoose-Traits-Reference'
}

{ #category : #meta }
FamixGTEReferenceable classSide >> annotation [

	<FMClass: #TReferenceable super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEReferenceable >> addIncomingReference: aReference [ 
	incomingReferences add: aReference
]

{ #category : #accessing }
FamixGTEReferenceable >> incomingReferences [
	"Relation named: #incomingReferences type: #FamixGTEReference opposite: #referredType"

	<generated>
	<FMComment: 'References to this entity by other entities.'>
	<derived>
	^ incomingReferences
]

{ #category : #accessing }
FamixGTEReferenceable >> incomingReferences: anObject [

	<generated>
	incomingReferences value: anObject
]
