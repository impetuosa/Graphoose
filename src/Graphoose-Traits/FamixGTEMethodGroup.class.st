Class {
	#name : #FamixGTEMethodGroup,
	#superclass : #MooseSpecializedGroup,
	#category : #'Graphoose-Traits-Entities'
}

{ #category : #meta }
FamixGTEMethodGroup class >> annotation [

	<FMClass: #MethodGroup super: #MooseSpecializedGroup>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #meta }
FamixGTEMethodGroup class >> metamodel [

	<generated>
	^ FamixGTEModel metamodel
]
