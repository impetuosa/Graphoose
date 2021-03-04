"
FAMIXMethod represents a behaviour in an object-oriented language.

A FAMIXMethod is always contained in a parentType.
"
Trait {
	#name : #FamixGTETMethod,
	#instVars : [
		'#kind => GTEProperty',
		'#parentType => GTEOne type: #FamixGTETWithMethods opposite: #methods'
	],
	#traits : 'FamixGTETCanBeClassSide + FamixGTETHasSignature + FamixGTETInvocable + FamixGTETNamedEntity + FamixGTETTypedEntity + FamixGTETWithClassScope + FamixGTETWithImplicitVariables + FamixGTETWithLocalVariables + FamixGTETWithParameters + FamixGTETWithReferences + FamixGTETWithStatements + GTETOODependencyQueries',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETMethod classSide >> annotation [

	<FMClass: #TMethod super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixGTETMethod classSide >> annotationFamixGTEMethodGroup [
	<generated>
	<mooseGroup>
	^ FamixGTEMethodGroup
]

{ #category : #testing }
FamixGTETMethod >> isMethod [

	<generated>
	^ true
]

{ #category : #accessing }
FamixGTETMethod >> kind [

	<FMProperty: #kind type: #String>
	<generated>
	<FMComment: 'Tag indicating a setter, getter, constant, constructor, or abstract method'>
	^ kind
]

{ #category : #accessing }
FamixGTETMethod >> kind: anObject [
	<generated>
	kind := anObject
]

{ #category : #accessing }
FamixGTETMethod >> parentType [
	"Relation named: #parentType type: #FamixGTETWithMethods opposite: #methods"

	<generated>
	<FMComment: 'Type declaring the method. It provides the implementation for belongsTo.'>
	<container>
	^ parentType
]

{ #category : #accessing }
FamixGTETMethod >> parentType: anObject [

	<generated>
	parentType := anObject
]

{ #category : #navigation }
FamixGTETMethod >> parentTypeGroup [
	<generated>
	<navigation: 'ParentType'>
	^ MooseSpecializedGroup with: self parentType
]
