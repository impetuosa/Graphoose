"
FAMIXMethod represents a behaviour in an object-oriented language.

A FAMIXMethod is always contained in a parentType.
"
Trait {
	#name : #FamixGTEMethod,
	#instVars : [
		'#kind => FMGTEProperty',
		'#parentType => FMGTEOne type: #FamixGTEWithMethods opposite: #methods'
	],
	#traits : '(FamixGTECanBeClassSide + FamixGTEHasSignature + FamixGTEInvocable + FamixGTENamedEntity + FamixGTETypedEntity + FamixGTEWithClassScope + FamixGTEWithImplicitVariables + FamixGTEWithLocalVariables + FamixGTEWithParameters + FamixGTEWithReferences + FamixGTEWithStatements + TOODependencyQueries withPrecedenceOf: FamixGTEWithStatements)',
	#classTraits : '(FamixGTECanBeClassSide classTrait + FamixGTEHasSignature classTrait + FamixGTEInvocable classTrait + FamixGTENamedEntity classTrait + FamixGTETypedEntity classTrait + FamixGTEWithClassScope classTrait + FamixGTEWithImplicitVariables classTrait + FamixGTEWithLocalVariables classTrait + FamixGTEWithParameters classTrait + FamixGTEWithReferences classTrait + FamixGTEWithStatements classTrait + TOODependencyQueries classTrait withPrecedenceOf: FamixGTEWithStatements classTrait)',
	#category : #'Graphoose-Traits-Behavioral'
}

{ #category : #meta }
FamixGTEMethod classSide >> annotation [

	<FMClass: #TMethod super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixGTEMethod classSide >> annotationFamixMethodGroup [
	<generated>
	<mooseGroup>
	^ FamixMethodGroup
]

{ #category : #metrics }
FamixGTEMethod >> hierarchyNestingLevel [
	<FMGTEProperty: #hierarchyNestingLevel type: #Number>
	<derived>
	<FMComment: 'The nesting level in the hierarchy'>
	
	^self
		lookUpPropertyNamed: #hierarchyNestingLevel
		computedAs: [self belongsTo hierarchyNestingLevel]
]

{ #category : #metrics }
FamixGTEMethod >> hierarchyNestingLevel: aNumber [
	self cacheAt: #hierarchyNestingLevel put: aNumber
]

{ #category : #testing }
FamixGTEMethod >> isConstant [
	<FMGTEProperty: #isConstant type: #Boolean>
	<derived>
	<FMComment: 'True if the method simply returns a constant'>
	^#constant = self kind
]

{ #category : #testing }
FamixGTEMethod >> isConstructor [
	<FMGTEProperty: #isConstructor type: #Boolean>
	<derived>
	<FMComment: 'True if the method is a constructor of the class'>
	^ #constructor = self kind or: [ self cacheAt: #isConstructor ifAbsent: [ false ] ]
]

{ #category : #testing }
FamixGTEMethod >> isConstructor: aBoolean [
	aBoolean 
		ifTrue: [ self kind: #constructor ]
		ifFalse: [ 
			self isConstructor ifTrue: [ self kind: nil ] ]
]

{ #category : #testing }
FamixGTEMethod >> isGetter [
	<FMGTEProperty: #isGetter type: #Boolean>
	<derived>
	<FMComment: 'True if the method is a getter of an attribute'>
	
	^#getter = self kind
]

{ #category : #testing }
FamixGTEMethod >> isMethod [

	<generated>
	^ true
]

{ #category : #testing }
FamixGTEMethod >> isPureAccessor [
	^ self isGetter or: [ self isSetter or: [ self cacheAt: #isPureAccessor ifAbsent: [ false ] ] ]
]

{ #category : #testing }
FamixGTEMethod >> isSetter [
	<FMGTEProperty: #isSetter type: #Boolean>
	<derived>
	<FMComment: 'True if the method is a setter on an attribute'>

	^#setter = self kind
]

{ #category : #accessing }
FamixGTEMethod >> kind [

	<FMGTEProperty: #kind type: #String>
	<generated>
	<FMComment: 'Tag indicating a setter, getter, constant, constructor, or abstract method'>
	^ kind
]

{ #category : #accessing }
FamixGTEMethod >> kind: anObject [
	<generated>
	kind := anObject
]

{ #category : #printing }
FamixGTEMethod >> mooseNameOn: stream [
	self parentType
		ifNotNil: [ :parent | 
			parent mooseNameOn: stream.
			stream nextPut: $. ].
	self signature
		ifNotNil: [ :aSignature | stream nextPutAll: aSignature ]
		ifNil: [ self name ifNotNil: [ :aName | stream nextPutAll: aName ] ]
]

{ #category : #metrics }
FamixGTEMethod >> numberOfMessageSends [
	<FMGTEProperty: #numberOfMessageSends type: #Number>
	<derived>
	<FMComment: 'The number of message from a method'>
	^ self
		lookUpPropertyNamed: #numberOfMessageSends
		computedAs: [ self notExistentMetricValue ]
]

{ #category : #metrics }
FamixGTEMethod >> numberOfMessageSends: aNumber [
	self cacheAt: #numberOfMessageSends put: aNumber
]

{ #category : #accessing }
FamixGTEMethod >> parentType [
	"Relation named: #parentType type: #FamixGTEWithMethods opposite: #methods"

	<generated>
	<FMComment: 'Type declaring the method. It provides the implementation for belongsTo.'>
	<container>
	^ parentType
]

{ #category : #accessing }
FamixGTEMethod >> parentType: anObject [

	parentType := anObject.
	self resetMooseName.

]

{ #category : #navigation }
FamixGTEMethod >> parentTypeGroup [
	<generated>
	<navigation: 'ParentType'>
	^ MooseSpecializedGroup with: self parentType
]

{ #category : #testing }
FamixGTEMethod >> parentTypeIsStub [

	^ self parentType ifNotNil: [ :e | e isStub ] ifNil: [ true ]
]
