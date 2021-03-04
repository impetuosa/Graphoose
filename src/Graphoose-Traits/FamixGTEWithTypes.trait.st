Trait {
	#name : #FamixGTEWithTypes,
	#instVars : [
		'#types => FMGTEMany type: #FamixGTEType opposite: #typeContainer'
	],
	#category : #'Graphoose-Traits-Type'
}

{ #category : #meta }
FamixGTEWithTypes classSide >> annotation [

	<FMClass: #TWithTypes super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTEWithTypes >> addType: aType [ 
	types add: aType
]

{ #category : #accessing }
FamixGTEWithTypes >> allRecursiveTypes [
	"Retrieves all nested types recursively"
	
	| result |
	result := Set new.
	self allRecursiveTypesDo: [:each | result add: each ].
	^ result
]

{ #category : #accessing }
FamixGTEWithTypes >> allRecursiveTypesDo: aBlock [
	"Traverses all nested types recursively"

	self types do: [ :each | 
		aBlock value: each.
		each allRecursiveTypesDo: aBlock ]
]

{ #category : #accessing }
FamixGTEWithTypes >> types [
	"Relation named: #types type: #FamixGTEType opposite: #typeContainer"

	<generated>
	<FMComment: 'Types contained (declared) in this entity, if any.
#types is declared in ContainerEntity because different kinds of container can embed types. Types are usually contained in a Famix.Namespace. But types can also be contained in a Famix.Class or Famix.Method (in Java with inner classes for example). Famix.Function can also contain some types such as structs.'>
	<derived>
	^ types
]

{ #category : #accessing }
FamixGTEWithTypes >> types: anObject [

	<generated>
	types value: anObject
]