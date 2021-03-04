"
FAMIXAnnotationType represents the type of an annotation. In some languages, Java and C#, an annotation as an explicit type. An AnnotationType can have a container in which it resides.

Instance Variables:
	instances	<(FMMultivalueLink of: FAMIXAnnotationInstance)>
	container	<FAMIXContainerEntity>
"
Trait {
	#name : #FamixGTEAnnotationType,
	#instVars : [
		'#annotationTypesContainer => FMGTEOne type: #FamixGTEWithAnnotationTypes opposite: #definedAnnotationTypes',
		'#instances => FMGTEMany type: #FamixGTETypedAnnotationInstance opposite: #annotationType'
	],
	#category : #'Graphoose-Traits-AnnotationType'
}

{ #category : #meta }
FamixGTEAnnotationType classSide >> annotation [

	<FMClass: #TAnnotationType super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixGTEAnnotationType classSide >> annotationFamixAnnotationTypeGroup [
	<generated>
	<mooseGroup>
	^ FamixAnnotationTypeGroup
]

{ #category : #accessing }
FamixGTEAnnotationType >> addInstance: anObject [

	instances add: anObject

]

{ #category : #accessing }
FamixGTEAnnotationType >> annotationTypesContainer [
	"Relation named: #annotationTypesContainer type: #FamixGTEWithAnnotationTypes opposite: #definedAnnotationTypes"

	<generated>
	<FMComment: 'Container in which an AnnotationType may reside'>
	<container>
	^ annotationTypesContainer
]

{ #category : #accessing }
FamixGTEAnnotationType >> annotationTypesContainer: anObject [

	<generated>
	annotationTypesContainer := anObject
]

{ #category : #navigation }
FamixGTEAnnotationType >> annotationTypesContainerGroup [
	<generated>
	<navigation: 'AnnotationTypesContainer'>
	^ MooseSpecializedGroup with: self annotationTypesContainer
]

{ #category : #accessing }
FamixGTEAnnotationType >> instances [
	"Relation named: #instances type: #FamixGTETypedAnnotationInstance opposite: #annotationType"

	<generated>
	<FMComment: 'Annotations of this type'>
	<derived>
	^ instances
]

{ #category : #accessing }
FamixGTEAnnotationType >> instances: anObject [

	<generated>
	instances value: anObject
]

{ #category : #printing }
FamixGTEAnnotationType >> mooseNameOn: aStream [
	self annotationTypesContainer
		ifNotNil: [ :parent | 
			parent mooseNameOn: aStream.
			aStream
				nextPut: $:;
				nextPut: $: ].
	self name ifNotNil: [ aStream nextPutAll: self name ]
]
