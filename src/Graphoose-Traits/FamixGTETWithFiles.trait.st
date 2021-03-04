Trait {
	#name : #FamixGTETWithFiles,
	#instVars : [
		'#containerFiles => GTEMany type: #FamixGTETFile opposite: #entities'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithFiles classSide >> annotation [

	<FMClass: #TWithFiles super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithFiles >> addContainerFile: anObject [
	<generated>
	^ self containerFiles add: anObject
]

{ #category : #accessing }
FamixGTETWithFiles >> containerFiles [
	"Relation named: #containerFiles type: #FamixGTETFile opposite: #entities"

	<generated>
	<FMComment: 'List of files containing the entity'>
	^ containerFiles
]

{ #category : #accessing }
FamixGTETWithFiles >> containerFiles: anObject [

	<generated>
	containerFiles value: anObject
]
