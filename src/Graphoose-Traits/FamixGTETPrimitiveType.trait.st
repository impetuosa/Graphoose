Trait {
	#name : #FamixGTETPrimitiveType,
	#traits : 'FamixGTETType',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETPrimitiveType classSide >> annotation [

	<FMClass: #TPrimitiveType super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #testing }
FamixGTETPrimitiveType >> isPrimitiveType [

	<generated>
	^ true
]
