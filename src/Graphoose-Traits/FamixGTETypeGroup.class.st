Class {
	#name : #FamixGTETypeGroup,
	#superclass : #MooseSpecializedGroup,
	#category : #'Graphoose-Traits-Entities'
}

{ #category : #meta }
FamixGTETypeGroup class >> annotation [

	<FMClass: #TypeGroup super: #MooseSpecializedGroup>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #meta }
FamixGTETypeGroup class >> metamodel [

	<generated>
	^ FamixGTEModel metamodel
]
