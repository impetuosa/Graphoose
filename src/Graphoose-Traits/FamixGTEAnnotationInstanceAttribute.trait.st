"
This models the actual value of an attribute in an AnnotationInstance.

In the following AnnotationInstance of Java, timeout is an annotation instance attribute :
@Test(timeout = 500)

Instance Variables:
	parentAnnotationInstance	<FAMIXAnnotationInstance>
	annotationTypeAttribute	<FAMIXAnnotationTypeAttribute>
	value	<Object>
"
Trait {
	#name : #FamixGTEAnnotationInstanceAttribute,
	#instVars : [
		'#parentAnnotationInstance => FMGTEOne type: #FamixGTEWithAnnotationInstanceAttributes opposite: #attributes',
		'#value => FMGTEProperty'
	],
	#traits : 'TEntityMetaLevelDependency',
	#classTraits : 'TEntityMetaLevelDependency classTrait',
	#category : #'Graphoose-Traits-AnnotationInstanceAttribute'
}

{ #category : #meta }
FamixGTEAnnotationInstanceAttribute classSide >> annotation [

	<FMClass: #TAnnotationInstanceAttribute super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEAnnotationInstanceAttribute >> parentAnnotationInstance [
	"Relation named: #parentAnnotationInstance type: #FamixGTEWithAnnotationInstanceAttributes opposite: #attributes"

	<generated>
	<FMComment: 'The instance of the annotation in which the attribute is used.'>
	<container>
	^ parentAnnotationInstance
]

{ #category : #accessing }
FamixGTEAnnotationInstanceAttribute >> parentAnnotationInstance: anObject [

	<generated>
	parentAnnotationInstance := anObject
]

{ #category : #navigation }
FamixGTEAnnotationInstanceAttribute >> parentAnnotationInstanceGroup [
	<generated>
	<navigation: 'ParentAnnotationInstance'>
	^ MooseSpecializedGroup with: self parentAnnotationInstance
]

{ #category : #accessing }
FamixGTEAnnotationInstanceAttribute >> value [

	<FMGTEProperty: #value type: #String>
	<generated>
	<FMComment: 'Actual value of the attribute used in an annotation'>
	^ value
]

{ #category : #accessing }
FamixGTEAnnotationInstanceAttribute >> value: anObject [
	<generated>
	value := anObject
]
