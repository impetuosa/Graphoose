Class {
	#name : #FamixGTEAnnotationInstanceGroup,
	#superclass : #MooseSpecializedGroup,
	#category : #'Graphoose-Traits-Entities'
}

{ #category : #meta }
FamixGTEAnnotationInstanceGroup class >> annotation [

	<FMClass: #AnnotationInstanceGroup super: #MooseSpecializedGroup>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #meta }
FamixGTEAnnotationInstanceGroup class >> metamodel [

	<generated>
	^ FamixGTEModel metamodel
]
