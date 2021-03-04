"
FAMIXSourcedEntity models any fact in a program source and it is the superclass (root class) of all source code entities and their relationships. It is a FAMIXEntity and it can hold comments, a source anchor and a source language.
"
Trait {
	#name : #FamixGTESourceEntity,
	#instVars : [
		'#isStub => FMGTEProperty',
		'#sourceAnchor => FMGTEOne type: #FamixGTESourceAnchor opposite: #element'
	],
	#traits : 'FamixGTEWithComments + FamixGTEWithSourceLanguage',
	#classTraits : 'FamixGTEWithComments classTrait + FamixGTEWithSourceLanguage classTrait',
	#category : #'Graphoose-Traits-SourceAnchor'
}

{ #category : #meta }
FamixGTESourceEntity classSide >> annotation [

	<FMClass: #TSourceEntity super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTESourceEntity >> allSourceAnchors [
	^ self sourceAnchor
		ifNil: [ {} ]
		ifNotNil: #allSourceAnchors
]

{ #category : #enumerating }
FamixGTESourceEntity >> allSourceAnchorsDo: aBlock [
	^ self sourceAnchor ifNotNil: [ :sa | sa allSourceAnchorsDo: aBlock ]
]

{ #category : #metrics }
FamixGTESourceEntity >> computeNumberOfLinesOfCode [
	self hasSourceAnchor ifTrue: [ ^ self sourceAnchor lineCount ].
	self sourceText = '' ifFalse: [ ^ self sourceText lineCount ].

	(self isStub not and: [ self shouldCountChildrenForLinesOfCodeIfNoSourceAnchor ]) ifFalse: [ ^ self notExistentMetricValue ].

	^ self children sumNumbers: #numberOfLinesOfCode
]

{ #category : #'source anchor' }
FamixGTESourceEntity >> defineMultiSourceAnchorWithPath: aPath [
	 self ensureMultiSourceAnchor addFileAnchorWithPath: aPath
]

{ #category : #'source anchor' }
FamixGTESourceEntity >> ensureMultiSourceAnchor [
	^ self sourceAnchor
		ifNil: [ self
				sourceAnchor:
					(self multipleFileAnchorClass new
						element: self;
						mooseModel: self mooseModel;
						yourself);
				sourceAnchor ]
]

{ #category : #testing }
FamixGTESourceEntity >> hasSourceAnchor [
	^ self sourceAnchor isNotNil
]

{ #category : #accessing }
FamixGTESourceEntity >> isStub [

	<FMGTEProperty: #isStub type: #Boolean>
	<FMComment: 'Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.'>
	^ isStub ifNil: [ false ]
]

{ #category : #accessing }
FamixGTESourceEntity >> isStub: anObject [
	<generated>
	isStub := anObject
]

{ #category : #'source anchor' }
FamixGTESourceEntity >> multipleFileAnchorClass [
	^ self mooseModel
		ifNil: [ self error: 'The model need to be set for this feature to work.' ]
		ifNotNil: [ :model | 
			model factory
				entityNamed: #MultipleFileAnchor
				ifAbsent: [ self error: 'This metamodel does not includes the full concept of MultipleFileAnchor needed.' ] ]
]

{ #category : #properties }
FamixGTESourceEntity >> notExistentMetricValue [
	^ self explicitRequirement
]

{ #category : #metrics }
FamixGTESourceEntity >> numberOfLinesOfCode [
	<FMGTEProperty: #numberOfLinesOfCode type: #Number>
	<FMComment: 'The number of lines of code in a method.'>
	^ self lookUpPropertyNamed: #numberOfLinesOfCode computedAs: [ self computeNumberOfLinesOfCode ]
]

{ #category : #metrics }
FamixGTESourceEntity >> numberOfLinesOfCode: aNumber [
	self cacheAt: #numberOfLinesOfCode put: aNumber
]

{ #category : #metrics }
FamixGTESourceEntity >> numberOfLinesOfCodeWithMoreThanOneCharacter [
	<FMGTEProperty: #numberOfLinesOfCodeWithMoreThanOneCharacter type: #Number>
	<derived>
	<FMComment:
		'This metric is essentially similar to the numberOfLinesOfCode one, 
	the difference being that it only counts the lines with more than one non-whitespace characters.
	This metric is particularly useful for comparing the density of other metrics on a line of code.
	For example, depending on the formatting style chosen a Java curly brace, or a Smalltalk block 
	can appear inline or on a separate line. For normalization purposes, these commonly appearing 
	cases can be ruled out through the present metric.'>
	^ self
		lookUpPropertyNamed: #numberOfLinesOfCodeWithMoreThanOneCharacter
		computedAs: [ (self sourceText lines select: [ :line | line trimBoth size > 1 ]) size ]
]

{ #category : #metrics }
FamixGTESourceEntity >> shouldCountChildrenForLinesOfCodeIfNoSourceAnchor [
	^ self isContainerEntity
]

{ #category : #accessing }
FamixGTESourceEntity >> sourceAnchor [
	"Relation named: #sourceAnchor type: #FamixGTESourceAnchor opposite: #element"

	<generated>
	<FMComment: 'SourceAnchor entity linking to the original source code for this entity'>
	<derived>
	^ sourceAnchor
]

{ #category : #accessing }
FamixGTESourceEntity >> sourceAnchor: anObject [

	<generated>
	sourceAnchor := anObject
]

{ #category : #accessing }
FamixGTESourceEntity >> sourceText [
	<FMGTEProperty: #sourceText type: #String>
	<derived>
	<FMComment: 'Source code of the entity.'>
	self isStub ifTrue: [ ^ '' ].

	^ self sourceAnchor
		ifNil: [ '' ]
		ifNotNil: [ self sourceAnchor sourceText ]
]
