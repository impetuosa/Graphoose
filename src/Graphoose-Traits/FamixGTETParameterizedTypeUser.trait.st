Trait {
	#name : #FamixGTETParameterizedTypeUser,
	#instVars : [
		'#argumentsInParameterizedTypes => GTEMany type: #FamixGTETWithParameterizedTypeUsers opposite: #arguments'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETParameterizedTypeUser classSide >> annotation [

	<FMClass: #TParameterizedTypeUser super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETParameterizedTypeUser >> addArgumentsInParameterizedType: anObject [
	<generated>
	^ self argumentsInParameterizedTypes add: anObject
]

{ #category : #accessing }
FamixGTETParameterizedTypeUser >> argumentsInParameterizedTypes [
	"Relation named: #argumentsInParameterizedTypes type: #FamixGTETWithParameterizedTypeUsers opposite: #arguments"

	<generated>
	<derived>
	^ argumentsInParameterizedTypes
]

{ #category : #accessing }
FamixGTETParameterizedTypeUser >> argumentsInParameterizedTypes: anObject [

	<generated>
	argumentsInParameterizedTypes value: anObject
]
