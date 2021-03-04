Trait {
	#name : #FamixGTETWithParameterizedTypeUsers,
	#instVars : [
		'#arguments => GTEMany type: #FamixGTETParameterizedTypeUser opposite: #argumentsInParameterizedTypes'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithParameterizedTypeUsers classSide >> annotation [

	<FMClass: #TWithParameterizedTypeUsers super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithParameterizedTypeUsers >> addArgument: anObject [
	<generated>
	^ self arguments add: anObject
]

{ #category : #accessing }
FamixGTETWithParameterizedTypeUsers >> arguments [
	"Relation named: #arguments type: #FamixGTETParameterizedTypeUser opposite: #argumentsInParameterizedTypes"

	<generated>
	^ arguments
]

{ #category : #accessing }
FamixGTETWithParameterizedTypeUsers >> arguments: anObject [

	<generated>
	arguments value: anObject
]
