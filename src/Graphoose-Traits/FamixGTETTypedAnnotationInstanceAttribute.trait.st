Trait {
	#name : #FamixGTETTypedAnnotationInstanceAttribute,
	#instVars : [
		'#annotationTypeAttribute => GTEOne type: #FamixGTETAnnotationTypeAttribute opposite: #annotationAttributeInstances'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETTypedAnnotationInstanceAttribute classSide >> annotation [

	<FMClass: #TTypedAnnotationInstanceAttribute super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETTypedAnnotationInstanceAttribute >> annotationTypeAttribute [
	"Relation named: #annotationTypeAttribute type: #FamixGTETAnnotationTypeAttribute opposite: #annotationAttributeInstances"

	<generated>
	<FMComment: 'This corresponds to the type of the attribute in an AnnotationInstance'>
	^ annotationTypeAttribute
]

{ #category : #accessing }
FamixGTETTypedAnnotationInstanceAttribute >> annotationTypeAttribute: anObject [

	<generated>
	annotationTypeAttribute := anObject
]
