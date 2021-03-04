Trait {
	#name : #FamixGTETTypedAnnotationInstance,
	#instVars : [
		'#annotationType => GTEOne type: #FamixGTETAnnotationType opposite: #instances'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETTypedAnnotationInstance classSide >> annotation [

	<FMClass: #TTypedAnnotationInstance super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETTypedAnnotationInstance >> annotationType [
	"Relation named: #annotationType type: #FamixGTETAnnotationType opposite: #instances"

	<generated>
	<FMComment: 'Refers to the type of an annotation. (In some languages, Java and C#, an annotation as an explicit type). '>
	^ annotationType
]

{ #category : #accessing }
FamixGTETTypedAnnotationInstance >> annotationType: anObject [

	<generated>
	annotationType := anObject
]
