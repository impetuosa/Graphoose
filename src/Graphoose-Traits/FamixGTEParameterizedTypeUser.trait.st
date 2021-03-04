Trait {
	#name : #FamixGTEParameterizedTypeUser,
	#instVars : [
		'#argumentsInParameterizedTypes => FMGTEMany type: #FamixGTEWithParameterizedTypeUsers opposite: #arguments'
	],
	#category : #'Graphoose-Traits-ParameterizedTypeUser'
}

{ #category : #meta }
FamixGTEParameterizedTypeUser classSide >> annotation [

	<FMClass: #TParameterizedTypeUser super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEParameterizedTypeUser >> addArgumentsInParameterizedType: anObject [

	argumentsInParameterizedTypes add: anObject

]

{ #category : #accessing }
FamixGTEParameterizedTypeUser >> argumentsInParameterizedTypes [
	"Relation named: #argumentsInParameterizedTypes type: #FamixGTEWithParameterizedTypeUsers opposite: #arguments"

	<generated>
	<derived>
	^ argumentsInParameterizedTypes
]

{ #category : #accessing }
FamixGTEParameterizedTypeUser >> argumentsInParameterizedTypes: anObject [

	<generated>
	argumentsInParameterizedTypes value: anObject
]
