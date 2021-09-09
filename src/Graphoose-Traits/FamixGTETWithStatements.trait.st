Trait {
	#name : #FamixGTETWithStatements,
	#traits : 'FamixGTETSourceEntity + FamixGTETWithAccesses + FamixGTETWithInvocations',
	#classTraits : 'FamixGTETSourceEntity classTrait + FamixGTETWithAccesses classTrait + FamixGTETWithInvocations classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithStatements classSide >> annotation [

	<FMClass: #TWithStatements super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #testing }
FamixGTETWithStatements >> isBehavioural [

	<generated>
	^ true
]
