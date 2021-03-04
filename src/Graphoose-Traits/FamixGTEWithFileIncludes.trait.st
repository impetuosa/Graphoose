Trait {
	#name : #FamixGTEWithFileIncludes,
	#instVars : [
		'#incomingIncludeRelations => FMGTEMany type: #FamixGTEFileInclude opposite: #target',
		'#outgoingIncludeRelations => FMGTEMany type: #FamixGTEFileInclude opposite: #source'
	],
	#category : #'Graphoose-Traits-FileInclude'
}

{ #category : #meta }
FamixGTEWithFileIncludes classSide >> annotation [

	<FMClass: #TWithFileIncludes super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithFileIncludes >> addIncomingIncludeRelation: anObject [
	incomingIncludeRelations add: anObject

]

{ #category : #accessing }
FamixGTEWithFileIncludes >> addOutgoingIncludeRelation: anObject [
	outgoingIncludeRelations add: anObject

]

{ #category : #accessing }
FamixGTEWithFileIncludes >> incomingIncludeRelations [
	"Relation named: #incomingIncludeRelations type: #FamixGTEFileInclude opposite: #target"

	<generated>
	<FMComment: 'The include entities that have this file as a target.'>
	<derived>
	^ incomingIncludeRelations
]

{ #category : #accessing }
FamixGTEWithFileIncludes >> incomingIncludeRelations: anObject [

	<generated>
	incomingIncludeRelations value: anObject
]

{ #category : #accessing }
FamixGTEWithFileIncludes >> outgoingIncludeRelations [
	"Relation named: #outgoingIncludeRelations type: #FamixGTEFileInclude opposite: #source"

	<generated>
	<FMComment: 'The include entities that have this file as a source.'>
	<derived>
	^ outgoingIncludeRelations
]

{ #category : #accessing }
FamixGTEWithFileIncludes >> outgoingIncludeRelations: anObject [

	<generated>
	outgoingIncludeRelations value: anObject
]
