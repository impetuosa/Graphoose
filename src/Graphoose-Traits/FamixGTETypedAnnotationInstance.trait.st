Trait {
	#name : #FamixGTETypedAnnotationInstance,
	#instVars : [
		'#annotationType => FMGTEOne type: #FamixGTEAnnotationType opposite: #instances'
	],
	#category : #'Graphoose-Traits-AnnotationType'
}

{ #category : #meta }
FamixGTETypedAnnotationInstance classSide >> annotation [

	<FMClass: #TTypedAnnotationInstance super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETypedAnnotationInstance >> annotationType [
	"Relation named: #annotationType type: #FamixGTEAnnotationType opposite: #instances"

	<generated>
	<FMComment: 'Refers to the type of an annotation. (In some languages, Java and C#, an annotation as an explicit type). '>
	^ annotationType
]

{ #category : #accessing }
FamixGTETypedAnnotationInstance >> annotationType: anObject [

	<generated>
	annotationType := anObject
]
