"
FAMIXPackage represents a package in the source language, meaning that it provides a means to group entities without any baring on lexical scoping. 

Java extractors map Java packages to FAMIXNamespaces. They can also mirror the same information in terms of FAMIXPackage instances.
"
Trait {
	#name : #FamixGTEPackage,
	#instVars : [
		'#childEntities => FMGTEMany type: #FamixGTEPackageable opposite: #parentPackage',
		'#packageOwner => FMGTEOne type: #FamixGTEWithPackages opposite: #packages'
	],
	#traits : 'FamixGTENamedEntity',
	#classTraits : 'FamixGTENamedEntity classTrait',
	#category : #'Graphoose-Traits-Package'
}

{ #category : #meta }
FamixGTEPackage classSide >> annotation [

	<FMClass: #TPackage super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixGTEPackage classSide >> annotationFamixPackageGroup [
	<generated>
	<mooseGroup>
	^ FamixPackageGroup
]

{ #category : #accessing }
FamixGTEPackage >> addChildEntity: anObject [
	childEntities add: anObject

]

{ #category : #accessing }
FamixGTEPackage >> childEntities [
	"Relation named: #childEntities type: #FamixGTEPackageable opposite: #parentPackage"

	<generated>
	<derived>
	^ childEntities
]

{ #category : #accessing }
FamixGTEPackage >> childEntities: anObject [

	<generated>
	childEntities value: anObject
]

{ #category : #testing }
FamixGTEPackage >> isPackage [

	<generated>
	^ true
]

{ #category : #accessing }
FamixGTEPackage >> packageOwner [
	"Relation named: #packageOwner type: #FamixGTEWithPackages opposite: #packages"

	<generated>
	^ packageOwner
]

{ #category : #accessing }
FamixGTEPackage >> packageOwner: anObject [

	<generated>
	packageOwner := anObject
]

{ #category : #metrics }
FamixGTEPackage >> weightedMethodCount [
	<FMGTEProperty: #weightedMethodCount type: #Number>
	<FMComment: 'The sum of the complexity in a package'>
	<derived>
	^ self lookUpPropertyNamed: #WMC computedAs: [ (self toScope: FamixGTEWithMethods) detectSum: #weightedMethodCount ]
]
