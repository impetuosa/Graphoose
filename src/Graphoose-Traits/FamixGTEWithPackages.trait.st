Trait {
	#name : #FamixGTEWithPackages,
	#instVars : [
		'#packages => FMGTEMany type: #FamixGTEPackage opposite: #packageOwner'
	],
	#category : #'Graphoose-Traits-Package'
}

{ #category : #meta }
FamixGTEWithPackages classSide >> annotation [

	<FMClass: #TWithPackages super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithPackages >> addPackage: anObject [
	packages add: anObject

]

{ #category : #accessing }
FamixGTEWithPackages >> packages [
	"Relation named: #packages type: #FamixGTEPackage opposite: #packageOwner"

	<generated>
	<derived>
	^ packages
]

{ #category : #accessing }
FamixGTEWithPackages >> packages: anObject [

	<generated>
	packages value: anObject
]
