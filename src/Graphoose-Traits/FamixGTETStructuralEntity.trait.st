"
FAMIXStructuralEntity is the abstract superclass for basic data structure in the source code. A structural entity has a declaredType that points to the type of the variable.
"
Trait {
	#name : #FamixGTETStructuralEntity,
	#traits : 'FamixGTETAccessible + FamixGTETInvocationsReceiver + FamixGTETNamedEntity + FamixGTETTypedEntity',
	#classTraits : 'FamixGTETAccessible classTrait + FamixGTETInvocationsReceiver classTrait + FamixGTETNamedEntity classTrait + FamixGTETTypedEntity classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETStructuralEntity classSide >> annotation [

	<FMClass: #TStructuralEntity super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #testing }
FamixGTETStructuralEntity >> isStructuralEntity [

	<generated>
	^ true
]
