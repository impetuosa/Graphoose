"
FAMIXStructuralEntity is the abstract superclass for basic data structure in the source code. A structural entity has a declaredType that points to the type of the variable.
"
Trait {
	#name : #FamixGTEStructuralEntity,
	#traits : 'FamixGTENamedEntity + FamixGTEAccessible + FamixGTEInvocationsReceiver + FamixGTETypedEntity',
	#classTraits : 'FamixGTENamedEntity classTrait + FamixGTEAccessible classTrait + FamixGTEInvocationsReceiver classTrait + FamixGTETypedEntity classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTEStructuralEntity classSide >> annotation [

	<FMClass: #TStructuralEntity super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #testing }
FamixGTEStructuralEntity >> isStructuralEntity [

	<generated>
	^ true
]
