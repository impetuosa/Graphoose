"
Represent a preprocessor #ifdef/#ifndef statement

Knows the name of the macro tested and whether it is ""negated"" (#ifndef) or not (#ifdef)
"
Trait {
	#name : #FamixGTEPreprocessorIfdef,
	#category : #'Graphoose-Traits-Preprocessor'
}

{ #category : #meta }
FamixGTEPreprocessorIfdef classSide >> annotation [

	<FMClass: #TPreprocessorIfdef super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]
