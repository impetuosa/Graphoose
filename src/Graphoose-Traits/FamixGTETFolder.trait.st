"
It represents a folder in the file system. It can contain other files or folders.
"
Trait {
	#name : #FamixGTETFolder,
	#instVars : [
		'#childrenFileSystemEntities => GTEMany type: #FamixGTETFileSystemEntity opposite: #parentFolder'
	],
	#traits : 'FamixGTETFileSystemEntity',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETFolder classSide >> annotation [

	<FMClass: #TFolder super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixGTETFolder classSide >> annotationFamixGTEFolderGroup [
	<generated>
	<mooseGroup>
	^ FamixGTEFolderGroup
]

{ #category : #adding }
FamixGTETFolder >> addChildrenFileSystemEntity: anObject [
	<generated>
	^ self childrenFileSystemEntities add: anObject
]

{ #category : #accessing }
FamixGTETFolder >> childrenFileSystemEntities [
	"Relation named: #childrenFileSystemEntities type: #FamixGTETFileSystemEntity opposite: #parentFolder"

	<generated>
	<FMComment: 'List of entities contained in this folder.'>
	<derived>
	^ childrenFileSystemEntities
]

{ #category : #accessing }
FamixGTETFolder >> childrenFileSystemEntities: anObject [

	<generated>
	childrenFileSystemEntities value: anObject
]
