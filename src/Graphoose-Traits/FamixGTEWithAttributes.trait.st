Trait {
	#name : #FamixGTEWithAttributes,
	#instVars : [
		'#attributes => FMGTEMany type: #FamixGTEAttribute opposite: #parentType'
	],
	#category : #'Graphoose-Traits-Attribute'
}

{ #category : #meta }
FamixGTEWithAttributes classSide >> annotation [

	<FMClass: #TWithAttributes super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTEWithAttributes >> addAttribute: anAttribute [
	attributes add: anAttribute
]

{ #category : #accessing }
FamixGTEWithAttributes >> attributes [
	"Relation named: #attributes type: #FamixGTEAttribute opposite: #parentType"

	<generated>
	<FMComment: 'List of attributes declared by this type.'>
	<derived>
	^ attributes
]

{ #category : #accessing }
FamixGTEWithAttributes >> attributes: anObject [

	<generated>
	attributes value: anObject
]

{ #category : #'Famix-Extensions' }
FamixGTEWithAttributes >> numberOfAttributes [
	<FMGTEProperty: #numberOfAttributes type: #Number>
	<derived>
	<FMComment: 'The number of attributes in the class'>
	
	^self
		lookUpPropertyNamed: #numberOfAttributes
		computedAs: [self attributes size]
]

{ #category : #'Famix-Extensions' }
FamixGTEWithAttributes >> numberOfAttributes: aNumber [
	self cacheAt: #numberOfAttributes put: aNumber
]
