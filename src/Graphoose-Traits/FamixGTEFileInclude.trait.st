Trait {
	#name : #FamixGTEFileInclude,
	#instVars : [
		'#source => FMGTEOne type: #FamixGTEWithFileIncludes opposite: #outgoingIncludeRelations',
		'#target => FMGTEOne type: #FamixGTEWithFileIncludes opposite: #incomingIncludeRelations'
	],
	#traits : 'FamixGTEAssociation',
	#classTraits : 'FamixGTEAssociation classTrait',
	#category : #'Graphoose-Traits-FileInclude'
}

{ #category : #meta }
FamixGTEFileInclude classSide >> annotation [

	<FMClass: #TFileInclude super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEFileInclude >> source [
	"Relation named: #source type: #FamixGTEWithFileIncludes opposite: #outgoingIncludeRelations"

	<generated>
	<FMComment: 'The file that is including'>
	^ source
]

{ #category : #accessing }
FamixGTEFileInclude >> source: anObject [

	<generated>
	source := anObject
]

{ #category : #accessing }
FamixGTEFileInclude >> target [
	"Relation named: #target type: #FamixGTEWithFileIncludes opposite: #incomingIncludeRelations"

	<generated>
	<FMComment: 'The file that is included'>
	^ target
]

{ #category : #accessing }
FamixGTEFileInclude >> target: anObject [

	<generated>
	target := anObject
]
