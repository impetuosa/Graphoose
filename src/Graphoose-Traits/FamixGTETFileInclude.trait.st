Trait {
	#name : #FamixGTETFileInclude,
	#instVars : [
		'#source => GTEOne type: #FamixGTETWithFileIncludes opposite: #outgoingIncludeRelations',
		'#target => GTEOne type: #FamixGTETWithFileIncludes opposite: #incomingIncludeRelations'
	],
	#traits : 'FamixGTETAssociation',
	#classTraits : 'FamixGTETAssociation classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETFileInclude classSide >> annotation [

	<FMClass: #TFileInclude super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETFileInclude >> source [
	"Relation named: #source type: #FamixGTETWithFileIncludes opposite: #outgoingIncludeRelations"

	<generated>
	<FMComment: 'The file that is including'>
	^ source
]

{ #category : #accessing }
FamixGTETFileInclude >> source: anObject [

	<generated>
	source := anObject
]

{ #category : #accessing }
FamixGTETFileInclude >> target [
	"Relation named: #target type: #FamixGTETWithFileIncludes opposite: #incomingIncludeRelations"

	<generated>
	<FMComment: 'The file that is included'>
	^ target
]

{ #category : #accessing }
FamixGTETFileInclude >> target: anObject [

	<generated>
	target := anObject
]
