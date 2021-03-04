"
Represent a preprocessor #ifdef/#ifndef statement

Knows the name of the macro tested and whether it is ""negated"" (#ifndef) or not (#ifdef)
"
Trait {
	#name : #FamixGTETPreprocessorIfdef,
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETPreprocessorIfdef classSide >> annotation [

	<FMClass: #TPreprocessorIfdef super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]
