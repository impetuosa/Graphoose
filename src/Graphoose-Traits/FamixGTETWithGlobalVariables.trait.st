"
A container having Global variables
"
Trait {
	#name : #FamixGTETWithGlobalVariables,
	#instVars : [
		'#globalVariables => GTEMany type: #FamixGTETGlobalVariable opposite: #parentScope'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithGlobalVariables classSide >> annotation [

	<FMClass: #TWithGlobalVariables super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithGlobalVariables >> addGlobalVariable: anObject [
	<generated>
	^ self globalVariables add: anObject
]

{ #category : #accessing }
FamixGTETWithGlobalVariables >> globalVariables [
	"Relation named: #globalVariables type: #FamixGTETGlobalVariable opposite: #parentScope"

	<generated>
	<FMComment: 'Global variables defined in the scope, if any.'>
	<derived>
	^ globalVariables
]

{ #category : #accessing }
FamixGTETWithGlobalVariables >> globalVariables: anObject [

	<generated>
	globalVariables value: anObject
]
