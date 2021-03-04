Trait {
	#name : #FamixGTETypedAnnotationInstanceAttribute,
	#instVars : [
		'#annotationTypeAttribute => FMGTEOne type: #FamixGTEAnnotationTypeAttribute opposite: #annotationAttributeInstances'
	],
	#category : #'Graphoose-Traits-AnnotationTypeAttribute'
}

{ #category : #meta }
FamixGTETypedAnnotationInstanceAttribute classSide >> annotation [

	<FMClass: #TTypedAnnotationInstanceAttribute super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETypedAnnotationInstanceAttribute >> annotationTypeAttribute [
	"Relation named: #annotationTypeAttribute type: #FamixGTEAnnotationTypeAttribute opposite: #annotationAttributeInstances"

	<generated>
	<FMComment: 'This corresponds to the type of the attribute in an AnnotationInstance'>
	^ annotationTypeAttribute
]

{ #category : #accessing }
FamixGTETypedAnnotationInstanceAttribute >> annotationTypeAttribute: anObject [

	<generated>
	annotationTypeAttribute := anObject
]
