"
FAMIXAnnotationType represents the type of an annotation. In some languages, Java and C#, an annotation as an explicit type. An AnnotationType can have a container in which it resides.

Instance Variables:
	instances	<(FMMultivalueLink of: FAMIXAnnotationInstance)>
	container	<FAMIXContainerEntity>
"
Trait {
	#name : #FamixGTETAnnotationType,
	#instVars : [
		'#instances => GTEMany type: #FamixGTETTypedAnnotationInstance opposite: #annotationType',
		'#annotationTypesContainer => GTEOne type: #FamixGTETWithAnnotationTypes opposite: #definedAnnotationTypes'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETAnnotationType classSide >> annotation [

	<FMClass: #TAnnotationType super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixGTETAnnotationType classSide >> annotationFamixGTEAnnotationTypeGroup [
	<generated>
	<mooseGroup>
	^ FamixGTEAnnotationTypeGroup
]

{ #category : #adding }
FamixGTETAnnotationType >> addInstance: anObject [
	<generated>
	^ self instances add: anObject
]

{ #category : #accessing }
FamixGTETAnnotationType >> annotationTypesContainer [
	"Relation named: #annotationTypesContainer type: #FamixGTETWithAnnotationTypes opposite: #definedAnnotationTypes"

	<generated>
	<FMComment: 'Container in which an AnnotationType may reside'>
	<container>
	^ annotationTypesContainer
]

{ #category : #accessing }
FamixGTETAnnotationType >> annotationTypesContainer: anObject [

	<generated>
	annotationTypesContainer := anObject
]

{ #category : #navigation }
FamixGTETAnnotationType >> annotationTypesContainerGroup [
	<generated>
	<navigation: 'AnnotationTypesContainer'>
	^ MooseSpecializedGroup with: self annotationTypesContainer
]

{ #category : #accessing }
FamixGTETAnnotationType >> instances [
	"Relation named: #instances type: #FamixGTETTypedAnnotationInstance opposite: #annotationType"

	<generated>
	<FMComment: 'Annotations of this type'>
	<derived>
	^ instances
]

{ #category : #accessing }
FamixGTETAnnotationType >> instances: anObject [

	<generated>
	instances value: anObject
]
