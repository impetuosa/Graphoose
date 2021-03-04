Trait {
	#name : #FamixGTETMultipleFileAnchor,
	#instVars : [
		'#fileAnchors => GTEProperty'
	],
	#traits : 'FamixGTETSourceAnchor',
	#classTraits : 'FamixGTETSourceAnchor classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETMultipleFileAnchor classSide >> annotation [

	<FMClass: #TMultipleFileAnchor super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETMultipleFileAnchor >> fileAnchors [

	<FMProperty: #fileAnchors type: #FamixGTETFileAnchor>
	<generated>
	<multivalued>
	<FMComment: 'All source code definition files'>
	^ fileAnchors
]

{ #category : #accessing }
FamixGTETMultipleFileAnchor >> fileAnchors: anObject [
	<generated>
	fileAnchors := anObject
]
