"
FAMIXModule represents a that basically provides a simple scoping abstraction for a .C/.CPP/.H files.

"
Trait {
	#name : #FamixGTETModule,
	#instVars : [
		'#moduleEntities => GTEMany type: #FamixGTETDefinedInModule opposite: #parentModule'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETModule classSide >> annotation [

	<FMClass: #TModule super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETModule >> addModuleEntity: anObject [
	<generated>
	^ self moduleEntities add: anObject
]

{ #category : #accessing }
FamixGTETModule >> moduleEntities [
	"Relation named: #moduleEntities type: #FamixGTETDefinedInModule opposite: #parentModule"

	<generated>
	<derived>
	^ moduleEntities
]

{ #category : #accessing }
FamixGTETModule >> moduleEntities: anObject [

	<generated>
	moduleEntities value: anObject
]
