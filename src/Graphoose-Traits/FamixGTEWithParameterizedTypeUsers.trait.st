Trait {
	#name : #FamixGTEWithParameterizedTypeUsers,
	#instVars : [
		'#arguments => FMGTEMany type: #FamixGTEParameterizedTypeUser opposite: #argumentsInParameterizedTypes'
	],
	#category : #'Graphoose-Traits-ParameterizedTypeUser'
}

{ #category : #meta }
FamixGTEWithParameterizedTypeUsers classSide >> annotation [

	<FMClass: #TWithParameterizedTypeUsers super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithParameterizedTypeUsers >> addArgument: anObject [

	arguments add: anObject.
	self resetMooseName.

]

{ #category : #accessing }
FamixGTEWithParameterizedTypeUsers >> arguments [
	"Relation named: #arguments type: #FamixGTEParameterizedTypeUser opposite: #argumentsInParameterizedTypes"

	<generated>
	^ arguments
]

{ #category : #accessing }
FamixGTEWithParameterizedTypeUsers >> arguments: anObject [

	arguments value: anObject.
	self resetMooseName.

]
