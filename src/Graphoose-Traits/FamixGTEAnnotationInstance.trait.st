"
AnnotationInstance is an instance of an AnnotationType. It links an AnnotationType to an actual entity.

For example, the following is an annotation instance in Smalltalk.
<primitive: 'primAnyBitFromTo' module:'LargeIntegers'>.

And the following is an AnnotationInstance in Java:
@Test(timeout = 500)

Instance Variables:
	annotatedEntity	<FAMIXEntity>
	annotationType		<FAMIXAnnotationType>
"
Trait {
	#name : #FamixGTEAnnotationInstance,
	#instVars : [
		'#annotatedEntity => FMGTEOne type: #FamixGTEWithAnnotationInstances opposite: #annotationInstances'
	],
	#traits : 'TEntityMetaLevelDependency',
	#classTraits : 'TEntityMetaLevelDependency classTrait',
	#category : #'Graphoose-Traits-AnnotationInstance'
}

{ #category : #meta }
FamixGTEAnnotationInstance classSide >> annotation [

	<FMClass: #TAnnotationInstance super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixGTEAnnotationInstance classSide >> annotationFamixAnnotationInstanceGroup [
	<generated>
	<mooseGroup>
	^ FamixAnnotationInstanceGroup
]

{ #category : #accessing }
FamixGTEAnnotationInstance >> annotatedEntity [
	"Relation named: #annotatedEntity type: #FamixGTEWithAnnotationInstances opposite: #annotationInstances"

	<generated>
	<FMComment: 'The NamedEntity on which the annotation occurs.'>
	<container>
	^ annotatedEntity
]

{ #category : #accessing }
FamixGTEAnnotationInstance >> annotatedEntity: anObject [

	<generated>
	annotatedEntity := anObject
]

{ #category : #navigation }
FamixGTEAnnotationInstance >> annotatedEntityGroup [
	<generated>
	<navigation: 'AnnotatedEntity'>
	^ MooseSpecializedGroup with: self annotatedEntity
]
