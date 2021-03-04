Trait {
	#name : #FamixGTEWithAnnotationTypes,
	#instVars : [
		'#definedAnnotationTypes => FMGTEMany type: #FamixGTEAnnotationType opposite: #annotationTypesContainer'
	],
	#category : #'Graphoose-Traits-AnnotationType'
}

{ #category : #meta }
FamixGTEWithAnnotationTypes classSide >> annotation [

	<FMClass: #TWithAnnotationTypes super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithAnnotationTypes >> addDefinedAnnotationType: aDefinedAnnotationType [
	definedAnnotationTypes add: aDefinedAnnotationType 

]

{ #category : #accessing }
FamixGTEWithAnnotationTypes >> definedAnnotationTypes [
	"Relation named: #definedAnnotationTypes type: #FamixGTEAnnotationType opposite: #annotationTypesContainer"

	<generated>
	<FMComment: 'The container in which the AnnotationTypes may be declared'>
	<derived>
	^ definedAnnotationTypes
]

{ #category : #accessing }
FamixGTEWithAnnotationTypes >> definedAnnotationTypes: anObject [

	<generated>
	definedAnnotationTypes value: anObject
]
