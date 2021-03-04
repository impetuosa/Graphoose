Trait {
	#name : #FamixGTEWithAnnotationInstanceAttributes,
	#instVars : [
		'#attributes => FMGTEMany type: #FamixGTEAnnotationInstanceAttribute opposite: #parentAnnotationInstance'
	],
	#category : #'Graphoose-Traits-AnnotationInstanceAttribute'
}

{ #category : #meta }
FamixGTEWithAnnotationInstanceAttributes classSide >> annotation [

	<FMClass: #TWithAnnotationInstanceAttributes super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithAnnotationInstanceAttributes >> addAttribute: anAttribute [
	attributes add: anAttribute
]

{ #category : #accessing }
FamixGTEWithAnnotationInstanceAttributes >> attributes [
	"Relation named: #attributes type: #FamixGTEAnnotationInstanceAttribute opposite: #parentAnnotationInstance"

	<generated>
	<FMComment: 'This corresponds to the actual values of the attributes in an AnnotationInstance'>
	<derived>
	^ attributes
]

{ #category : #accessing }
FamixGTEWithAnnotationInstanceAttributes >> attributes: anObject [

	<generated>
	attributes value: anObject
]
