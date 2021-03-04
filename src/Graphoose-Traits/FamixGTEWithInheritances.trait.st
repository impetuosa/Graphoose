Trait {
	#name : #FamixGTEWithInheritances,
	#instVars : [
		'#superInheritances => FMGTEMany type: #FamixGTEInheritance opposite: #subclass',
		'#subInheritances => FMGTEMany type: #FamixGTEInheritance opposite: #superclass'
	],
	#category : #'Graphoose-Traits-Inheritance'
}

{ #category : #meta }
FamixGTEWithInheritances classSide >> annotation [

	<FMClass: #TWithInheritances super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithInheritances >> addSubInheritance: anInheritance [ 
	subInheritances add: anInheritance
]

{ #category : #accessing }
FamixGTEWithInheritances >> addSuperInheritance: anInheritance [ 
	superInheritances add: anInheritance
]

{ #category : #enumerating }
FamixGTEWithInheritances >> allSubclassesDo: aBlock [
	self subInheritances do: [ :each | aBlock value: each subclass ].
	self subInheritances do: [ :each | each subclass allSubclassesDo: aBlock ]
]

{ #category : #enumerating }
FamixGTEWithInheritances >> allSuperclassesDo: aBlock [
	self superInheritances do: [:each | aBlock value: each superclass].
	self superInheritances do: [:each | each superclass allSuperclassesDo: aBlock]

]

{ #category : #enumerating }
FamixGTEWithInheritances >> directSubclasses [
	"returns a collection with all subclasses of this class"

	^ self subInheritances collect: #subclass
]

{ #category : #enumerating }
FamixGTEWithInheritances >> directSuperclasses [
	"returns a collection with all superclasses of this class"

	^ self superInheritances collect: #superclass
]

{ #category : #metrics }
FamixGTEWithInheritances >> hierarchyNestingLevel [
	<FMGTEProperty: #hierarchyNestingLevel type: #Number>
	<derived>
	<FMComment: 'The nesting of a class inside the hierarchy'>
	^ self
		lookUpPropertyNamed: #hierarchyNestingLevel
		computedAs: [ | currentMaxDepth |
			(self directSuperclasses isEmpty or: [ self isStub ])
				ifTrue: [ 0 ]
				ifFalse: [ currentMaxDepth := 0.
					self allSuperclassesDo: [ :aClass | currentMaxDepth := currentMaxDepth max: aClass hierarchyNestingLevel ].
					currentMaxDepth + 1 ] ]
]

{ #category : #metrics }
FamixGTEWithInheritances >> hierarchyNestingLevel: aNumber [
	self cacheAt: #hierarchyNestingLevel put: aNumber
]

{ #category : #testing }
FamixGTEWithInheritances >> inheritsFrom: aClass [
	self allSuperclassesDo: [ :each | each = aClass ifTrue: [ ^ true ] ].
	^ false
]

{ #category : #enumerating }
FamixGTEWithInheritances >> isHierarchyRoot [
	^ self superclassHierarchyGroup allSatisfy: [ :each | each isNil or: [ each isStub ] ]
]

{ #category : #enumerating }
FamixGTEWithInheritances >> isHierarchyRootWithin: aClassGroup [
	^ (self superclassHierarchyGroup intersection: aClassGroup) isEmpty
]

{ #category : #metrics }
FamixGTEWithInheritances >> numberOfDirectSubclasses [
	<FMGTEProperty: #numberOfDirectSubclasses type: #Number>
	<FMComment: 'The number of direct subclasses'>
	<derived>
	^ self cacheAt: #numberOfDirectSubclasses ifAbsentPut: [ self directSubclasses size ]
]

{ #category : #metrics }
FamixGTEWithInheritances >> numberOfDirectSubclasses: aNumber [
	self cacheAt: #numberOfDirectSubclasses put: aNumber
]

{ #category : #metrics }
FamixGTEWithInheritances >> numberOfSubclasses [
	<FMGTEProperty: #numberOfSubclasses type: #Number>
	<derived>
	<FMComment: 'The number of subclasses of a class'>
	^ self lookUpPropertyNamed: #numberOfSubclasses computedAs: [ self subInheritances size ]
]

{ #category : #metrics }
FamixGTEWithInheritances >> numberOfSubclasses: aNumber [
	self cacheAt: #numberOfSubclasses put: aNumber
]

{ #category : #accessing }
FamixGTEWithInheritances >> subInheritances [
	"Relation named: #subInheritances type: #FamixGTEInheritance opposite: #superclass"

	<generated>
	<FMComment: 'Subinheritance relationships, i.e. known subclasses of this type.'>
	<derived>
	^ subInheritances
]

{ #category : #accessing }
FamixGTEWithInheritances >> subInheritances: anObject [

	<generated>
	subInheritances value: anObject
]

{ #category : #enumerating }
FamixGTEWithInheritances >> subclassHierarchy [
	| subclasses |
	subclasses := OrderedCollection new.
	self allSubclassesDo: [:each | subclasses add: each].
	^ subclasses
]

{ #category : #metrics }
FamixGTEWithInheritances >> subclassHierarchyDepth [
	<FMGTEProperty: #subclassHierarchyDepth type: #Number>
	<derived>
	<FMComment: 'The depth of the class hierarchy for which I am the root'>
	^ self directSubclasses
		ifEmpty: [ 0 ]
		ifNotEmpty: [ | currentMaxDepth |
			currentMaxDepth := 0.
			self allSubclassesDo: [ :aClass | currentMaxDepth := currentMaxDepth max: aClass subclassHierarchyDepth ].
			1 + currentMaxDepth ]
]

{ #category : #metrics }
FamixGTEWithInheritances >> subclassHierarchyDepth: aNumber [
	self cacheAt: #subclassHierarchyDepth put: aNumber
]

{ #category : #enumerating }
FamixGTEWithInheritances >> subclassHierarchyGroup [
	<navigation: 'All subclasses'>
	^ MooseGroup withAll: self subclassHierarchy asSet withDescription: 'All subclasses of ' , self mooseName
]

{ #category : #accessing }
FamixGTEWithInheritances >> superInheritances [
	"Relation named: #superInheritances type: #FamixGTEInheritance opposite: #subclass"

	<generated>
	<FMComment: 'Superinheritance relationships, i.e. known superclasses of this type.'>
	<derived>
	^ superInheritances
]

{ #category : #accessing }
FamixGTEWithInheritances >> superInheritances: anObject [

	<generated>
	superInheritances value: anObject
]

{ #category : #enumerating }
FamixGTEWithInheritances >> superclass [
	^ self superInheritances ifEmpty: [ nil ] ifNotEmpty: [ self superInheritances anyOne superclass ]
]

{ #category : #enumerating }
FamixGTEWithInheritances >> superclassHierarchy [
	| superclasses |
	superclasses := OrderedCollection new.
	self allSuperclassesDo: [:each |  superclasses add: each].
	^ superclasses
]

{ #category : #enumerating }
FamixGTEWithInheritances >> superclassHierarchyGroup [
	<navigation: 'All superclasses'>
	^ MooseGroup
		withAll: self superclassHierarchy asSet
		withDescription: 'All superclasses of ' , self mooseName
]

{ #category : #metrics }
FamixGTEWithInheritances >> totalNumberOfSubclasses [
	<FMGTEProperty: #totalNumberOfSubclasses type: #Number>
	<derived>
	<FMComment: 'The total number of subclasses of a class'>
	^ self lookUpPropertyNamed: #totalNumberOfSubclasses computedAs: [ self subclassHierarchyGroup size ]
]

{ #category : #metrics }
FamixGTEWithInheritances >> totalNumberOfSubclasses: aNumber [
	self cacheAt: #totalNumberOfSubclasses put: aNumber
]

{ #category : #enumerating }
FamixGTEWithInheritances >> withSubclassHierarchy [
	^ self subclassHierarchy 
		addFirst: self realType;
		flag: 'Manage TypeAlias for C metamodel';
		"addAll: self realType allTypeAliases;"
		yourself.
]

{ #category : #enumerating }
FamixGTEWithInheritances >> withSubclassesDo: aBlock [
	aBlock value: self.
	self allSubclassesDo: aBlock
]

{ #category : #'Famix-Implementation' }
FamixGTEWithInheritances >> withSuperclassHierarchy [
	self flag: #'We should add something to handle the typeAliases in C++, etc.'.
	^ self realType superclassHierarchy 
		addFirst: self realType;
		"addAll: self realType allTypeAliases;"
		yourself
]

{ #category : #enumerating }
FamixGTEWithInheritances >> withSuperclassesDo: aBlock [
	aBlock value: self.
	self allSuperclassesDo: aBlock
]
