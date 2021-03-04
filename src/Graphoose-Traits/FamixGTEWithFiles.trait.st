Trait {
	#name : #FamixGTEWithFiles,
	#instVars : [
		'#containerFiles => FMGTEMany type: #FamixGTEFile opposite: #entities'
	],
	#category : #'Graphoose-Traits-File'
}

{ #category : #meta }
FamixGTEWithFiles classSide >> annotation [

	<FMClass: #TWithFiles super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithFiles >> addContainerFile: anObject [
	containerFiles add: anObject

]

{ #category : #accessing }
FamixGTEWithFiles >> containerFiles [
	"Relation named: #containerFiles type: #FamixGTEFile opposite: #entities"

	<generated>
	<FMComment: 'List of files containing the entity'>
	^ containerFiles
]

{ #category : #accessing }
FamixGTEWithFiles >> containerFiles: anObject [

	<generated>
	containerFiles value: anObject
]
