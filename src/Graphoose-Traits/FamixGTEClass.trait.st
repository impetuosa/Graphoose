"
FAMIXClass represents an entity which can build new instances. A FAMIXClass is a FamixGTEype, therefore it is involved in super/sub types relationships (depending on the language) and it holds attributes, methods.

FAMIX does not model explicitly interfaces, but a FAMIXClass can represent a Java interface by setting the isInterface property.

A class is typically scoped in a namespace. To model nested or anonymous classes, extractors can set the container of classes to classes or methods, respectively.
"
Trait {
	#name : #FamixGTEClass,
	#traits : 'FamixGTEInvocationsReceiver + FamixGTEPackageable + (FamixGTEType - {#queryStaticIncomingAssociations. #queryStaticOutgoingAssociations}) + FamixGTEWithAttributes + FamixGTEWithComments + FamixGTEWithInheritances + FamixGTEWithMethods + TOODependencyQueries',
	#classTraits : 'FamixGTEInvocationsReceiver classTrait + FamixGTEPackageable classTrait + FamixGTEType classTrait + FamixGTEWithAttributes classTrait + FamixGTEWithComments classTrait + FamixGTEWithInheritances classTrait + FamixGTEWithMethods classTrait + TOODependencyQueries classTrait',
	#category : #'Graphoose-Traits-Class'
}

{ #category : #meta }
FamixGTEClass classSide >> annotation [

	<FMClass: #TClass super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixGTEClass classSide >> annotationFamixClassGroup [
	<generated>
	<mooseGroup>
	^ FamixClassGroup
]

{ #category : #metrics }
FamixGTEClass >> addedMethods [
	| inheritedMethodNames |
	inheritedMethodNames := self inheritedMethods collect: #signature.
	^ self methods reject: [ :each | inheritedMethodNames includes: each signature ]
]

{ #category : #enumerating }
FamixGTEClass >> inheritedAttributes [

	| inheritedAttrs |
	inheritedAttrs := OrderedCollection new.
	self allSuperclassesDo: [ :each | 
		inheritedAttrs addAll: each attributes ].
	^ inheritedAttrs
]

{ #category : #enumerating }
FamixGTEClass >> inheritedMethods [

	| inheritedMethods |
	inheritedMethods := OrderedCollection new.
	self allSuperclassesDo: [ :each | 
	inheritedMethods addAll: each methods ] .
	^ inheritedMethods
]

{ #category : #enumerating }
FamixGTEClass >> inheritedSignatures [

	| inheritedSignatures |
	inheritedSignatures := Set new.
	self superclassHierarchy do: [ :each | 
		inheritedSignatures addAll:
			(each methods collect: [ :method | method signature ]) ].
	^ inheritedSignatures
]

{ #category : #enumerating }
FamixGTEClass >> inheritedSignaturesToMethod [

	| inheritedSignaturesToMethod |
	inheritedSignaturesToMethod := Dictionary new.
	self allSuperclassesDo: [ :each | 
		each methods do: [ :method | 
			inheritedSignaturesToMethod
				at: method signature
				ifAbsentPut: [ method ] ] ].
	^ inheritedSignaturesToMethod
]

{ #category : #testing }
FamixGTEClass >> isClass [

	<generated>
	^ true
]

{ #category : #testing }
FamixGTEClass >> isTestCase [
	<FMGTEProperty: #isTestCase type: #Boolean>
	<FMComment: 'True if the method is considered as a test'>
	<derived>
	^ self attributeAt: #isTestCase ifAbsent: [ false ]
]

{ #category : #testing }
FamixGTEClass >> isTestCase: aBoolean [
	^ self attributeAt: #isTestCase put: true
]

{ #category : #metrics }
FamixGTEClass >> numberOfAttributesInherited [
	<FMGTEProperty: #numberOfAttributesInherited type: #Number>
	<derived>
	<FMComment: 'The number of attributes in a class inherited from super classes'>	
	
	^self
		lookUpPropertyNamed: #numberOfAttributesInherited
		computedAs: [self inheritedAttributes size]
]

{ #category : #metrics }
FamixGTEClass >> numberOfAttributesInherited: aNumber [
	self cacheAt: #numberOfAttributesInherited put: aNumber
]

{ #category : #metrics }
FamixGTEClass >> numberOfMethodsAdded [
	<FMGTEProperty: #numberOfMethodsAdded type: #Number>
	<derived>
	<FMComment: 'The number of methods in a class added with respect to super classes'>	
	
	^self
		lookUpPropertyNamed: #numberOfMethodsAdded
		computedAs: [self addedMethods size]
]

{ #category : #metrics }
FamixGTEClass >> numberOfMethodsAdded: aNumber [
	self cacheAt: #numberOfMethodsAdded put: aNumber
]

{ #category : #metrics }
FamixGTEClass >> numberOfMethodsInHierarchy [
	<FMGTEProperty: #numberOfMethodsInHierarchy type: #Number>
	<derived>
	<FMComment: 'The number of methods of a class included the inherited ones'>	
	
	| totNom |
	totNom := self methods size.
	self superclassHierarchyGroup
		do: [:aClass | totNom := totNom + aClass methods size].
	^totNom
]

{ #category : #metrics }
FamixGTEClass >> numberOfMethodsInHierarchy: aNumber [
	self cacheAt: #numberOfMethodsInHierarchy put: aNumber
]

{ #category : #metrics }
FamixGTEClass >> numberOfMethodsInherited [
	<FMGTEProperty: #numberOfMethodsInherited type: #Number>
	<derived>
	<FMComment: 'The number of methods in a class inherited from super classes'>	

	^self
		lookUpPropertyNamed: #numberOfMethodsInherited
		computedAs: [self inheritedMethods size]
]

{ #category : #metrics }
FamixGTEClass >> numberOfMethodsInherited: aNumber [
	self cacheAt: #numberOfMethodsInherited put: aNumber
]

{ #category : #metrics }
FamixGTEClass >> numberOfMethodsOverriden [
	<FMGTEProperty: #numberOfMethodsOverriden type: #Number>
	<derived>
	<FMComment: 'The number of methods in a class overriden with respect to super classes'>
			
	^self
		lookUpPropertyNamed: #numberOfMethodsOverriden
		computedAs: [self numberOfMethods - self numberOfMethodsAdded]
]

{ #category : #metrics }
FamixGTEClass >> numberOfMethodsOverriden: aNumber [
	self cacheAt: #numberOfMethodsOverriden put: aNumber
]

{ #category : #metrics }
FamixGTEClass >> weightOfAClass [
	<FMGTEProperty: #weightOfAClass type: #Number>
	<derived>
	<FMComment: 'Weight of a class'>	
			
	^self
		lookUpPropertyNamed: #weightOfAClass
		computedAs: [self notExistentMetricValue]
]

{ #category : #metrics }
FamixGTEClass >> weightOfAClass: aNumber [
	self cacheAt: #weightOfAClass put: aNumber
]
