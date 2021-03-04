Class {
	#name : #FamixGTEPackageGroup,
	#superclass : #MooseSpecializedGroup,
	#category : #'Graphoose-Traits-Entities'
}

{ #category : #meta }
FamixGTEPackageGroup class >> annotation [

	<FMClass: #PackageGroup super: #MooseSpecializedGroup>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #meta }
FamixGTEPackageGroup class >> metamodel [

	<generated>
	^ FamixGTEModel metamodel
]
