Trait {
	#name : #FamixGTETWithAnnotationTypes,
	#instVars : [
		'#definedAnnotationTypes => GTEMany type: #FamixGTETAnnotationType opposite: #annotationTypesContainer'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithAnnotationTypes classSide >> annotation [

	<FMClass: #TWithAnnotationTypes super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithAnnotationTypes >> addDefinedAnnotationType: anObject [
	<generated>
	^ self definedAnnotationTypes add: anObject
]

{ #category : #accessing }
FamixGTETWithAnnotationTypes >> definedAnnotationTypes [
	"Relation named: #definedAnnotationTypes type: #FamixGTETAnnotationType opposite: #annotationTypesContainer"

	<generated>
	<FMComment: 'The container in which the AnnotationTypes may be declared'>
	<derived>
	^ definedAnnotationTypes
]

{ #category : #accessing }
FamixGTETWithAnnotationTypes >> definedAnnotationTypes: anObject [

	<generated>
	definedAnnotationTypes value: anObject
]
