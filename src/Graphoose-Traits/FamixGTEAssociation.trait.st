"
FAMIXAssociation is an abstract superclass for relationships between Famix named entities. It defines a polymorphic API refined by subclasses: essentially from, to, next and previous.

From and To properties are abstract at this level, but specific implementations can have multiple ends and properties. 
For example, FAMIXInheritance has:
	(i) From mapped to the subclass;
	(ii) To mapped to the superclass.
	
To adapt your code to MooseQuery, you have also to add the <source> and <target> pragmas in the selectors definition for each class inheriting FAMIXAssociation

Next and Previous properties provide an order of the appearence of these associations in code. The order is calculated within a particular relationship for example, method invocation order within a calling method (from).
For example in java, the following code
 method a() { b(); c(); }
will produce two invocation associations first from method a to method b, and second from method a to method c. These associations are bound together and can be navigated with previous and next.




"
Trait {
	#name : #FamixGTEAssociation,
	#instVars : [
		'#next => FMGTEOne type: #FamixGTEAssociation opposite: #previous',
		'#previous => FMGTEOne type: #FamixGTEAssociation opposite: #next'
	],
	#traits : 'FamixGTESourceEntity + TAssociationMetaLevelDependency',
	#classTraits : 'FamixGTESourceEntity classTrait + TAssociationMetaLevelDependency classTrait',
	#category : #'Graphoose-Traits-Association'
}

{ #category : #meta }
FamixGTEAssociation classSide >> annotation [

	<FMClass: #TAssociation super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #'instance creation' }
FamixGTEAssociation classSide >> source: anEntity target: anotherEntity [
	^ self new
		source: anEntity;
		target: anotherEntity;
		yourself
]

{ #category : #'instance creation' }
FamixGTEAssociation classSide >> source: anEntity target: anotherEntity model: aMooseModel [
	^ (self source: anEntity target: anotherEntity)
		mooseModel: aMooseModel;
		yourself
]

{ #category : #accessing }
FamixGTEAssociation >> allTargets [
	"Since #target can return an entity or a collection, I ensure we always get a collection."

	^ self target asCollection
]

{ #category : #converting }
FamixGTEAssociation >> asAssociationFrom: anEntity [
	^ self
]

{ #category : #converting }
FamixGTEAssociation >> asAssociationTo: anEntity [
	^ self
]

{ #category : #printing }
FamixGTEAssociation >> gtDisplayOn: aStream [
	self source gtDisplayOn: aStream.
	aStream nextPutAll: ' -> '.
	self target gtDisplayOn: aStream
]

{ #category : #testing }
FamixGTEAssociation >> isAssociation [

	<generated>
	^ true
]

{ #category : #accessing }
FamixGTEAssociation >> next [
	"Relation named: #next type: #FamixGTEAssociation opposite: #previous"

	<generated>
	<FMComment: 'Next association in an ordered collection of associations. Currently not supported by the Moose importer'>
	<derived>
	^ next
]

{ #category : #accessing }
FamixGTEAssociation >> next: anObject [

	<generated>
	next := anObject
]

{ #category : #accessing }
FamixGTEAssociation >> previous [
	"Relation named: #previous type: #FamixGTEAssociation opposite: #next"

	<generated>
	<FMComment: 'Previous association in an ordered collection of associations. Currently not supported by the Moose importer'>
	^ previous
]

{ #category : #accessing }
FamixGTEAssociation >> previous: anObject [

	<generated>
	previous := anObject
]

{ #category : #accessing }
FamixGTEAssociation >> source [
	^ self sourceSelector value: self
]

{ #category : #accessing }
FamixGTEAssociation >> source: aSource [
	self perform: (self sourceSelector , ':') with: aSource
]

{ #category : #accessing }
FamixGTEAssociation >> sourceSelector [
	^ (self mooseDescription allComplexProperties detect: #isSource)
		implementingSelector
]

{ #category : #accessing }
FamixGTEAssociation >> target [
	^ self targetSelector value: self
]

{ #category : #accessing }
FamixGTEAssociation >> target: aTarget [
	self perform: (self targetSelector , ':') with: aTarget
]

{ #category : #accessing }
FamixGTEAssociation >> targetSelector [
	^ (self mooseDescription allComplexProperties detect: #isTarget)
		implementingSelector
]
