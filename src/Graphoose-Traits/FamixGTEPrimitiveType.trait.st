Trait {
	#name : #FamixGTEPrimitiveType,
	#traits : 'FamixGTEType',
	#classTraits : 'FamixGTEType classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTEPrimitiveType classSide >> annotation [

	<FMClass: #TPrimitiveType super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #testing }
FamixGTEPrimitiveType >> isPrimitiveType [

	<generated>
	^ true
]
