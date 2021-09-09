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
	#name : #FamixGTETAnnotationInstanceAttribute,
	#instVars : [
		'#value => GTEProperty',
		'#parentAnnotationInstance => GTEOne type: #FamixGTETWithAnnotationInstanceAttributes opposite: #attributes'
	],
	#traits : 'GTETEntityMetaLevelDependency',
	#classTraits : 'GTETEntityMetaLevelDependency classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETAnnotationInstanceAttribute classSide >> annotation [

	<FMClass: #TAnnotationInstanceAttribute super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETAnnotationInstanceAttribute >> parentAnnotationInstance [
	"Relation named: #parentAnnotationInstance type: #FamixGTETWithAnnotationInstanceAttributes opposite: #attributes"

	<generated>
	<FMComment: 'The instance of the annotation in which the attribute is used.'>
	<container>
	^ parentAnnotationInstance
]

{ #category : #accessing }
FamixGTETAnnotationInstanceAttribute >> parentAnnotationInstance: anObject [

	<generated>
	parentAnnotationInstance := anObject
]

{ #category : #navigation }
FamixGTETAnnotationInstanceAttribute >> parentAnnotationInstanceGroup [
	<generated>
	<navigation: 'ParentAnnotationInstance'>
	^ MooseSpecializedGroup with: self parentAnnotationInstance
]

{ #category : #accessing }
FamixGTETAnnotationInstanceAttribute >> value [

	<FMProperty: #value type: #String>
	<generated>
	<FMComment: 'Actual value of the attribute used in an annotation'>
	^ value
]

{ #category : #accessing }
FamixGTETAnnotationInstanceAttribute >> value: anObject [
	<generated>
	value := anObject
]
