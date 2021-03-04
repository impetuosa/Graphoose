Trait {
	#name : #FamixGTETWithParameterizedTypes,
	#instVars : [
		'#parameterizedTypes => GTEMany type: #FamixGTETParameterizedType opposite: #parameterizableClass'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithParameterizedTypes classSide >> annotation [

	<FMClass: #TWithParameterizedTypes super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithParameterizedTypes >> addParameterizedType: anObject [
	<generated>
	^ self parameterizedTypes add: anObject
]

{ #category : #accessing }
FamixGTETWithParameterizedTypes >> parameterizedTypes [
	"Relation named: #parameterizedTypes type: #FamixGTETParameterizedType opposite: #parameterizableClass"

	<generated>
	<derived>
	^ parameterizedTypes
]

{ #category : #accessing }
FamixGTETWithParameterizedTypes >> parameterizedTypes: anObject [

	<generated>
	parameterizedTypes value: anObject
]
