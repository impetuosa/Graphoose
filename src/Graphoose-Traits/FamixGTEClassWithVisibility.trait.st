Trait {
	#name : #FamixGTEClassWithVisibility,
	#traits : 'FamixGTEClass + FamixGTEHasVisibility',
	#classTraits : 'FamixGTEClass classTrait + FamixGTEHasVisibility classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTEClassWithVisibility classSide >> annotation [

	<FMClass: #TClassWithVisibility super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #enumerating }
FamixGTEClassWithVisibility >> inheritedAttributes [

	| inheritedAttrs |
	inheritedAttrs := OrderedCollection new.
	self allSuperclassesDo: [ :each | 
		each attributes do: [ :attr | 
			attr isPrivate ifFalse: [ inheritedAttrs add: attr ] ] ].
	^ inheritedAttrs
]

{ #category : #enumerating }
FamixGTEClassWithVisibility >> inheritedMethods [

	| inheritedMethods |
	inheritedMethods := OrderedCollection new.
	self allSuperclassesDo: [ :each | 
		each methods do: [ :method | 
			method isPrivate ifFalse: [ inheritedMethods add: method ] ] ].
	^ inheritedMethods
]

{ #category : #enumerating }
FamixGTEClassWithVisibility >> inheritedSignatures [

	| inheritedSignatures |
	inheritedSignatures := Set new.
	self superclassHierarchy do: [ :each | 
		each methods do: [ :method | 
			method isPrivate ifFalse: [ 
				inheritedSignatures add: method signature ] ] ].
	^ inheritedSignatures
]

{ #category : #enumerating }
FamixGTEClassWithVisibility >> inheritedSignaturesToMethod [

	| inheritedSignaturesToMethod |
	inheritedSignaturesToMethod := Dictionary new.
	self allSuperclassesDo: [ :each | 
		each methods do: [ :method | 
			method isPrivate ifFalse: [ 
				inheritedSignaturesToMethod
					at: method signature
					ifAbsentPut: [ method ] ] ] ].
	^ inheritedSignaturesToMethod
]
