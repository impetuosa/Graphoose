"
FAMIXAttribute represents a field of a class. It is an attribute of the parent type.

"
Trait {
	#name : #FamixGTEAttribute,
	#instVars : [
		'#parentType => FMGTEOne type: #FamixGTEWithAttributes opposite: #attributes'
	],
	#traits : 'FamixGTECanBeClassSide + FamixGTEStructuralEntity',
	#classTraits : 'FamixGTECanBeClassSide classTrait + FamixGTEStructuralEntity classTrait',
	#category : #'Graphoose-Traits-Attribute'
}

{ #category : #meta }
FamixGTEAttribute classSide >> annotation [

	<FMClass: #TAttribute super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #metrics }
FamixGTEAttribute >> hierarchyNestingLevel [
	<FMGTEProperty: #hierarchyNestingLevel type: #Number>
	<derived>
	<FMComment: 'Attribute hierarchy nesting level'>
		
	^self
		lookUpPropertyNamed: #hierarchyNestingLevel
		computedAs: [self belongsTo hierarchyNestingLevel]
]

{ #category : #metrics }
FamixGTEAttribute >> hierarchyNestingLevel: aNumber [
	self cacheAt: #hierarchyNestingLevel put: aNumber
]

{ #category : #testing }
FamixGTEAttribute >> isAttribute [

	<generated>
	^ true
]

{ #category : #accessing }
FamixGTEAttribute >> isClassSide [
	<FMGTEProperty: #isClassSide type: #Boolean>
	<FMComment: 'True if class-side attribute'>
	^ isClassSide ifNil: [ false ]
]

{ #category : #printing }
FamixGTEAttribute >> mooseNameOn: aStream [
	self parentType
		ifNotNil: [ :parent | 
			parent mooseNameOn: aStream.
			aStream nextPut: $. ].
	self name ifNotNil: [ aStream nextPutAll: self name ]
]

{ #category : #accessing }
FamixGTEAttribute >> parentType [
	"Relation named: #parentType type: #FamixGTEWithAttributes opposite: #attributes"

	<generated>
	<FMComment: 'Type declaring the attribute. belongsTo implementation'>
	<container>
	^ parentType
]

{ #category : #accessing }
FamixGTEAttribute >> parentType: anObject [

	parentType := anObject.
	self resetMooseName.

]

{ #category : #navigation }
FamixGTEAttribute >> parentTypeGroup [
	<generated>
	<navigation: 'ParentType'>
	^ MooseSpecializedGroup with: self parentType
]

{ #category : #printing }
FamixGTEAttribute >> printOn: aStream [
	self parentType
		ifNotNil: [ :parent | 
			aStream
				nextPutAll: parent name;
				nextPut: $. ].
	self name ifNotNil: [ aStream nextPutAll: self name ].
	aStream nextPutAll: ' (Attribute)'
]
