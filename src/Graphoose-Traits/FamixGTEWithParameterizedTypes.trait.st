Trait {
	#name : #FamixGTEWithParameterizedTypes,
	#instVars : [
		'#parameterizedTypes => FMGTEMany type: #FamixGTEParameterizedType opposite: #parameterizableClass'
	],
	#category : #'Graphoose-Traits-ParameterizedType'
}

{ #category : #meta }
FamixGTEWithParameterizedTypes classSide >> annotation [

	<FMClass: #TWithParameterizedTypes super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithParameterizedTypes >> addParameterizedType: anObject [
	parameterizedTypes add: anObject

]

{ #category : #accessing }
FamixGTEWithParameterizedTypes >> parameterizedTypes [
	"Relation named: #parameterizedTypes type: #FamixGTEParameterizedType opposite: #parameterizableClass"

	<generated>
	<derived>
	^ parameterizedTypes
]

{ #category : #accessing }
FamixGTEWithParameterizedTypes >> parameterizedTypes: anObject [

	<generated>
	parameterizedTypes value: anObject
]
