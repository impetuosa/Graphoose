"
FAMIXAttribute represents a field of a class. It is an attribute of the parent type.

"
Trait {
	#name : #FamixGTETAttribute,
	#instVars : [
		'#parentType => GTEOne type: #FamixGTETWithAttributes opposite: #attributes'
	],
	#traits : 'FamixGTETCanBeClassSide + FamixGTETStructuralEntity',
	#classTraits : 'FamixGTETCanBeClassSide classTrait + FamixGTETStructuralEntity classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETAttribute classSide >> annotation [

	<FMClass: #TAttribute super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #testing }
FamixGTETAttribute >> isAttribute [

	<generated>
	^ true
]

{ #category : #accessing }
FamixGTETAttribute >> parentType [
	"Relation named: #parentType type: #FamixGTETWithAttributes opposite: #attributes"

	<generated>
	<FMComment: 'Type declaring the attribute. belongsTo implementation'>
	<container>
	^ parentType
]

{ #category : #accessing }
FamixGTETAttribute >> parentType: anObject [

	<generated>
	parentType := anObject
]

{ #category : #navigation }
FamixGTETAttribute >> parentTypeGroup [
	<generated>
	<navigation: 'ParentType'>
	^ MooseSpecializedGroup with: self parentType
]
