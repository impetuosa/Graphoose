Trait {
	#name : #FamixGTEFileSystemEntity,
	#instVars : [
		'#parentFolder => FMGTEOne type: #FamixGTEFolder opposite: #childrenFileSystemEntities'
	],
	#category : #'Graphoose-Traits-File'
}

{ #category : #meta }
FamixGTEFileSystemEntity classSide >> annotation [

	<FMClass: #TFileSystemEntity super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #constants }
FamixGTEFileSystemEntity classSide >> famixFolderSeparatorString [
	^ '/'
]

{ #category : #constants }
FamixGTEFileSystemEntity classSide >> named: aName filedIn: aFolder [
	^ self new
		name: (aName copyReplaceAll: self systemFolderSeparatorString with: self famixFolderSeparatorString) asSymbol;
		parentFolder: aFolder;
		yourself
]

{ #category : #constants }
FamixGTEFileSystemEntity classSide >> systemFolderSeparatorString [
	^ DiskStore delimiter asString 
]

{ #category : #accessing }
FamixGTEFileSystemEntity >> fileReference [
	^ FileSystem disk referenceTo: (self mooseName copyReplaceAll: self class famixFolderSeparatorString with: FileSystem disk delimiter asString)
]

{ #category : #accessing }
FamixGTEFileSystemEntity >> fullName [
	^ self mooseName
]

{ #category : #testing }
FamixGTEFileSystemEntity >> ifFolder: aBlock [
	^ self isFolder ifTrue: [ aBlock value ]
]

{ #category : #testing }
FamixGTEFileSystemEntity >> ifFolder: aBlock1 ifNotFolder: aBlock2 [
	^ self isFolder ifTrue: [ aBlock1 value ] ifFalse: [ aBlock2 value ]
]

{ #category : #testing }
FamixGTEFileSystemEntity >> ifNotFolder: aBlock [
	^ self isFolder ifFalse: [ aBlock value ]
]

{ #category : #testing }
FamixGTEFileSystemEntity >> ifNotFolder: aBlock1 ifFolder: aBlock2 [
	^ self isFolder ifFalse: [ aBlock1 value ] ifTrue: [ aBlock2 value ]
]

{ #category : #testing }
FamixGTEFileSystemEntity >> isFolder [
	^ false
]

{ #category : #testing }
FamixGTEFileSystemEntity >> isRoot [
	^ self parentFolder isNil
]

{ #category : #printing }
FamixGTEFileSystemEntity >> mooseNameOn: aStream [
	self parentFolder
		ifNotNil: [ :parent | 
			parent mooseNameOn: aStream.
			aStream nextPutAll: self class famixFolderSeparatorString ].
	self name ifNotNil: [ :aName | aStream nextPutAll: aName ]
]

{ #category : #accessing }
FamixGTEFileSystemEntity >> numberOfEmptyLinesOfText [
	^ self explicitRequirement
]

{ #category : #accessing }
FamixGTEFileSystemEntity >> numberOfLinesOfText [
	<FMGTEProperty: #numberOfLinesOfText type: #Number>
	<FMComment: 'Number of lines of text which are not empty in a file'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfLinesOfText computedAs: [ self totalNumberOfLinesOfText - self numberOfEmptyLinesOfText ]
]

{ #category : #accessing }
FamixGTEFileSystemEntity >> parentFolder [
	"Relation named: #parentFolder type: #FamixGTEFolder opposite: #childrenFileSystemEntities"

	<generated>
	<FMComment: 'Folder entity containing this file.'>
	<container>
	^ parentFolder
]

{ #category : #accessing }
FamixGTEFileSystemEntity >> parentFolder: anObject [
	parentFolder := anObject.
	self resetMooseName
]

{ #category : #navigation }
FamixGTEFileSystemEntity >> parentFolderGroup [
	<generated>
	<navigation: 'ParentFolder'>
	^ MooseSpecializedGroup with: self parentFolder
]

{ #category : #accessing }
FamixGTEFileSystemEntity >> totalNumberOfLinesOfText [
	^ self explicitRequirement
]
