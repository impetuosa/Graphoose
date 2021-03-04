Trait {
	#name : #FamixGTETWithPackages,
	#instVars : [
		'#packages => GTEMany type: #FamixGTETPackage opposite: #packageOwner'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithPackages classSide >> annotation [

	<FMClass: #TWithPackages super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithPackages >> addPackage: anObject [
	<generated>
	^ self packages add: anObject
]

{ #category : #accessing }
FamixGTETWithPackages >> packages [
	"Relation named: #packages type: #FamixGTETPackage opposite: #packageOwner"

	<generated>
	<derived>
	^ packages
]

{ #category : #accessing }
FamixGTETWithPackages >> packages: anObject [

	<generated>
	packages value: anObject
]
