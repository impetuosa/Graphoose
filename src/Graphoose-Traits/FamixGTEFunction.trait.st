"
FAMIXFunction represents a behavioural entity in a procedural language.
"
Trait {
	#name : #FamixGTEFunction,
	#instVars : [
		'#functionOwner => FMGTEOne type: #FamixGTEWithFunctions opposite: #functions'
	],
	#traits : '(FamixGTEHasSignature + FamixGTENamedEntity + FamixGTETypedEntity + FamixGTEWithParameters + FamixGTEWithStatements withPrecedenceOf: FamixGTEWithStatements)',
	#classTraits : '(FamixGTEHasSignature classTrait + FamixGTENamedEntity classTrait + FamixGTETypedEntity classTrait + FamixGTEWithParameters classTrait + FamixGTEWithStatements classTrait withPrecedenceOf: FamixGTEWithStatements classTrait)',
	#category : #'Graphoose-Traits-Behavioral'
}

{ #category : #meta }
FamixGTEFunction classSide >> annotation [

	<FMClass: #TFunction super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEFunction >> functionOwner [
	"Relation named: #functionOwner type: #FamixGTEWithFunctions opposite: #functions"

	<generated>
	<FMComment: 'The container defining the function. The function is placed in a container, because certain languages can nest functions in functions.'>
	<container>
	^ functionOwner
]

{ #category : #accessing }
FamixGTEFunction >> functionOwner: anObject [

	functionOwner := anObject.
	self resetMooseName.

]

{ #category : #navigation }
FamixGTEFunction >> functionOwnerGroup [
	<generated>
	<navigation: 'FunctionOwner'>
	^ MooseSpecializedGroup with: self functionOwner
]

{ #category : #testing }
FamixGTEFunction >> isFunction [

	<generated>
	^ true
]

{ #category : #printing }
FamixGTEFunction >> mooseNameOn: stream [
	| parent |
	parent := self functionOwner.
	parent
		ifNotNil: [ parent mooseNameOn: stream.
			stream nextPut: $. ].
	self signature ifNotNil: [ stream nextPutAll: self signature ] ifNil: [ self name ifNotNil: [ stream nextPutAll: self name ] ]
]
