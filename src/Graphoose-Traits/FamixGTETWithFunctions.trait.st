Trait {
	#name : #FamixGTETWithFunctions,
	#instVars : [
		'#functions => GTEMany type: #FamixGTETFunction opposite: #functionOwner'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithFunctions classSide >> annotation [

	<FMClass: #TWithFunctions super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithFunctions >> addFunction: anObject [
	<generated>
	^ self functions add: anObject
]

{ #category : #accessing }
FamixGTETWithFunctions >> functions [
	"Relation named: #functions type: #FamixGTETFunction opposite: #functionOwner"

	<generated>
	<FMComment: 'Functions defined in the container, if any.'>
	<derived>
	^ functions
]

{ #category : #accessing }
FamixGTETWithFunctions >> functions: anObject [

	<generated>
	functions value: anObject
]
