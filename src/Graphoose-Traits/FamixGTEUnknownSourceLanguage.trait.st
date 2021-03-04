Trait {
	#name : #FamixGTEUnknownSourceLanguage,
	#traits : 'FamixGTESourceLanguage',
	#classTraits : 'FamixGTESourceLanguage classTrait',
	#category : #'Graphoose-Traits-SourceLanguage'
}

{ #category : #meta }
FamixGTEUnknownSourceLanguage classSide >> annotation [

	<FMClass: #TUnknownSourceLanguage super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #testing }
FamixGTEUnknownSourceLanguage >> isUnknown [
	^ true
]
