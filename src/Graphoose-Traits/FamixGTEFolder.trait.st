"
It represents a folder in the file system. It can contain other files or folders.
"
Trait {
	#name : #FamixGTEFolder,
	#instVars : [
		'#childrenFileSystemEntities => FMGTEMany type: #FamixGTEFileSystemEntity opposite: #parentFolder'
	],
	#traits : 'FamixGTEFileSystemEntity',
	#classTraits : 'FamixGTEFileSystemEntity classTrait',
	#category : #'Graphoose-Traits-File'
}

{ #category : #meta }
FamixGTEFolder classSide >> annotation [

	<FMClass: #TFolder super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixGTEFolder classSide >> annotationFamixFolderGroup [
	<generated>
	<mooseGroup>
	^ FamixFolderGroup
]

{ #category : #adding }
FamixGTEFolder >> addChildFileSystemEntity: aFileOrFolder [
	self childrenFileSystemEntities add: aFileOrFolder
]

{ #category : #adding }
FamixGTEFolder >> addChildrenFileSystemEntity: anObject [
	<generated>
	^ self childrenFileSystemEntities add: anObject
]

{ #category : #properties }
FamixGTEFolder >> allRecursiveFiles [
	| result |
	result := MooseGroup withAll: self files withDescription: 'All recursive files in ', self mooseName.
	self folders do: [:each | result := result addAll: each allRecursiveFiles].
	^result.
]

{ #category : #properties }
FamixGTEFolder >> allRecursiveFolders [
	| result |
	result := MooseGroup withAll: self folders withDescription: 'All recursive folders in ', self mooseName.
	self folders do: [:each | result := result addAll: each allRecursiveFolders].
	^result.
]

{ #category : #accessing }
FamixGTEFolder >> childrenFileSystemEntities [
	"Relation named: #childrenFileSystemEntities type: #FamixGTEFileSystemEntity opposite: #parentFolder"

	<generated>
	<FMComment: 'List of entities contained in this folder.'>
	<derived>
	^ childrenFileSystemEntities
]

{ #category : #accessing }
FamixGTEFolder >> childrenFileSystemEntities: anObject [

	<generated>
	childrenFileSystemEntities value: anObject
]

{ #category : #adding }
FamixGTEFolder >> files [
	^ self childrenFileSystemEntities reject: #isFolder
]

{ #category : #adding }
FamixGTEFolder >> filesGroup [
	<navigation: 'Files'>
	^FamixFileGroup withAll: self files withDescription: 'Files'
]

{ #category : #adding }
FamixGTEFolder >> folders [
	^ self childrenFileSystemEntities select: #isFolder
]

{ #category : #adding }
FamixGTEFolder >> foldersGroup [
	<navigation: 'Folders'>
	^FamixFolderGroup withAll: self folders withDescription: 'Folders'
]

{ #category : #testing }
FamixGTEFolder >> isFolder [
	^ true
]

{ #category : #properties }
FamixGTEFolder >> numberOfEmptyLinesOfText [
	<FMGTEProperty: #numberOfEmptyLinesOfText type: #Number>
	<FMComment: 'Number of empty lines of text'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfEmptyLinesOfText computedAs: [ 
		self files, self folders sumNumbers: #numberOfEmptyLinesOfText
	]
]

{ #category : #properties }
FamixGTEFolder >> numberOfFiles [
	<FMGTEProperty: #numberOfFiles type: #Number>
	<FMComment: 'The number of files in a folder'>
	<derived>
	^self
		lookUpPropertyNamed: #numberOfFiles
		computedAs: [self files size]
]

{ #category : #properties }
FamixGTEFolder >> numberOfFolders [
	<FMGTEProperty: #numberOfFolders type: #Number>
	<FMComment: 'The number of folders in a folder'>
	<derived>
	^self
		lookUpPropertyNamed: #numberOfFolders
		computedAs: [self folders size]
]

{ #category : #properties }
FamixGTEFolder >> totalNumberOfLinesOfText [
	<FMGTEProperty: #totalNumberOfLinesOfText type: #Number>
	<FMComment: 'Number of lines of text'>
	<derived>
	^ self
		lookUpPropertyNamed: #totalNumberOfLinesOfText
		computedAs: [ self files , self folders sumNumbers: #totalNumberOfLinesOfText ]
]

{ #category : #properties }
FamixGTEFolder >> withAllRecursiveFolders [
	| result |
	result := MooseGroup with: self withDescription: 'All recursive folders in ', self mooseName.
	result addAll: self folders.
	self folders do: [:each | result := result addAll: each allRecursiveFolders].
	^result.
]
