"
FAMIXModule represents a that basically provides a simple scoping abstraction for a .C/.CPP/.H files.

"
Trait {
	#name : #FamixGTEModule,
	#instVars : [
		'#moduleEntities => FMGTEMany type: #FamixGTEDefinedInModule opposite: #parentModule'
	],
	#category : #'Graphoose-Traits-Module'
}

{ #category : #meta }
FamixGTEModule classSide >> annotation [

	<FMClass: #TModule super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEModule >> addModuleEntity: anObject [

	moduleEntities add: anObject

]

{ #category : #accessing }
FamixGTEModule >> moduleEntities [
	"Relation named: #moduleEntities type: #FamixGTEDefinedInModule opposite: #parentModule"

	<generated>
	<derived>
	^ moduleEntities
]

{ #category : #accessing }
FamixGTEModule >> moduleEntities: anObject [

	<generated>
	moduleEntities value: anObject
]
