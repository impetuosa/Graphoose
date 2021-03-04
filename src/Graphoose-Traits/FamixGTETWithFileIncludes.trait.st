Trait {
	#name : #FamixGTETWithFileIncludes,
	#instVars : [
		'#outgoingIncludeRelations => GTEMany type: #FamixGTETFileInclude opposite: #source',
		'#incomingIncludeRelations => GTEMany type: #FamixGTETFileInclude opposite: #target'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithFileIncludes classSide >> annotation [

	<FMClass: #TWithFileIncludes super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithFileIncludes >> addIncomingIncludeRelation: anObject [
	<generated>
	^ self incomingIncludeRelations add: anObject
]

{ #category : #adding }
FamixGTETWithFileIncludes >> addOutgoingIncludeRelation: anObject [
	<generated>
	^ self outgoingIncludeRelations add: anObject
]

{ #category : #accessing }
FamixGTETWithFileIncludes >> incomingIncludeRelations [
	"Relation named: #incomingIncludeRelations type: #FamixGTETFileInclude opposite: #target"

	<generated>
	<FMComment: 'The include entities that have this file as a target.'>
	<derived>
	^ incomingIncludeRelations
]

{ #category : #accessing }
FamixGTETWithFileIncludes >> incomingIncludeRelations: anObject [

	<generated>
	incomingIncludeRelations value: anObject
]

{ #category : #accessing }
FamixGTETWithFileIncludes >> outgoingIncludeRelations [
	"Relation named: #outgoingIncludeRelations type: #FamixGTETFileInclude opposite: #source"

	<generated>
	<FMComment: 'The include entities that have this file as a source.'>
	<derived>
	^ outgoingIncludeRelations
]

{ #category : #accessing }
FamixGTETWithFileIncludes >> outgoingIncludeRelations: anObject [

	<generated>
	outgoingIncludeRelations value: anObject
]
