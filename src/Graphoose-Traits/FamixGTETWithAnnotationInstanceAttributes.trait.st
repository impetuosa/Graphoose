Trait {
	#name : #FamixGTETWithAnnotationInstanceAttributes,
	#instVars : [
		'#attributes => GTEMany type: #FamixGTETAnnotationInstanceAttribute opposite: #parentAnnotationInstance'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithAnnotationInstanceAttributes classSide >> annotation [

	<FMClass: #TWithAnnotationInstanceAttributes super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithAnnotationInstanceAttributes >> addAttribute: anObject [
	<generated>
	^ self attributes add: anObject
]

{ #category : #accessing }
FamixGTETWithAnnotationInstanceAttributes >> attributes [
	"Relation named: #attributes type: #FamixGTETAnnotationInstanceAttribute opposite: #parentAnnotationInstance"

	<generated>
	<FMComment: 'This corresponds to the actual values of the attributes in an AnnotationInstance'>
	<derived>
	^ attributes
]

{ #category : #accessing }
FamixGTETWithAnnotationInstanceAttributes >> attributes: anObject [

	<generated>
	attributes value: anObject
]
