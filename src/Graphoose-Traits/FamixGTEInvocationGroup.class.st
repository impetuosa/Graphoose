Class {
	#name : #FamixGTEInvocationGroup,
	#superclass : #MooseSpecializedGroup,
	#category : #'Graphoose-Traits-Entities'
}

{ #category : #meta }
FamixGTEInvocationGroup class >> annotation [

	<FMClass: #InvocationGroup super: #MooseSpecializedGroup>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #meta }
FamixGTEInvocationGroup class >> metamodel [

	<generated>
	^ FamixGTEModel metamodel
]
