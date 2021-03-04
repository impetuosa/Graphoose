Trait {
	#name : #FamixGTETFileSystemEntity,
	#instVars : [
		'#parentFolder => GTEOne type: #FamixGTETFolder opposite: #childrenFileSystemEntities'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETFileSystemEntity classSide >> annotation [

	<FMClass: #TFileSystemEntity super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETFileSystemEntity >> parentFolder [
	"Relation named: #parentFolder type: #FamixGTETFolder opposite: #childrenFileSystemEntities"

	<generated>
	<FMComment: 'Folder entity containing this file.'>
	<container>
	^ parentFolder
]

{ #category : #accessing }
FamixGTETFileSystemEntity >> parentFolder: anObject [

	<generated>
	parentFolder := anObject
]

{ #category : #navigation }
FamixGTETFileSystemEntity >> parentFolderGroup [
	<generated>
	<navigation: 'ParentFolder'>
	^ MooseSpecializedGroup with: self parentFolder
]
