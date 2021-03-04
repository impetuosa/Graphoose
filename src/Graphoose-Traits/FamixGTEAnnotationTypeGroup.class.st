Class {
	#name : #FamixGTEAnnotationTypeGroup,
	#superclass : #MooseSpecializedGroup,
	#category : #'Graphoose-Traits-Entities'
}

{ #category : #meta }
FamixGTEAnnotationTypeGroup class >> annotation [

	<FMClass: #AnnotationTypeGroup super: #MooseSpecializedGroup>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #meta }
FamixGTEAnnotationTypeGroup class >> metamodel [

	<generated>
	^ FamixGTEModel metamodel
]
