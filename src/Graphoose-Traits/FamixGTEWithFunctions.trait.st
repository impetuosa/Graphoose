Trait {
	#name : #FamixGTEWithFunctions,
	#instVars : [
		'#functions => FMGTEMany type: #FamixGTEFunction opposite: #functionOwner'
	],
	#category : #'Graphoose-Traits-Behavioral'
}

{ #category : #meta }
FamixGTEWithFunctions classSide >> annotation [

	<FMClass: #TWithFunctions super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithFunctions >> addFunction: anObject [
	functions add: anObject

]

{ #category : #accessing }
FamixGTEWithFunctions >> functions [
	"Relation named: #functions type: #FamixGTEFunction opposite: #functionOwner"

	<generated>
	<FMComment: 'Functions defined in the container, if any.'>
	<derived>
	^ functions
]

{ #category : #accessing }
FamixGTEWithFunctions >> functions: anObject [

	<generated>
	functions value: anObject
]
