"
FAMIXFunction represents a behavioural entity in a procedural language.
"
Trait {
	#name : #FamixGTETFunction,
	#instVars : [
		'#functionOwner => GTEOne type: #FamixGTETWithFunctions opposite: #functions'
	],
	#traits : 'FamixGTETHasSignature + FamixGTETNamedEntity + FamixGTETTypedEntity + FamixGTETWithParameters + FamixGTETWithStatements',
	#classTraits : 'FamixGTETHasSignature classTrait + FamixGTETNamedEntity classTrait + FamixGTETTypedEntity classTrait + FamixGTETWithParameters classTrait + FamixGTETWithStatements classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETFunction classSide >> annotation [

	<FMClass: #TFunction super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETFunction >> functionOwner [
	"Relation named: #functionOwner type: #FamixGTETWithFunctions opposite: #functions"

	<generated>
	<FMComment: 'The container defining the function. The function is placed in a container, because certain languages can nest functions in functions.'>
	<container>
	^ functionOwner
]

{ #category : #accessing }
FamixGTETFunction >> functionOwner: anObject [

	<generated>
	functionOwner := anObject
]

{ #category : #navigation }
FamixGTETFunction >> functionOwnerGroup [
	<generated>
	<navigation: 'FunctionOwner'>
	^ MooseSpecializedGroup with: self functionOwner
]

{ #category : #testing }
FamixGTETFunction >> isFunction [

	<generated>
	^ true
]
