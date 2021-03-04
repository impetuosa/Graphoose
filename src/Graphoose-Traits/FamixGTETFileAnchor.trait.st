"
This offers a source anchor that connects a sourced entity to a file through a relative path stored in the fileName. In addition, the source can be further specified with a startLine and an endLine number in the file.
"
Trait {
	#name : #FamixGTETFileAnchor,
	#instVars : [
		'#correspondingFile => GTEProperty',
		'#encoding => GTEProperty',
		'#fileName => GTEProperty'
	],
	#traits : 'FamixGTETSourceAnchor',
	#classTraits : 'FamixGTETSourceAnchor classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETFileAnchor classSide >> annotation [

	<FMClass: #TFileAnchor super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETFileAnchor >> correspondingFile [

	<FMProperty: #correspondingFile type: #FamixGTETFile>
	<generated>
	<FMComment: 'File associated to this source anchor'>
	^ correspondingFile
]

{ #category : #accessing }
FamixGTETFileAnchor >> correspondingFile: anObject [
	<generated>
	correspondingFile := anObject
]

{ #category : #accessing }
FamixGTETFileAnchor >> encoding [

	<FMProperty: #encoding type: #String>
	<generated>
	<FMComment: 'A string representing the encoding of a file'>
	^ encoding
]

{ #category : #accessing }
FamixGTETFileAnchor >> encoding: anObject [
	<generated>
	encoding := anObject
]

{ #category : #accessing }
FamixGTETFileAnchor >> fileName [

	<FMProperty: #fileName type: #String>
	<generated>
	<FMComment: 'Name of the source file'>
	^ fileName
]

{ #category : #accessing }
FamixGTETFileAnchor >> fileName: anObject [
	<generated>
	fileName := anObject
]
