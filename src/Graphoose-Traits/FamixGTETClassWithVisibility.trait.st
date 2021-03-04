Trait {
	#name : #FamixGTETClassWithVisibility,
	#traits : 'FamixGTETClass + FamixGTETHasVisibility',
	#classTraits : 'FamixGTETClass classTrait + FamixGTETHasVisibility classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETClassWithVisibility classSide >> annotation [

	<FMClass: #TClassWithVisibility super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]
