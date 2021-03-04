"
An immediate source is the source code of the entity stored directly into its sourceAnchor instead of accessing it (for example in a file) through its sourceAnchor
"
Trait {
	#name : #FamixGTEHasImmediateSource,
	#instVars : [
		'#source => FMGTEProperty'
	],
	#traits : 'FamixGTESourceAnchor',
	#classTraits : 'FamixGTESourceAnchor classTrait',
	#category : #'Graphoose-Traits-SourceAnchor'
}

{ #category : #meta }
FamixGTEHasImmediateSource classSide >> annotation [

	<FMClass: #THasImmediateSource super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #'instance creation' }
FamixGTEHasImmediateSource classSide >> source: aString [
	^ self new
		source: aString;
		yourself
]

{ #category : #'instance creation' }
FamixGTEHasImmediateSource classSide >> source: aString model: aMooseModel [
	^ (self source: aString)
		mooseModel: aMooseModel;
		yourself
]

{ #category : #testing }
FamixGTEHasImmediateSource >> hasSource [
	^ self source isEmptyOrNil not
]

{ #category : #accessing }
FamixGTEHasImmediateSource >> source [

	<FMGTEProperty: #source type: #String>
	<generated>
	<FMComment: 'Actual source code of the source entity'>
	^ source
]

{ #category : #accessing }
FamixGTEHasImmediateSource >> source: anObject [
	<generated>
	source := anObject
]

{ #category : #accessing }
FamixGTEHasImmediateSource >> sourceText [

	^ self source
]
