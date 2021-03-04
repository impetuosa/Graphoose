"
A container having Global variables
"
Trait {
	#name : #FamixGTEWithGlobalVariables,
	#instVars : [
		'#globalVariables => FMGTEMany type: #FamixGTEGlobalVariable opposite: #parentScope'
	],
	#category : #'Graphoose-Traits-GlobalVariable'
}

{ #category : #meta }
FamixGTEWithGlobalVariables classSide >> annotation [

	<FMClass: #TWithGlobalVariables super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTEWithGlobalVariables >> addGlobalVariable: anObject [
	<generated>
	^ self globalVariables add: anObject
]

{ #category : #accessing }
FamixGTEWithGlobalVariables >> globalVariables [
	"Relation named: #globalVariables type: #FamixGTEGlobalVariable opposite: #parentScope"

	<generated>
	<FMComment: 'Global variables defined in the scope, if any.'>
	<derived>
	^ globalVariables
]

{ #category : #accessing }
FamixGTEWithGlobalVariables >> globalVariables: anObject [

	<generated>
	globalVariables value: anObject
]
