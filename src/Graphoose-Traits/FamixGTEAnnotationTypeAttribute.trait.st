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
	#name : #FamixGTEAnnotationTypeAttribute,
	#instVars : [
		'#annotationAttributeInstances => FMGTEMany type: #FamixGTETypedAnnotationInstanceAttribute opposite: #annotationTypeAttribute'
	],
	#traits : 'FamixGTEAttribute',
	#classTraits : 'FamixGTEAttribute classTrait',
	#category : #'Graphoose-Traits-AnnotationTypeAttribute'
}

{ #category : #meta }
FamixGTEAnnotationTypeAttribute classSide >> annotation [

	<FMClass: #TAnnotationTypeAttribute super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEAnnotationTypeAttribute >> addAnnotationAttributeInstance: anObject [
	annotationAttributeInstances add: anObject

]

{ #category : #accessing }
FamixGTEAnnotationTypeAttribute >> annotationAttributeInstances [
	"Relation named: #annotationAttributeInstances type: #FamixGTETypedAnnotationInstanceAttribute opposite: #annotationTypeAttribute"

	<generated>
	<FMComment: 'A collection of AnnotationInstanceAttribute which hold the usages of this attribute in actual AnnotationInstances'>
	<derived>
	^ annotationAttributeInstances
]

{ #category : #accessing }
FamixGTEAnnotationTypeAttribute >> annotationAttributeInstances: anObject [

	<generated>
	annotationAttributeInstances value: anObject
]
