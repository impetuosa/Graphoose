"
FamixGTEype is a generic class representing a type. It has several specializations for specific kinds of types, the typical one being FAMIXClass.
A type is defined in a container (instance of FAMIXContainer). 
The container is typically a namespace (instance of FAMIXNamespace), but may also be a class (in the case of nested classes), or a method (in the case of anonymous classes).

A type can have multiple subtypes or supertypes. These are modelled by means of FAMIXInheritance instances.
"
Trait {
	#name : #FamixGTEType,
	#instVars : [
		'#typeContainer => FMGTEOne type: #FamixGTEWithTypes opposite: #types',
		'#typedEntities => FMGTEMany type: #FamixGTETypedEntity opposite: #declaredType'
	],
	#traits : 'FamixGTENamedEntity + FamixGTEReferenceable',
	#classTraits : 'FamixGTENamedEntity classTrait + FamixGTEReferenceable classTrait',
	#category : #'Graphoose-Traits-Type'
}

{ #category : #meta }
FamixGTEType classSide >> annotation [

	<FMClass: #TType super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixGTEType classSide >> annotationFamixGTEypeGroup [
	<generated>
	<mooseGroup>
	^ FamixGTEypeGroup
]

{ #category : #adding }
FamixGTEType >> addTypedEntity: anObject [
	<generated>
	^ self typedEntities add: anObject
]

{ #category : #deprecated }
FamixGTEType >> belongsTo [
	^ self parentPackage ifNil: [ self parents ifNotEmpty: #anyOne ifEmpty: [ nil ] ]
]

{ #category : #testing }
FamixGTEType >> entityHasIncomingTypeDeclarations [
	^ self typedEntities isNotEmpty
]

{ #category : #testing }
FamixGTEType >> incomingTypeDeclarations [  
	^ self typedEntities collect: [ :var | MQNavigationDependencyAssociation newFrom: var to: self ]
]

{ #category : #testing }
FamixGTEType >> isType [

	<generated>
	^ true
]

{ #category : #accessing }
FamixGTEType >> mooseNameOn: aStream [
	self typeContainer
		ifNotNil: [ :parent |
			parent mooseNameOn: aStream.
			aStream nextPutAll: '::' ].
	self name ifNotNil: [ :n | aStream nextPutAll: n ]
]

{ #category : #metrics }
FamixGTEType >> numberOfAccessesToForeignData [
	<FMGTEProperty: #numberOfAccessesToForeignData type: #Number>
	<derived>
	<FMComment: 'Number of accesses to foreign data'>
	
	^self
		lookUpPropertyNamed: #numberOfAccessesToForeignData
		computedAs: [self notExistentMetricValue]
]

{ #category : #metrics }
FamixGTEType >> numberOfAccessesToForeignData: aNumber [
	self cacheAt: #numberOfAccessesToForeignData put: aNumber
]

{ #category : #metrics }
FamixGTEType >> numberOfDuplicatedLinesOfCodeInternally [
	<FMGTEProperty: #numberOfDuplicatedLinesOfCodeInternally type: #Number>
	<derived>
	<FMComment: 'The number of duplicated lines of code internally'>		

	^self
		lookUpPropertyNamed: #numberOfDuplicatedLinesOfCodeInternally
		computedAs: [self notExistentMetricValue]
]

{ #category : #metrics }
FamixGTEType >> numberOfDuplicatedLinesOfCodeInternally: aNumber [
	self cacheAt: #numberOfDuplicatedLinesOfCodeInternally put: aNumber
]

{ #category : #testing }
FamixGTEType >> realType [
	"All types except the alias ones are real"
	^ self 
]

{ #category : #accessing }
FamixGTEType >> typeContainer [
	"Relation named: #typeContainer type: #FamixGTEWithTypes opposite: #types"

	<generated>
	<FMComment: 'Container entity to which this type belongs to. Container is a namespace, not a package (Smalltalk).'>
	<container>
	^ typeContainer
]

{ #category : #accessing }
FamixGTEType >> typeContainer: anObject [

	typeContainer := anObject.
	self resetMooseName.

]

{ #category : #navigation }
FamixGTEType >> typeContainerGroup [
	<generated>
	<navigation: 'TypeContainer'>
	^ MooseSpecializedGroup with: self typeContainer
]

{ #category : #accessing }
FamixGTEType >> typedEntities [
	"Relation named: #typedEntities type: #FamixGTETypedEntity opposite: #declaredType"

	<generated>
	<FMComment: 'Entities that have this type as declaredType'>
	<derived>
	<target>
	^ typedEntities
]

{ #category : #accessing }
FamixGTEType >> typedEntities: anObject [

	<generated>
	typedEntities value: anObject
]
