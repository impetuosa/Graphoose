Trait {
	#name : #FamixGTETPackageable,
	#instVars : [
		'#parentPackage => GTEOne type: #FamixGTETPackage opposite: #childEntities'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETPackageable classSide >> annotation [

	<FMClass: #TPackageable super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETPackageable >> parentPackage [
	"Relation named: #parentPackage type: #FamixGTETPackage opposite: #childEntities"

	<generated>
	<FMComment: 'Package containing the entity in the code structure (if applicable)'>
	<container>
	^ parentPackage
]

{ #category : #accessing }
FamixGTETPackageable >> parentPackage: anObject [

	<generated>
	parentPackage := anObject
]

{ #category : #navigation }
FamixGTETPackageable >> parentPackageGroup [
	<generated>
	<navigation: 'ParentPackage'>
	^ MooseSpecializedGroup with: self parentPackage
]
