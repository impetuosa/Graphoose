Class {
	#name : #FamixGTENamespaceGroup,
	#superclass : #MooseSpecializedGroup,
	#category : #'Graphoose-Traits-Entities'
}

{ #category : #meta }
FamixGTENamespaceGroup class >> annotation [

	<FMClass: #NamespaceGroup super: #MooseSpecializedGroup>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #meta }
FamixGTENamespaceGroup class >> metamodel [

	<generated>
	^ FamixGTEModel metamodel
]
