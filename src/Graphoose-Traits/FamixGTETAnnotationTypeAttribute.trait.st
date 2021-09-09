"
This models the attribute defined in a Java AnnotationType. In Java, annotation type attributes have specific syntax and use.

For example, in Java the following AnnotationType has four AnnotationTypeAttributes (id, synopsis, engineer and date are attributes).

public @interface MyAnno {
    int    id();
    String synopsis(); 
    String engineer() default ""[unassigned]""; 
    String date()    default ""[unimplemented]"";
}

When using an annotation, an annotation instance is created that points back to the annotation type. The annotation instance has attributes that are annontation instance attributes and point back to their annotation type attributes.

Instance Variables:
	parentAnnotationType	<FAMIXAnnotationType>
	annotationAttributeInstances	<(FMMultivalueLink of: FAMIXAnnotationInstanceAttribute)>
"
Trait {
	#name : #FamixGTETAnnotationTypeAttribute,
	#instVars : [
		'#annotationAttributeInstances => GTEMany type: #FamixGTETTypedAnnotationInstanceAttribute opposite: #annotationTypeAttribute'
	],
	#traits : 'FamixGTETAttribute',
	#classTraits : 'FamixGTETAttribute classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETAnnotationTypeAttribute classSide >> annotation [

	<FMClass: #TAnnotationTypeAttribute super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETAnnotationTypeAttribute >> addAnnotationAttributeInstance: anObject [
	<generated>
	^ self annotationAttributeInstances add: anObject
]

{ #category : #accessing }
FamixGTETAnnotationTypeAttribute >> annotationAttributeInstances [
	"Relation named: #annotationAttributeInstances type: #FamixGTETTypedAnnotationInstanceAttribute opposite: #annotationTypeAttribute"

	<generated>
	<FMComment: 'A collection of AnnotationInstanceAttribute which hold the usages of this attribute in actual AnnotationInstances'>
	<derived>
	^ annotationAttributeInstances
]

{ #category : #accessing }
FamixGTETAnnotationTypeAttribute >> annotationAttributeInstances: anObject [

	<generated>
	annotationAttributeInstances value: anObject
]
