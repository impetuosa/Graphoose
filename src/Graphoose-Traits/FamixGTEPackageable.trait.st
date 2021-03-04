Trait {
	#name : #FamixGTEPackageable,
	#instVars : [
		'#parentPackage => FMGTEOne type: #FamixGTEPackage opposite: #childEntities'
	],
	#category : #'Graphoose-Traits-Package'
}

{ #category : #meta }
FamixGTEPackageable classSide >> annotation [

	<FMClass: #TPackageable super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEPackageable >> isExtension [
	^ (self belongsTo atScope: FamixGTEPackage) ~= (self atScope: FamixGTEPackage)
]

{ #category : #accessing }
FamixGTEPackageable >> parentPackage [
	"Relation named: #parentPackage type: #FamixGTEPackage opposite: #childEntities"

	<generated>
	<FMComment: 'Package containing the entity in the code structure (if applicable)'>
	<container>
	^ parentPackage
]

{ #category : #accessing }
FamixGTEPackageable >> parentPackage: anObject [

	<generated>
	parentPackage := anObject
]

{ #category : #navigation }
FamixGTEPackageable >> parentPackageGroup [
	<generated>
	<navigation: 'ParentPackage'>
	^ MooseSpecializedGroup with: self parentPackage
]
