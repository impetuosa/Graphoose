Class {
	#name : #FamixGTEFolderGroup,
	#superclass : #MooseSpecializedGroup,
	#category : #'Graphoose-Traits-Entities'
}

{ #category : #meta }
FamixGTEFolderGroup class >> annotation [

	<FMClass: #FolderGroup super: #MooseSpecializedGroup>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #meta }
FamixGTEFolderGroup class >> metamodel [

	<generated>
	^ FamixGTEModel metamodel
]
