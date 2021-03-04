Trait {
	#name : #FamixGTEAccessible,
	#instVars : [
		'#incomingAccesses => FMGTEMany type: #FamixGTEAccess opposite: #variable'
	],
	#category : #'Graphoose-Traits-Access'
}

{ #category : #meta }
FamixGTEAccessible classSide >> annotation [

	<FMClass: #TAccessible super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEAccessible >> accessingClasses [

	^(self accessingMethods collectAsSet: [:each | each belongsTo]) asOrderedCollection
]

{ #category : #accessing }
FamixGTEAccessible >> accessingMethods [

	^ self incomingAccesses collectAsSet: [:anAccess | anAccess accessor].

]

{ #category : #accessing }
FamixGTEAccessible >> accessors [
	<FMGTEProperty: #accessors type: #FamixGTEWithAccesses>
	<multivalued>
	<derived>
	^ (self incomingAccesses collectAsSet: [ :each | each accessor ]) asMooseGroup
]

{ #category : #adding }
FamixGTEAccessible >> addIncomingAccess: anAccess [
	incomingAccesses add: anAccess
]

{ #category : #accessing }
FamixGTEAccessible >> globalAccesses [
	| attrclass globalAccesses |
	attrclass := self belongsTo.
	globalAccesses := Set new.
	self
		incomingAccesses do:
			[:anAccess | 
			| ent |
			ent := anAccess accessor.
			ent belongsTo = attrclass ifFalse: [globalAccesses add: anAccess]].
	^globalAccesses
]

{ #category : #accessing }
FamixGTEAccessible >> incomingAccesses [
	"Relation named: #incomingAccesses type: #FamixGTEAccess opposite: #variable"

	<generated>
	<FMComment: 'All Famix accesses pointing to this structural entity'>
	<derived>
	^ incomingAccesses
]

{ #category : #accessing }
FamixGTEAccessible >> incomingAccesses: anObject [

	<generated>
	incomingAccesses value: anObject
]

{ #category : #accessing }
FamixGTEAccessible >> localAccesses [
	| attrclass localAccesses |
	attrclass := self belongsTo.
	localAccesses := Set new.
	self
		incomingAccesses do:
			[:anAccess | 
			| ent |
			ent := anAccess accessor.
			ent belongsTo = attrclass ifTrue: [localAccesses add: anAccess]].
	^localAccesses
]

{ #category : #accessing }
FamixGTEAccessible >> numberOfAccesses [
	<FMGTEProperty: #numberOfAccesses type: #Number>
	<derived>
	<FMComment: 'The number of accesses of an attribute.'>

	^self
		lookUpPropertyNamed: #numberOfAccesses
		computedAs: [self incomingAccesses size]
]

{ #category : #accessing }
FamixGTEAccessible >> numberOfAccessingClasses [
	<FMGTEProperty: #numberOfAccessingClasses type: #Number>
	<derived>
	<FMComment: 'The number of classes from which at least one method accesses an attribute.'>

	^self
		lookUpPropertyNamed: #numberOfAccessingClasses
		computedAs: [self accessingClasses size]
]

{ #category : #accessing }
FamixGTEAccessible >> numberOfAccessingMethods [
	<FMGTEProperty: #numberOfAccessingMethods type: #Number>
	<derived>
	<FMComment: 'The number of methods accessing an attribute.'>				
	
	^self
		lookUpPropertyNamed: #numberOfAccessingMethods
		computedAs: [self accessingMethods size]
]

{ #category : #accessing }
FamixGTEAccessible >> numberOfGlobalAccesses [
	<FMGTEProperty: #numberOfGlobalAccesses type: #Number>
	<derived>
	<FMComment: 'The number of accesses to an attribute from outside the class defining the attribute.'>	

	^self
		lookUpPropertyNamed: #numberOfGlobalAccesses
		computedAs: [self globalAccesses size]
]

{ #category : #accessing }
FamixGTEAccessible >> numberOfLocalAccesses [
	<FMGTEProperty: #numberOfLocalAccesses type: #Number>
	<derived>
	<FMComment: 'The number of accesses to an attribute from inside the class defining the attribute.'>
		
	^self
		lookUpPropertyNamed: #numberOfLocalAccesses
		computedAs: [self localAccesses size]
]

{ #category : #accessing }
FamixGTEAccessible >> readAccesses [
	
	^self incomingAccesses select: [:each | each isRead]
]
