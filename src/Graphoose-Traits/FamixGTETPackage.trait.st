"
FAMIXPackage represents a package in the source language, meaning that it provides a means to group entities without any baring on lexical scoping. 

Java extractors map Java packages to FAMIXNamespaces. They can also mirror the same information in terms of FAMIXPackage instances.
"
Trait {
	#name : #FamixGTETPackage,
	#instVars : [
		'#childEntities => GTEMany type: #FamixGTETPackageable opposite: #parentPackage',
		'#packageOwner => GTEOne type: #FamixGTETWithPackages opposite: #packages'
	],
	#traits : 'FamixGTETNamedEntity',
	#classTraits : 'FamixGTETNamedEntity classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETPackage classSide >> annotation [

	<FMClass: #TPackage super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixGTETPackage classSide >> annotationFamixGTEPackageGroup [
	<generated>
	<mooseGroup>
	^ FamixGTEPackageGroup
]

{ #category : #adding }
FamixGTETPackage >> addChildEntity: anObject [
	<generated>
	^ self childEntities add: anObject
]

{ #category : #accessing }
FamixGTETPackage >> childEntities [
	"Relation named: #childEntities type: #FamixGTETPackageable opposite: #parentPackage"

	<generated>
	<derived>
	^ childEntities
]

{ #category : #accessing }
FamixGTETPackage >> childEntities: anObject [

	<generated>
	childEntities value: anObject
]

{ #category : #testing }
FamixGTETPackage >> isPackage [

	<generated>
	^ true
]

{ #category : #accessing }
FamixGTETPackage >> packageOwner [
	"Relation named: #packageOwner type: #FamixGTETWithPackages opposite: #packages"

	<generated>
	^ packageOwner
]

{ #category : #accessing }
FamixGTETPackage >> packageOwner: anObject [

	<generated>
	packageOwner := anObject
]
