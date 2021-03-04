Trait {
	#name : #FamixGTEDefinedInModule,
	#instVars : [
		'#parentModule => FMGTEOne type: #FamixGTEModule opposite: #moduleEntities'
	],
	#category : #'Graphoose-Traits-Module'
}

{ #category : #meta }
FamixGTEDefinedInModule classSide >> annotation [

	<FMClass: #TDefinedInModule super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEDefinedInModule >> parentModule [
	"Relation named: #parentModule type: #FamixGTEModule opposite: #moduleEntities"

	<generated>
	<FMComment: 'Module that contains the definition of this entity'>
	^ parentModule
]

{ #category : #accessing }
FamixGTEDefinedInModule >> parentModule: anObject [

	<generated>
	parentModule := anObject
]
