Trait {
	#name : #FamixGTETDefinedInModule,
	#instVars : [
		'#parentModule => GTEOne type: #FamixGTETModule opposite: #moduleEntities'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETDefinedInModule classSide >> annotation [

	<FMClass: #TDefinedInModule super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETDefinedInModule >> parentModule [
	"Relation named: #parentModule type: #FamixGTETModule opposite: #moduleEntities"

	<generated>
	<FMComment: 'Module that contains the definition of this entity'>
	^ parentModule
]

{ #category : #accessing }
FamixGTETDefinedInModule >> parentModule: anObject [

	<generated>
	parentModule := anObject
]
