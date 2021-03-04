Trait {
	#name : #FamixGTEWithMethods,
	#instVars : [
		'#methods => FMGTEMany type: #FamixGTEMethod opposite: #parentType'
	],
	#category : #'Graphoose-Traits-Behavioral'
}

{ #category : #meta }
FamixGTEWithMethods classSide >> annotation [

	<FMClass: #TWithMethods super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithMethods >> addMethod: aMethod [
	methods add: aMethod
]

{ #category : #accessing }
FamixGTEWithMethods >> methods [
	"Relation named: #methods type: #FamixGTEMethod opposite: #parentType"

	<generated>
	<FMComment: 'Methods declared by this type.'>
	<derived>
	^ methods
]

{ #category : #accessing }
FamixGTEWithMethods >> methods: anObject [

	<generated>
	methods value: anObject
]

{ #category : #accessing }
FamixGTEWithMethods >> methodsGroup [
	<navigation: 'Methods'>
	^MooseGroup
		withAll: self methods
		withDescription: 'Methods from ' , self mooseName
]

{ #category : #metrics }
FamixGTEWithMethods >> numberOfAbstractMethods [
	<FMGTEProperty: #numberOfAbstractMethods type: #Number>
	<derived>
	<FMComment: 'The number of abstract methods in the class'>
	^ self lookUpPropertyNamed: #numberOfAbstractMethods computedAs: [ self methodsGroup count: [ :each | each isAbstract ] ]
]

{ #category : #metrics }
FamixGTEWithMethods >> numberOfAbstractMethods: aNumber [
	self cacheAt: #numberOfAbstractMethods put: aNumber
]

{ #category : #metrics }
FamixGTEWithMethods >> numberOfAccessorMethods [
	<FMGTEProperty: #numberOfAccessorMethods type: #Number>
	<derived>
	<FMComment: 'The number of accessor methods in a class'>
	^ self
		lookUpPropertyNamed: #numberOfAccessorMethods
		computedAs: [ | noa |
			noa := 0.
			self methods
				do:
					[ :method | method isPureAccessor ifNotNil: [ (method isPureAccessor or: [ (method propertyNamed: #AccessorMethod) isNotNil ]) ifTrue: [ noa := noa + 1 ] ] ].
			noa ]
]

{ #category : #metrics }
FamixGTEWithMethods >> numberOfAccessorMethods: aNumber [
	self cacheAt: #numberOfAccessorMethods put: aNumber
]

{ #category : #metrics }
FamixGTEWithMethods >> numberOfConstructorMethods [
	<FMGTEProperty: #numberOfConstructorMethods type: #Number>
	<derived>
	<FMComment: 'The number of constructor methods in a class'>
	^ self
		lookUpPropertyNamed: #numberOfConstructorMethods
		computedAs: [ 
			| nc |
			nc := 0.
			self methods
				do: [ :method | 
					method isConstructor
						ifNotNil: [ 
							method isConstructor
								ifTrue: [ nc := 1 ] ] ].
			nc ]
]

{ #category : #metrics }
FamixGTEWithMethods >> numberOfConstructorMethods: aNumber [
	self cacheAt: #numberOfConstructorMethods put: aNumber
]

{ #category : #metrics }
FamixGTEWithMethods >> numberOfMessageSends [
	<FMGTEProperty: #numberOfMessageSends type: #Number>
	<derived>
	<FMComment: 'The number of message sends from a class'>
	
	^self
		lookUpPropertyNamed: #numberOfMessageSends
		computedAs: [self methodsGroup sumNumbers: #numberOfMessageSends]
]

{ #category : #metrics }
FamixGTEWithMethods >> numberOfMessageSends: aNumber [
	self cacheAt: #numberOfMessageSends put: aNumber
]

{ #category : #accessing }
FamixGTEWithMethods >> numberOfMethods [
	<FMGTEProperty: #numberOfMethods type: #Number>
	<derived>
	<FMComment: 'The number of methods in a class'>

	^self
		lookUpPropertyNamed: #numberOfMethods
		computedAs: [self methods size]
]

{ #category : #accessing }
FamixGTEWithMethods >> numberOfMethods: aNumber [
	self cacheAt: #numberOfMethods put: aNumber
]

{ #category : #metrics }
FamixGTEWithMethods >> numberOfPrivateMethods [
	<FMGTEProperty: #numberOfPrivateMethods type: #Number>
	<derived>
	<FMComment: 'The number of private methods in a class'>
			
	^self
		lookUpPropertyNamed: #numberOfPrivateMethods
		computedAs: [(self methods select: [:each | each isPrivate]) size]
]

{ #category : #metrics }
FamixGTEWithMethods >> numberOfPrivateMethods: aNumber [
	self cacheAt: #numberOfPrivateMethods put: aNumber
]

{ #category : #metrics }
FamixGTEWithMethods >> numberOfProtectedMethods [
	<FMGTEProperty: #numberOfProtectedMethods type: #Number>
	<derived>
	<FMComment: 'The number of protected methods in a class'>		
	
	^self
		lookUpPropertyNamed: #numberOfProtectedMethods
		computedAs: [(self methods select: [:each | each isProtected]) size]
]

{ #category : #metrics }
FamixGTEWithMethods >> numberOfProtectedMethods: aNumber [
	self cacheAt: #numberOfProtectedMethods put: aNumber
]

{ #category : #metrics }
FamixGTEWithMethods >> numberOfPublicMethods [
	<FMGTEProperty: #numberOfPublicMethods type: #Number>
	<derived>
	<FMComment: 'The number of public methods in a class'>		
		
	^self
		lookUpPropertyNamed: #numberOfPublicMethods
		computedAs: [(self methods select: [:each | each isPublic]) size]
]

{ #category : #metrics }
FamixGTEWithMethods >> numberOfPublicMethods: aNumber [
	self cacheAt: #numberOfPublicMethods put: aNumber
]

{ #category : #metrics }
FamixGTEWithMethods >> tightClassCohesion [
	<FMGTEProperty: #tightClassCohesion type: #Number>
	<derived>
	<FMComment: 'Tight class cohesion of a class'>
	self flag: #TODO.
	^ self
		lookUpPropertyNamed: #tightClassCohesion
		computedAs: [ | tcc accessDictionary nom |
			tcc := 0.
			accessDictionary := Dictionary new.
			self methods
				do: [ :eachMethod | 
					eachMethod accesses
						do: [ :eachAccess | 
							| var |
							var := eachAccess variable.
							var isAttribute
								ifTrue: [ | varName accessedFrom |
									varName := var name.
									accessedFrom := accessDictionary at: varName ifAbsent: [  ].
									accessedFrom
										ifNil: [ accessedFrom := Set new.
											accessDictionary at: varName put: accessedFrom ].
									accessedFrom add: eachMethod name ] ] ].
			accessDictionary values
				do: [ :each | 
					| size |
					size := each size.
					tcc := tcc + (size * (size - 1) / 2) ].
			nom := self numberOfMethods.
			tcc := (nom = 0 or: [ nom = 1 ]) ifFalse: [ tcc / (nom * (nom - 1) / 2) ] ifTrue: [ 0 ].
			tcc asFloat ]
]

{ #category : #metrics }
FamixGTEWithMethods >> tightClassCohesion: aNumber [
	self cacheAt: #tightClassCohesion put: aNumber
]

{ #category : #metrics }
FamixGTEWithMethods >> weightedMethodCount [
	<FMGTEProperty: #weightedMethodCount type: #Number>
	<derived>
	<FMComment: 'The sum of the complexity in a class'>
			
	^self
		lookUpPropertyNamed: #weightedMethodCount
		computedAs: [self methodsGroup sumNumbers: #cyclomaticComplexity]
]

{ #category : #metrics }
FamixGTEWithMethods >> weightedMethodCount: aNumber [
	self cacheAt: #weightedMethodCount put: aNumber
]
