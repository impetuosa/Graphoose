"
FAMIXSourcedEntity models any fact in a program source and it is the superclass (root class) of all source code entities and their relationships. It is a FAMIXEntity and it can hold comments, a source anchor and a source language.
"
Trait {
	#name : #FamixGTETSourceEntity,
	#instVars : [
		'#isStub => GTEProperty',
		'#sourceAnchor => GTEOne type: #FamixGTETSourceAnchor opposite: #element'
	],
	#traits : 'FamixGTETWithComments + FamixGTETWithSourceLanguage',
	#classTraits : 'FamixGTETWithComments classTrait + FamixGTETWithSourceLanguage classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETSourceEntity classSide >> annotation [

	<FMClass: #TSourceEntity super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETSourceEntity >> isStub [

	<FMProperty: #isStub type: #Boolean>
	<generated>
	<FMComment: 'Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.'>
	^ isStub
]

{ #category : #accessing }
FamixGTETSourceEntity >> isStub: anObject [
	<generated>
	isStub := anObject
]

{ #category : #accessing }
FamixGTETSourceEntity >> sourceAnchor [
	"Relation named: #sourceAnchor type: #FamixGTETSourceAnchor opposite: #element"

	<generated>
	<FMComment: 'SourceAnchor entity linking to the original source code for this entity'>
	<derived>
	^ sourceAnchor
]

{ #category : #accessing }
FamixGTETSourceEntity >> sourceAnchor: anObject [

	<generated>
	sourceAnchor := anObject
]
