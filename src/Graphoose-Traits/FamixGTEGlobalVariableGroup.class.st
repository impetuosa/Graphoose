Class {
	#name : #FamixGTEGlobalVariableGroup,
	#superclass : #MooseSpecializedGroup,
	#category : #'Graphoose-Traits-Entities'
}

{ #category : #meta }
FamixGTEGlobalVariableGroup class >> annotation [

	<FMClass: #GlobalVariableGroup super: #MooseSpecializedGroup>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #meta }
FamixGTEGlobalVariableGroup class >> metamodel [

	<generated>
	^ FamixGTEModel metamodel
]
