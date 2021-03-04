Class {
	#name : #FamixGTEFileGroup,
	#superclass : #MooseSpecializedGroup,
	#category : #'Graphoose-Traits-Entities'
}

{ #category : #meta }
FamixGTEFileGroup class >> annotation [

	<FMClass: #FileGroup super: #MooseSpecializedGroup>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #meta }
FamixGTEFileGroup class >> metamodel [

	<generated>
	^ FamixGTEModel metamodel
]
