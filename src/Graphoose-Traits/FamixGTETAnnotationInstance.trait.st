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
	#name : #FamixGTETAnnotationInstance,
	#instVars : [
		'#annotatedEntity => GTEOne type: #FamixGTETWithAnnotationInstances opposite: #annotationInstances'
	],
	#traits : 'GTETEntityMetaLevelDependency',
	#classTraits : 'GTETEntityMetaLevelDependency classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETAnnotationInstance classSide >> annotation [

	<FMClass: #TAnnotationInstance super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixGTETAnnotationInstance classSide >> annotationFamixGTEAnnotationInstanceGroup [
	<generated>
	<mooseGroup>
	^ FamixGTEAnnotationInstanceGroup
]

{ #category : #accessing }
FamixGTETAnnotationInstance >> annotatedEntity [
	"Relation named: #annotatedEntity type: #FamixGTETWithAnnotationInstances opposite: #annotationInstances"

	<generated>
	<FMComment: 'The NamedEntity on which the annotation occurs.'>
	<container>
	^ annotatedEntity
]

{ #category : #accessing }
FamixGTETAnnotationInstance >> annotatedEntity: anObject [

	<generated>
	annotatedEntity := anObject
]

{ #category : #navigation }
FamixGTETAnnotationInstance >> annotatedEntityGroup [
	<generated>
	<navigation: 'AnnotatedEntity'>
	^ MooseSpecializedGroup with: self annotatedEntity
]
